import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/pdrb_pengel_adhk/pdrb_pengel_trw_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/pdrb_pengel_adhk/pdrb_pengel_trw_b.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/pdrb_pengel_adhk/pdrb_pengel_trw_c.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryPdrbPengelTrw {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-trw-pengel';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => ModelPdrbPengelTrw.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelPdrbPengelTrw {
  final int id;
  final String komponen;
  final String tahun;

  ModelPdrbPengelTrw({
    required this.id,
    required this.komponen,
    required this.tahun,
  });

  factory ModelPdrbPengelTrw.fromJson(Map<String, dynamic> json) {
    return ModelPdrbPengelTrw(
      id: json['id'],
      komponen: json['komponen'],
      tahun: json['tahun'],
    );
  }
}

class BodyPdrbPengelTrw extends StatefulWidget {
  const BodyPdrbPengelTrw({super.key});

  @override
  State<BodyPdrbPengelTrw> createState() => _BodyPdrbPengelTrwState();
}

class _BodyPdrbPengelTrwState extends State<BodyPdrbPengelTrw> {
  RepositoryPdrbPengelTrw repositoryPdrbPengelTrw = RepositoryPdrbPengelTrw();
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryPdrbPengelTrw.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isipdrb[index = 0].tahun;
              String thn2 = isipdrb[index = 5].tahun;
              String thn3 = isipdrb[index = 10].tahun;

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
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.orange,
                      tabs: [
                        Tab(text: thn1),
                        Tab(text: thn2),
                        Tab(text: thn3),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      PdrbPengelTrwA(),
                      PdrbPengelTrwB(),
                      PdrbPengelTrwC(),
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
