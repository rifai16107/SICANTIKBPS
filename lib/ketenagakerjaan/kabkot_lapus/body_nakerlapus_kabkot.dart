import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/nakerlapus_kabkot_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/nakerlapus_kabkot_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/nakerlapus_kabkot_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/nakerlapus_kabkot_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/nakerlapus_kabkot_e.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryNakerKabkotLapus {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-lapus';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotLapus.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelNakerKabkotLapus {
  final int id;
  final String wilayah;
  final String lapus1_n1;
  final String lapus2_n1;
  final String lapus3_n1;
  final String tahun;

  ModelNakerKabkotLapus(
      {required this.id,
      required this.wilayah,
      required this.lapus1_n1,
      required this.lapus2_n1,
      required this.lapus3_n1,
      required this.tahun});

  factory ModelNakerKabkotLapus.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotLapus(
      id: json['id'],
      wilayah: json['wilayah'],
      lapus1_n1: json['lapus1_n1'],
      lapus2_n1: json['lapus2_n1'],
      lapus3_n1: json['lapus3_n1'],
      tahun: json['tahun'],
    );
  }
}

class BodyNakerKabkotLapus extends StatefulWidget {
  const BodyNakerKabkotLapus({super.key});

  @override
  State<BodyNakerKabkotLapus> createState() => _BodyNakerKabkotLapusState();
}

class _BodyNakerKabkotLapusState extends State<BodyNakerKabkotLapus> {
  RepositoryNakerKabkotLapus repositoryNakerKabkot =
      RepositoryNakerKabkotLapus();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryNakerKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isinaker = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isinaker[index = 0].tahun.substring(0, 4);
              String thn2 = isinaker[index = 0].tahun.substring(5, 9);
              String thn3 = isinaker[index = 0].tahun.substring(10, 14);
              String thn4 = isinaker[index = 0].tahun.substring(15, 19);
              String thn5 = isinaker[index = 0].tahun.substring(20, 24);

              return DefaultTabController(
                length: 5,
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
                        Tab(
                          text: thn1,
                        ),
                        Tab(
                          text: thn2,
                        ),
                        Tab(
                          text: thn3,
                        ),
                        Tab(
                          text: thn4,
                        ),
                        Tab(
                          text: thn5,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    NakerkabkotLapusA(),
                    NakerkabkotLapusB(),
                    NakerkabkotLapusC(),
                    NakerkabkotLapusD(),
                    NakerkabkotLapusE(),
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
