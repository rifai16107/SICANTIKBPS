import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_pt/jumlahpt_kabkot_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_pt/jumlahpt_kabkot_b.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class RepositoryPendidikanKabkotJumlahpt {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmpt';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isipendidikan) =>
                  ModelPendidikanKabkotJumlahpt.fromJson(isipendidikan),
            )
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahpt {
  final int id;
  final String wilayah;
  final String tahun;

  ModelPendidikanKabkotJumlahpt({
    required this.id,
    required this.wilayah,
    required this.tahun,
  });

  factory ModelPendidikanKabkotJumlahpt.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahpt(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodySeriesJumlahptKabkot extends StatefulWidget {
  const BodySeriesJumlahptKabkot({super.key});

  @override
  State<BodySeriesJumlahptKabkot> createState() =>
      _BodySeriesJumlahptKabkotState();
}

class _BodySeriesJumlahptKabkotState extends State<BodySeriesJumlahptKabkot> {
  RepositoryPendidikanKabkotJumlahpt repositoryapmapk =
      RepositoryPendidikanKabkotJumlahpt();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
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
              String thnN1 = isipendidikan[index = 0].tahun.substring(0, 4);
              String thnN2 = isipendidikan[index = 0].tahun.substring(5, 9);

              return DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.001,
                    bottom: TabBar(
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(text: thnN1),
                        Tab(text: thnN2),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      PendidikanKabkotJumlahptA(),
                      PendidikanKabkotJumlahptB(),
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
