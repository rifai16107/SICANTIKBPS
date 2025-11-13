import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/lajucc_lu_adhk/lajuadhkcc_lu_trw_1.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/lajucc_lu_adhk/lajuadhkcc_lu_trw_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/lajucc_lu_adhk/lajuadhkcc_lu_trw_b.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryLajuadhkLuTrw {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-trw-laju';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => ModelLajuadhkLuTrw.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}

// ignore_for_file: non_constant_identifier_names
class ModelLajuadhkLuTrw {
  final int id;
  final String komponen;
  final String tahun;

  ModelLajuadhkLuTrw(
      {required this.id, required this.komponen, required this.tahun});

  factory ModelLajuadhkLuTrw.fromJson(Map<String, dynamic> json) {
    return ModelLajuadhkLuTrw(
      id: json['id'],
      komponen: json['komponen'],
      tahun: json['tahun'],
    );
  }
}

class BodyLajuadhkccLuTrw extends StatefulWidget {
  const BodyLajuadhkccLuTrw({super.key});

  @override
  State<BodyLajuadhkccLuTrw> createState() => _BodyLajuadhkccLuTrwState();
}

class _BodyLajuadhkccLuTrwState extends State<BodyLajuadhkccLuTrw> {
  RepositoryLajuadhkLuTrw repositoryLajuadhkLuTrw = RepositoryLajuadhkLuTrw();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryLajuadhkLuTrw.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn0 = isipdrb[index = 15].tahun;
              String thn1 = isipdrb[index = 19].tahun;
              String thn2 = isipdrb[index = 23].tahun;

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
                            thn0,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
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
                    LajuadhkccLuTrw1(),
                    LajuadhkccLuTrwA(),
                    LajuadhkccLuTrwB(),
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
