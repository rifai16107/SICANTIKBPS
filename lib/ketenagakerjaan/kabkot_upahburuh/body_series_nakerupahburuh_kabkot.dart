// ignore_for_file: non_constant_identifier_names

import 'package:bps_cilacap/ketenagakerjaan/kabkot_upahburuh/nakerupahburuh_kabkot_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_upahburuh/nakerupahburuh_kabkot_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_upahburuh/nakerupahburuh_kabkot_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_upahburuh/nakerupahburuh_kabkot_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_upahburuh/nakerupahburuh_kabkot_e.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class RepositoryNakerKabkotUpah {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-upahburuh';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotUpah.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

class ModelNakerKabkotUpah {
  final int id;
  final String wilayah;
  final String tahun;

  ModelNakerKabkotUpah(
      {required this.id, required this.wilayah, required this.tahun});

  factory ModelNakerKabkotUpah.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotUpah(
      id: json['id'],
      wilayah: json['wilayah'],
      tahun: json['tahun'],
    );
  }
}

class BodySeriesNakerkabkotUpah extends StatefulWidget {
  const BodySeriesNakerkabkotUpah({super.key});

  @override
  State<BodySeriesNakerkabkotUpah> createState() =>
      _BodySeriesNakerkabkotUpahState();
}

class _BodySeriesNakerkabkotUpahState extends State<BodySeriesNakerkabkotUpah> {
  RepositoryNakerKabkotUpah repositorynaker = RepositoryNakerKabkotUpah();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorynaker.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isinaker = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn_n1 = isinaker[index = 0].tahun.substring(0, 4);
              String thn_n2 = isinaker[index = 0].tahun.substring(5, 9);
              String thn_n3 = isinaker[index = 0].tahun.substring(10, 14);
              String thn_n4 = isinaker[index = 0].tahun.substring(15, 19);
              String thn_n5 = isinaker[index = 0].tahun.substring(20, 24);

              return DefaultTabController(
                length: 5,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.002,
                    bottom: TabBar(
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          text: thn_n1,
                        ),
                        Tab(
                          text: thn_n2,
                        ),
                        Tab(
                          text: thn_n3,
                        ),
                        Tab(
                          text: thn_n4,
                        ),
                        Tab(
                          text: thn_n5,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    NakerkabkotUpahA(),
                    NakerkabkotUpahB(),
                    NakerkabkotUpahC(),
                    NakerkabkotUpahD(),
                    NakerkabkotUpahE(),
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
