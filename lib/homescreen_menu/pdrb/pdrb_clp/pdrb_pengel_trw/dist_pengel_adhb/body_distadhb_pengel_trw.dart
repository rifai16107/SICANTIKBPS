import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/dist_pengel_adhb/distadhb_pengel_trw_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/dist_pengel_adhb/distadhb_pengel_trw_b.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/dist_pengel_adhb/distadhb_pengel_trw_c.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryDistadhbPengelTrw {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-trw-pengel';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => ModelDistadhbPengelTrw.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelDistadhbPengelTrw {
  final int id;
  final String komponen;
  final String tahun;

  ModelDistadhbPengelTrw(
      {required this.id, required this.komponen, required this.tahun});

  factory ModelDistadhbPengelTrw.fromJson(Map<String, dynamic> json) {
    return ModelDistadhbPengelTrw(
      id: json['id'],
      komponen: json['komponen'],
      tahun: json['tahun'],
    );
  }
}

class BodyDistadhbPengelTrw extends StatefulWidget {
  const BodyDistadhbPengelTrw({super.key});

  @override
  State<BodyDistadhbPengelTrw> createState() => _BodyDistadhbPengelTrwState();
}

class _BodyDistadhbPengelTrwState extends State<BodyDistadhbPengelTrw> {
  RepositoryDistadhbPengelTrw repositoryDistadhbPengelTrw =
      RepositoryDistadhbPengelTrw();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryDistadhbPengelTrw.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isipdrb[index = 15].tahun;
              String thn2 = isipdrb[index = 20].tahun;
              String thn3 = isipdrb[index = 25].tahun;

              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.black),
                    ),
                    toolbarHeight: screenHeight * 0.002,
                    bottom: TabBar(
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            thn1,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            thn2,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            thn3,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    DistadhbPengelTrwA(),
                    DistadhbPengelTrwB(),
                    DistadhbPengelTrwC(),
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
