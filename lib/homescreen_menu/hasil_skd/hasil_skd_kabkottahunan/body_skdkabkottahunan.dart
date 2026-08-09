import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottahunan/skd_kabkottahunan_a.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottahunan/skd_kabkottahunan_b.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottahunan/skd_kabkottahunan_c.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottahunan/skd_kabkottahunan_d.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositorySkdTahunan {
  final _baseURL = 'https://bps-3301-asap.my.id/api/skd-hasil-tahunan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiskdtahunan) => ModelSkdTahunan.fromJson(isiskdtahunan))
            .toList();
      }
    } catch (isiskdtahunan) {
      // ignore: avoid_print
      print(isiskdtahunan.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelSkdTahunan {
  final int id;
  final String wilayah;
  final String tahun;

  ModelSkdTahunan({
    required this.id,
    required this.wilayah,
    required this.tahun,
  });

  factory ModelSkdTahunan.fromJson(Map<String, dynamic> json) {
    return ModelSkdTahunan(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodySkdKabkotTahunan extends StatefulWidget {
  const BodySkdKabkotTahunan({super.key});

  @override
  State<BodySkdKabkotTahunan> createState() => _BodySkdKabkotTahunanState();
}

class _BodySkdKabkotTahunanState extends State<BodySkdKabkotTahunan> {
  RepositorySkdTahunan repositoryskdtahunan = RepositorySkdTahunan();
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryskdtahunan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiskdtahunan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isiskdtahunan[index = 0].tahun.substring(0, 4);
              String thn2 = isiskdtahunan[index = 0].tahun.substring(5, 9);
              String thn3 = isiskdtahunan[index = 0].tahun.substring(10, 14);
              String thn4 = isiskdtahunan[index = 0].tahun.substring(15, 19);

              return DefaultTabController(
                length: 4,
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
                        Tab(text: thn4),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      SkdkabkotTahunanA(),
                      SkdkabkotTahunanB(),
                      SkdkabkotTahunanC(),
                      SkdkabkotTahunanD(),
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
