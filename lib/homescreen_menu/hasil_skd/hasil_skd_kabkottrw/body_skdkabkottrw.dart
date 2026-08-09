import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottrw/skd_kabkottrw_a.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottrw/skd_kabkottrw_b.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottrw/skd_kabkottrw_c.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositorySkdTriwulanan {
  final _baseURL = 'https://bps-3301-asap.my.id/api/skd-hasil';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isiskdtriwulanan) =>
                  ModelSkdTriwulanan.fromJson(isiskdtriwulanan),
            )
            .toList();
      }
    } catch (isiskdtriwulanan) {
      // ignore: avoid_print
      print(isiskdtriwulanan.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelSkdTriwulanan {
  final int id;
  final String wilayah;
  final String tahun;

  ModelSkdTriwulanan({
    required this.id,
    required this.wilayah,
    required this.tahun,
  });

  factory ModelSkdTriwulanan.fromJson(Map<String, dynamic> json) {
    return ModelSkdTriwulanan(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodySkdKabkotTrw extends StatefulWidget {
  const BodySkdKabkotTrw({super.key});

  @override
  State<BodySkdKabkotTrw> createState() => _BodySkdKabkotTrwState();
}

class _BodySkdKabkotTrwState extends State<BodySkdKabkotTrw> {
  RepositorySkdTriwulanan repositoryskdtrw = RepositorySkdTriwulanan();
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryskdtrw.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiskdtrw = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isiskdtrw[index = 0].tahun.substring(0, 4);
              String thn2 = isiskdtrw[index = 0].tahun.substring(5, 9);
              String thn3 = isiskdtrw[index = 0].tahun.substring(10, 14);

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
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(text: thn1),
                        Tab(text: thn2),
                        Tab(text: thn3),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      SkdkabkotTrwA(),
                      SkdkabkotTrwB(),
                      SkdkabkotTrwC(),
                    ],
                  ),
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text('error');
        } else {
          return const Center(child: CircularProgressIndicator(strokeWidth: 2));
        }
      },
    );
  }
}
