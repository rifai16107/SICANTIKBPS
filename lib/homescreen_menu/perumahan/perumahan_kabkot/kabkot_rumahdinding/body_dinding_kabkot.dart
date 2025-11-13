import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahdinding/dinding_kabkot_a.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahdinding/dinding_kabkot_b.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahdinding/dinding_kabkot_c.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryRumahkabkotDinding {
  final _baseURL = 'https://bps-3301-asap.my.id/api/rumahkabkot-dinding';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isirumah) => ModelRumahkabkotDinding.fromJson(isirumah))
            .toList();
      }
    } catch (isirumah) {
      // ignore: avoid_print
      print(isirumah.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelRumahkabkotDinding {
  final int id;
  final String wilayah;
  final String tahun;

  ModelRumahkabkotDinding(
      {required this.id, required this.wilayah, required this.tahun});

  factory ModelRumahkabkotDinding.fromJson(Map<String, dynamic> json) {
    return ModelRumahkabkotDinding(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodyRumahkabkotDinding extends StatefulWidget {
  const BodyRumahkabkotDinding({super.key});

  @override
  State<BodyRumahkabkotDinding> createState() => _BodyRumahkabkotDindingState();
}

class _BodyRumahkabkotDindingState extends State<BodyRumahkabkotDinding> {
  RepositoryRumahkabkotDinding repositoryrumahkabkot =
      RepositoryRumahkabkotDinding();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryrumahkabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isirumah = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isirumah[index = 0].tahun.substring(0, 4);
              String thn2 = isirumah[index = 0].tahun.substring(5, 9);
              String thn3 = isirumah[index = 0].tahun.substring(10, 14);

              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.black),
                    ),
                    toolbarHeight: screenHeight * 0.002,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          text: thn1,
                        ),
                        Tab(
                          text: thn2,
                        ),
                        Tab(
                          text: thn3,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    RumahkabkotDindingA(),
                    RumahkabkotDindingB(),
                    RumahkabkotDindingC(),
                  ]),
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text('error');
        } else {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        }
      },
    );
  }
}
