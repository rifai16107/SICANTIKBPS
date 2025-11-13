import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_ra/jumlahra_kabkot_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_ra/jumlahra_kabkot_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_ra/jumlahra_kabkot_c.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class RepositoryPendidikanKabkotJumlahra {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmtk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotJumlahra.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahra {
  final int id;
  final String wilayah;
  final String tahun;

  ModelPendidikanKabkotJumlahra(
      {required this.id, required this.wilayah, required this.tahun});

  factory ModelPendidikanKabkotJumlahra.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahra(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodySeriesJumlahraKabkot extends StatefulWidget {
  const BodySeriesJumlahraKabkot({super.key});

  @override
  State<BodySeriesJumlahraKabkot> createState() =>
      _BodySeriesJumlahraKabkotState();
}

class _BodySeriesJumlahraKabkotState extends State<BodySeriesJumlahraKabkot> {
  RepositoryPendidikanKabkotJumlahra repositoryapmapk =
      RepositoryPendidikanKabkotJumlahra();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryapmapk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipendidikan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thnN1 = isipendidikan[index = 0].tahun.substring(0, 9);
              String thnN2 = isipendidikan[index = 0].tahun.substring(10, 19);
              String thnN3 = isipendidikan[index = 0].tahun.substring(20, 29);

              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.001,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          text: thnN1,
                        ),
                        Tab(
                          text: thnN2,
                        ),
                        Tab(
                          text: thnN3,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    PendidikanKabkotJumlahraA(),
                    PendidikanKabkotJumlahraB(),
                    PendidikanKabkotJumlahraC(),
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
