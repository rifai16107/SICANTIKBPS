import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/lajuqq_pengel_adhk/lajuadhkqq_pengel_trw_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/lajuqq_pengel_adhk/lajuadhkqq_pengel_trw_b.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryLajuadhkPengelTrw {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-trw-lapu';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => ModelLajuadhkPengelTrw.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelLajuadhkPengelTrw {
  final int id;
  final String komponen;
  final String tahun;

  ModelLajuadhkPengelTrw(
      {required this.id, required this.komponen, required this.tahun});

  factory ModelLajuadhkPengelTrw.fromJson(Map<String, dynamic> json) {
    return ModelLajuadhkPengelTrw(
      id: json['id'],
      komponen: json['komponen'],
      tahun: json['tahun'],
    );
  }
}

class BodyLajuadhkqqPengelTrw extends StatefulWidget {
  const BodyLajuadhkqqPengelTrw({super.key});

  @override
  State<BodyLajuadhkqqPengelTrw> createState() => _BodyLajuadhkqqPengelTrwState();
}

class _BodyLajuadhkqqPengelTrwState extends State<BodyLajuadhkqqPengelTrw> {
  RepositoryLajuadhkPengelTrw repositoryLajuadhkPengelTrw = RepositoryLajuadhkPengelTrw();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryLajuadhkPengelTrw.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isipdrb[index = 5].tahun;
              String thn2 = isipdrb[index = 9].tahun;
             

              return DefaultTabController(
                length: 2,
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
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    LajuadhkqqPengelTrwA(),
                    LajuadhkqqPengelTrwB(),
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
