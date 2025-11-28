import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/aps_kabkot/apsek_kabkot_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/aps_kabkot/apsek_kabkot_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/aps_kabkot/apsek_kabkot_c.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/aps_kabkot/apsek_kabkot_d.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/aps_kabkot/apsek_kabkot_e.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class RepositoryPendidikanKabkotApsek {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-apmapk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isipendidikan) =>
                  ModelPendidikanKabkotApsek.fromJson(isipendidikan),
            )
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotApsek {
  final int id;
  final String wilayah;
  final String tahun;

  ModelPendidikanKabkotApsek({
    required this.id,
    required this.wilayah,
    required this.tahun,
  });

  factory ModelPendidikanKabkotApsek.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotApsek(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodySeriesApsekKabkot extends StatefulWidget {
  const BodySeriesApsekKabkot({super.key});

  @override
  State<BodySeriesApsekKabkot> createState() => _BodySeriesApsekKabkotState();
}

class _BodySeriesApsekKabkotState extends State<BodySeriesApsekKabkot> {
  RepositoryPendidikanKabkotApsek repositoryapmapk =
      RepositoryPendidikanKabkotApsek();

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
              String thnN3 = isipendidikan[index = 0].tahun.substring(10, 14);
              String thnN4 = isipendidikan[index = 0].tahun.substring(15, 19);
              String thnN5 = isipendidikan[index = 0].tahun.substring(20, 24);

              return DefaultTabController(
                length: 5,
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
                        Tab(text: thnN3),
                        Tab(text: thnN4),
                        Tab(text: thnN5),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      PendidikanKabkotApsekA(),
                      PendidikanKabkotApsekB(),
                      PendidikanKabkotApsekC(),
                      PendidikanKabkotApsekD(),
                      PendidikanKabkotApsekE(),
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
