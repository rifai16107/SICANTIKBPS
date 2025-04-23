import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/lajutrwcc_kabkot/trwlajucc_kabkot_b.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/lajutrwcc_kabkot/trwlajucc_kabkot_c.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryTrwlajuccKabkot {
  final _baseURL = 'https://bps-3301-asap.my.id/api/trwlajucc-kabkot';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrbtrw) => ModelTrwlajuccKabkot.fromJson(isipdrbtrw))
            .toList();
      }
    } catch (isipdrbtrw) {
      // ignore: avoid_print
      print(isipdrbtrw.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelTrwlajuccKabkot {
  final int id;
  final String wilayah;
  final String tahun;

  ModelTrwlajuccKabkot(
      {required this.id, required this.wilayah, required this.tahun});

  factory ModelTrwlajuccKabkot.fromJson(Map<String, dynamic> json) {
    return ModelTrwlajuccKabkot(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodyTrwlajuccKabkot extends StatefulWidget {
  const BodyTrwlajuccKabkot({super.key});

  @override
  State<BodyTrwlajuccKabkot> createState() => _BodyTrwlajuccKabkotState();
}

class _BodyTrwlajuccKabkotState extends State<BodyTrwlajuccKabkot> {
  RepositoryTrwlajuccKabkot repositoryrpdrbtrwkabkot =
      RepositoryTrwlajuccKabkot();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryrpdrbtrwkabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isirumah = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023

              String thn2 = isirumah[index = 0].tahun.substring(5, 9);
              String thn3 = isirumah[index = 0].tahun.substring(10, 14);

              return DefaultTabController(
                length: 2,
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
                          text: '$thn2 *',
                        ),
                        Tab(
                          text: '$thn3 **',
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    TrwlajuccKabkotB(),
                    TrwlajuccKabkotC(),
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
