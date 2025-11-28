// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//apm apk 2019

class RepositoryPendidikanKabkotSttb {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sttb';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isipendidikan) =>
                  ModelPendidikanKabkotSttb.fromJson(isipendidikan),
            )
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotSttb {
  final int id;
  final String wilayah;
  final String tdk_blmsekolah_n1;
  final String tdk_tmtsd_n1;
  final String sd_n1;
  final String smp_n1;
  final String sma_n1;
  final String pt_n1;
  final String tahun;

  ModelPendidikanKabkotSttb({
    required this.id,
    required this.wilayah,
    required this.tdk_blmsekolah_n1,
    required this.tdk_tmtsd_n1,
    required this.sd_n1,
    required this.smp_n1,
    required this.sma_n1,
    required this.pt_n1,
    required this.tahun,
  });

  factory ModelPendidikanKabkotSttb.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotSttb(
      id: json['id'],
      wilayah: json['wilayah'],
      tdk_blmsekolah_n1: json['tdk_blmsekolah_n1'],
      tdk_tmtsd_n1: json['tdk_tmtsd_n1'],
      sd_n1: json['sd_n1'],
      smp_n1: json['smp_n1'],
      sma_n1: json['sma_n1'],
      pt_n1: json['pt_n1'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotSttbA extends StatefulWidget {
  const PendidikanKabkotSttbA({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotSttbA> createState() => _PendidikanKabkotSttbAState();
}

RepositoryPendidikanKabkotSttb repositorypendidikan =
    RepositoryPendidikanKabkotSttb();

class _PendidikanKabkotSttbAState extends State<PendidikanKabkotSttbA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorypendidikan.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipendidikan = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String kab1 = isipendidikan[index = 0].wilayah;
                String kab2 = isipendidikan[index = 1].wilayah;
                String kab3 = isipendidikan[index = 2].wilayah;
                String kab4 = isipendidikan[index = 3].wilayah;
                String kab5 = isipendidikan[index = 4].wilayah;
                String kab6 = isipendidikan[index = 5].wilayah;
                String kab7 = isipendidikan[index = 6].wilayah;
                String kab8 = isipendidikan[index = 7].wilayah;
                String kab9 = isipendidikan[index = 8].wilayah;
                String kab10 = isipendidikan[index = 9].wilayah;
                String kab11 = isipendidikan[index = 10].wilayah;
                String kab12 = isipendidikan[index = 11].wilayah;
                String kab13 = isipendidikan[index = 12].wilayah;
                String kab14 = isipendidikan[index = 13].wilayah;
                String kab15 = isipendidikan[index = 14].wilayah;
                String kab16 = isipendidikan[index = 15].wilayah;
                String kab17 = isipendidikan[index = 16].wilayah;
                String kab18 = isipendidikan[index = 17].wilayah;
                String kab19 = isipendidikan[index = 18].wilayah;
                String kab20 = isipendidikan[index = 19].wilayah;
                String kab21 = isipendidikan[index = 20].wilayah;
                String kab22 = isipendidikan[index = 21].wilayah;
                String kab23 = isipendidikan[index = 22].wilayah;
                String kab24 = isipendidikan[index = 23].wilayah;
                String kab25 = isipendidikan[index = 24].wilayah;
                String kab26 = isipendidikan[index = 25].wilayah;
                String kab27 = isipendidikan[index = 26].wilayah;
                String kab28 = isipendidikan[index = 27].wilayah;
                String kab29 = isipendidikan[index = 28].wilayah;
                String kab30 = isipendidikan[index = 29].wilayah;
                String kab31 = isipendidikan[index = 30].wilayah;
                String kab32 = isipendidikan[index = 31].wilayah;
                String kab33 = isipendidikan[index = 32].wilayah;
                String kab34 = isipendidikan[index = 33].wilayah;
                String kab35 = isipendidikan[index = 34].wilayah;
                String kab36 = "    " + isipendidikan[index = 35].wilayah;

                //APM
                double tdk_blmsekolah_1 = double.parse(
                  isipendidikan[index = 0].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_2 = double.parse(
                  isipendidikan[index = 1].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_3 = double.parse(
                  isipendidikan[index = 2].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_4 = double.parse(
                  isipendidikan[index = 3].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_5 = double.parse(
                  isipendidikan[index = 4].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_6 = double.parse(
                  isipendidikan[index = 5].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_7 = double.parse(
                  isipendidikan[index = 6].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_8 = double.parse(
                  isipendidikan[index = 7].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_9 = double.parse(
                  isipendidikan[index = 8].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_10 = double.parse(
                  isipendidikan[index = 9].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_11 = double.parse(
                  isipendidikan[index = 10].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_12 = double.parse(
                  isipendidikan[index = 11].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_13 = double.parse(
                  isipendidikan[index = 12].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_14 = double.parse(
                  isipendidikan[index = 13].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_15 = double.parse(
                  isipendidikan[index = 14].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_16 = double.parse(
                  isipendidikan[index = 15].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_17 = double.parse(
                  isipendidikan[index = 16].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_18 = double.parse(
                  isipendidikan[index = 17].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_19 = double.parse(
                  isipendidikan[index = 18].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_20 = double.parse(
                  isipendidikan[index = 19].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_21 = double.parse(
                  isipendidikan[index = 20].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_22 = double.parse(
                  isipendidikan[index = 21].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_23 = double.parse(
                  isipendidikan[index = 22].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_24 = double.parse(
                  isipendidikan[index = 23].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_25 = double.parse(
                  isipendidikan[index = 24].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_26 = double.parse(
                  isipendidikan[index = 25].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_27 = double.parse(
                  isipendidikan[index = 26].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_28 = double.parse(
                  isipendidikan[index = 27].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_29 = double.parse(
                  isipendidikan[index = 28].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_30 = double.parse(
                  isipendidikan[index = 29].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_31 = double.parse(
                  isipendidikan[index = 30].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_32 = double.parse(
                  isipendidikan[index = 31].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_33 = double.parse(
                  isipendidikan[index = 32].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_34 = double.parse(
                  isipendidikan[index = 33].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_35 = double.parse(
                  isipendidikan[index = 34].tdk_blmsekolah_n1,
                );
                double tdk_blmsekolah_36 = double.parse(
                  isipendidikan[index = 35].tdk_blmsekolah_n1,
                );

                double tdk_tmtsd_1 = double.parse(
                  isipendidikan[index = 0].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_2 = double.parse(
                  isipendidikan[index = 1].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_3 = double.parse(
                  isipendidikan[index = 2].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_4 = double.parse(
                  isipendidikan[index = 3].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_5 = double.parse(
                  isipendidikan[index = 4].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_6 = double.parse(
                  isipendidikan[index = 5].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_7 = double.parse(
                  isipendidikan[index = 6].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_8 = double.parse(
                  isipendidikan[index = 7].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_9 = double.parse(
                  isipendidikan[index = 8].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_10 = double.parse(
                  isipendidikan[index = 9].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_11 = double.parse(
                  isipendidikan[index = 10].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_12 = double.parse(
                  isipendidikan[index = 11].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_13 = double.parse(
                  isipendidikan[index = 12].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_14 = double.parse(
                  isipendidikan[index = 13].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_15 = double.parse(
                  isipendidikan[index = 14].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_16 = double.parse(
                  isipendidikan[index = 15].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_17 = double.parse(
                  isipendidikan[index = 16].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_18 = double.parse(
                  isipendidikan[index = 17].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_19 = double.parse(
                  isipendidikan[index = 18].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_20 = double.parse(
                  isipendidikan[index = 19].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_21 = double.parse(
                  isipendidikan[index = 20].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_22 = double.parse(
                  isipendidikan[index = 21].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_23 = double.parse(
                  isipendidikan[index = 22].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_24 = double.parse(
                  isipendidikan[index = 23].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_25 = double.parse(
                  isipendidikan[index = 24].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_26 = double.parse(
                  isipendidikan[index = 25].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_27 = double.parse(
                  isipendidikan[index = 26].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_28 = double.parse(
                  isipendidikan[index = 27].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_29 = double.parse(
                  isipendidikan[index = 28].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_30 = double.parse(
                  isipendidikan[index = 29].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_31 = double.parse(
                  isipendidikan[index = 30].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_32 = double.parse(
                  isipendidikan[index = 31].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_33 = double.parse(
                  isipendidikan[index = 32].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_34 = double.parse(
                  isipendidikan[index = 33].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_35 = double.parse(
                  isipendidikan[index = 34].tdk_tmtsd_n1,
                );
                double tdk_tmtsd_36 = double.parse(
                  isipendidikan[index = 35].tdk_tmtsd_n1,
                );

                double sd_1 = double.parse(isipendidikan[index = 0].sd_n1);
                double sd_2 = double.parse(isipendidikan[index = 1].sd_n1);
                double sd_3 = double.parse(isipendidikan[index = 2].sd_n1);
                double sd_4 = double.parse(isipendidikan[index = 3].sd_n1);
                double sd_5 = double.parse(isipendidikan[index = 4].sd_n1);
                double sd_6 = double.parse(isipendidikan[index = 5].sd_n1);
                double sd_7 = double.parse(isipendidikan[index = 6].sd_n1);
                double sd_8 = double.parse(isipendidikan[index = 7].sd_n1);
                double sd_9 = double.parse(isipendidikan[index = 8].sd_n1);
                double sd_10 = double.parse(isipendidikan[index = 9].sd_n1);
                double sd_11 = double.parse(isipendidikan[index = 10].sd_n1);
                double sd_12 = double.parse(isipendidikan[index = 11].sd_n1);
                double sd_13 = double.parse(isipendidikan[index = 12].sd_n1);
                double sd_14 = double.parse(isipendidikan[index = 13].sd_n1);
                double sd_15 = double.parse(isipendidikan[index = 14].sd_n1);
                double sd_16 = double.parse(isipendidikan[index = 15].sd_n1);
                double sd_17 = double.parse(isipendidikan[index = 16].sd_n1);
                double sd_18 = double.parse(isipendidikan[index = 17].sd_n1);
                double sd_19 = double.parse(isipendidikan[index = 18].sd_n1);
                double sd_20 = double.parse(isipendidikan[index = 19].sd_n1);
                double sd_21 = double.parse(isipendidikan[index = 20].sd_n1);
                double sd_22 = double.parse(isipendidikan[index = 21].sd_n1);
                double sd_23 = double.parse(isipendidikan[index = 22].sd_n1);
                double sd_24 = double.parse(isipendidikan[index = 23].sd_n1);
                double sd_25 = double.parse(isipendidikan[index = 24].sd_n1);
                double sd_26 = double.parse(isipendidikan[index = 25].sd_n1);
                double sd_27 = double.parse(isipendidikan[index = 26].sd_n1);
                double sd_28 = double.parse(isipendidikan[index = 27].sd_n1);
                double sd_29 = double.parse(isipendidikan[index = 28].sd_n1);
                double sd_30 = double.parse(isipendidikan[index = 29].sd_n1);
                double sd_31 = double.parse(isipendidikan[index = 30].sd_n1);
                double sd_32 = double.parse(isipendidikan[index = 31].sd_n1);
                double sd_33 = double.parse(isipendidikan[index = 32].sd_n1);
                double sd_34 = double.parse(isipendidikan[index = 33].sd_n1);
                double sd_35 = double.parse(isipendidikan[index = 34].sd_n1);
                double sd_36 = double.parse(isipendidikan[index = 35].sd_n1);

                double smp_1 = double.parse(isipendidikan[index = 0].smp_n1);
                double smp_2 = double.parse(isipendidikan[index = 1].smp_n1);
                double smp_3 = double.parse(isipendidikan[index = 2].smp_n1);
                double smp_4 = double.parse(isipendidikan[index = 3].smp_n1);
                double smp_5 = double.parse(isipendidikan[index = 4].smp_n1);
                double smp_6 = double.parse(isipendidikan[index = 5].smp_n1);
                double smp_7 = double.parse(isipendidikan[index = 6].smp_n1);
                double smp_8 = double.parse(isipendidikan[index = 7].smp_n1);
                double smp_9 = double.parse(isipendidikan[index = 8].smp_n1);
                double smp_10 = double.parse(isipendidikan[index = 9].smp_n1);
                double smp_11 = double.parse(isipendidikan[index = 10].smp_n1);
                double smp_12 = double.parse(isipendidikan[index = 11].smp_n1);
                double smp_13 = double.parse(isipendidikan[index = 12].smp_n1);
                double smp_14 = double.parse(isipendidikan[index = 13].smp_n1);
                double smp_15 = double.parse(isipendidikan[index = 14].smp_n1);
                double smp_16 = double.parse(isipendidikan[index = 15].smp_n1);
                double smp_17 = double.parse(isipendidikan[index = 16].smp_n1);
                double smp_18 = double.parse(isipendidikan[index = 17].smp_n1);
                double smp_19 = double.parse(isipendidikan[index = 18].smp_n1);
                double smp_20 = double.parse(isipendidikan[index = 19].smp_n1);
                double smp_21 = double.parse(isipendidikan[index = 20].smp_n1);
                double smp_22 = double.parse(isipendidikan[index = 21].smp_n1);
                double smp_23 = double.parse(isipendidikan[index = 22].smp_n1);
                double smp_24 = double.parse(isipendidikan[index = 23].smp_n1);
                double smp_25 = double.parse(isipendidikan[index = 24].smp_n1);
                double smp_26 = double.parse(isipendidikan[index = 25].smp_n1);
                double smp_27 = double.parse(isipendidikan[index = 26].smp_n1);
                double smp_28 = double.parse(isipendidikan[index = 27].smp_n1);
                double smp_29 = double.parse(isipendidikan[index = 28].smp_n1);
                double smp_30 = double.parse(isipendidikan[index = 29].smp_n1);
                double smp_31 = double.parse(isipendidikan[index = 30].smp_n1);
                double smp_32 = double.parse(isipendidikan[index = 31].smp_n1);
                double smp_33 = double.parse(isipendidikan[index = 32].smp_n1);
                double smp_34 = double.parse(isipendidikan[index = 33].smp_n1);
                double smp_35 = double.parse(isipendidikan[index = 34].smp_n1);
                double smp_36 = double.parse(isipendidikan[index = 35].smp_n1);

                double sma_1 = double.parse(isipendidikan[index = 0].sma_n1);
                double sma_2 = double.parse(isipendidikan[index = 1].sma_n1);
                double sma_3 = double.parse(isipendidikan[index = 2].sma_n1);
                double sma_4 = double.parse(isipendidikan[index = 3].sma_n1);
                double sma_5 = double.parse(isipendidikan[index = 4].sma_n1);
                double sma_6 = double.parse(isipendidikan[index = 5].sma_n1);
                double sma_7 = double.parse(isipendidikan[index = 6].sma_n1);
                double sma_8 = double.parse(isipendidikan[index = 7].sma_n1);
                double sma_9 = double.parse(isipendidikan[index = 8].sma_n1);
                double sma_10 = double.parse(isipendidikan[index = 9].sma_n1);
                double sma_11 = double.parse(isipendidikan[index = 10].sma_n1);
                double sma_12 = double.parse(isipendidikan[index = 11].sma_n1);
                double sma_13 = double.parse(isipendidikan[index = 12].sma_n1);
                double sma_14 = double.parse(isipendidikan[index = 13].sma_n1);
                double sma_15 = double.parse(isipendidikan[index = 14].sma_n1);
                double sma_16 = double.parse(isipendidikan[index = 15].sma_n1);
                double sma_17 = double.parse(isipendidikan[index = 16].sma_n1);
                double sma_18 = double.parse(isipendidikan[index = 17].sma_n1);
                double sma_19 = double.parse(isipendidikan[index = 18].sma_n1);
                double sma_20 = double.parse(isipendidikan[index = 19].sma_n1);
                double sma_21 = double.parse(isipendidikan[index = 20].sma_n1);
                double sma_22 = double.parse(isipendidikan[index = 21].sma_n1);
                double sma_23 = double.parse(isipendidikan[index = 22].sma_n1);
                double sma_24 = double.parse(isipendidikan[index = 23].sma_n1);
                double sma_25 = double.parse(isipendidikan[index = 24].sma_n1);
                double sma_26 = double.parse(isipendidikan[index = 25].sma_n1);
                double sma_27 = double.parse(isipendidikan[index = 26].sma_n1);
                double sma_28 = double.parse(isipendidikan[index = 27].sma_n1);
                double sma_29 = double.parse(isipendidikan[index = 28].sma_n1);
                double sma_30 = double.parse(isipendidikan[index = 29].sma_n1);
                double sma_31 = double.parse(isipendidikan[index = 30].sma_n1);
                double sma_32 = double.parse(isipendidikan[index = 31].sma_n1);
                double sma_33 = double.parse(isipendidikan[index = 32].sma_n1);
                double sma_34 = double.parse(isipendidikan[index = 33].sma_n1);
                double sma_35 = double.parse(isipendidikan[index = 34].sma_n1);
                double sma_36 = double.parse(isipendidikan[index = 35].sma_n1);

                double pt_1 = double.parse(isipendidikan[index = 0].pt_n1);
                double pt_2 = double.parse(isipendidikan[index = 1].pt_n1);
                double pt_3 = double.parse(isipendidikan[index = 2].pt_n1);
                double pt_4 = double.parse(isipendidikan[index = 3].pt_n1);
                double pt_5 = double.parse(isipendidikan[index = 4].pt_n1);
                double pt_6 = double.parse(isipendidikan[index = 5].pt_n1);
                double pt_7 = double.parse(isipendidikan[index = 6].pt_n1);
                double pt_8 = double.parse(isipendidikan[index = 7].pt_n1);
                double pt_9 = double.parse(isipendidikan[index = 8].pt_n1);
                double pt_10 = double.parse(isipendidikan[index = 9].pt_n1);
                double pt_11 = double.parse(isipendidikan[index = 10].pt_n1);
                double pt_12 = double.parse(isipendidikan[index = 11].pt_n1);
                double pt_13 = double.parse(isipendidikan[index = 12].pt_n1);
                double pt_14 = double.parse(isipendidikan[index = 13].pt_n1);
                double pt_15 = double.parse(isipendidikan[index = 14].pt_n1);
                double pt_16 = double.parse(isipendidikan[index = 15].pt_n1);
                double pt_17 = double.parse(isipendidikan[index = 16].pt_n1);
                double pt_18 = double.parse(isipendidikan[index = 17].pt_n1);
                double pt_19 = double.parse(isipendidikan[index = 18].pt_n1);
                double pt_20 = double.parse(isipendidikan[index = 19].pt_n1);
                double pt_21 = double.parse(isipendidikan[index = 20].pt_n1);
                double pt_22 = double.parse(isipendidikan[index = 21].pt_n1);
                double pt_23 = double.parse(isipendidikan[index = 22].pt_n1);
                double pt_24 = double.parse(isipendidikan[index = 23].pt_n1);
                double pt_25 = double.parse(isipendidikan[index = 24].pt_n1);
                double pt_26 = double.parse(isipendidikan[index = 25].pt_n1);
                double pt_27 = double.parse(isipendidikan[index = 26].pt_n1);
                double pt_28 = double.parse(isipendidikan[index = 27].pt_n1);
                double pt_29 = double.parse(isipendidikan[index = 28].pt_n1);
                double pt_30 = double.parse(isipendidikan[index = 29].pt_n1);
                double pt_31 = double.parse(isipendidikan[index = 30].pt_n1);
                double pt_32 = double.parse(isipendidikan[index = 31].pt_n1);
                double pt_33 = double.parse(isipendidikan[index = 32].pt_n1);
                double pt_34 = double.parse(isipendidikan[index = 33].pt_n1);
                double pt_35 = double.parse(isipendidikan[index = 34].pt_n1);
                double pt_36 = double.parse(isipendidikan[index = 35].pt_n1);

                //String thn1 = isipendidikan[index = 0].tahun.substring(0, 4);

                return Scaffold(
                  body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,

                      //row header 1
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.30,
                              child: Container(
                                height: screenHeight * 0.03,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 0,
                                  top: 3,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Kabupaten/",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Tdk/",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.13,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Tdk/",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //row header 2
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.02,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.30,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Kota",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Belum",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.13,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Tamat",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "SD",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "SMP",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "SMA",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "PT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //row header 3
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.29,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 0,
                                  top: 10,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.13,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Sekolah",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.12,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "SD  ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.11,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //),
                      Expanded(
                        //flex:16,
                        child: SingleChildScrollView(
                          //child: Flexible(
                          //flex: 20,
                          //fit: FlexFit.tight,
                          //child: SizedBox(
                          //width: screenWidth,
                          //height: screenHeight,
                          child: Column(
                            children: [
                              // Cilacap
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          left: 0,
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Banyumas
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Purbalingga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Banjarnegara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kebumen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Purworejo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Wonosobo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Boyolali
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_blmsekolah_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Klaten
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_10,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Sukoharjo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_11,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Wonogiri
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_12,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Karanganyar
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_13,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Sragen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_14,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Grobogan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_15,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Blora
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_16,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Rembang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_17,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Pati
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_18,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kudus
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_19,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Jepara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_20,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Demak
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_21,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_22,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Temanggung
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_23,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kendal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_24,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Batang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_25,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_26,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Pemalang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_27,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_28,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Brebes
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_29,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Kota Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_30,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Surakarta
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_31,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Salatiga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_32,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_33,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota umkN3_kalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_34,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_35,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Jateng
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.045,
                                color: Colors.orange,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab36,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(
                                            tdk_blmsekolah_36,
                                            2,
                                          ),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.14 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(tdk_tmtsd_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sd_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(smp_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sma_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.11 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(pt_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: const EdgeInsets.all(1),
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: const TextSpan(
                                    text: 'Sumber:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            ' Survei Sosial Ekonomi Nasional (Susenas)',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('Database Error');
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
      ),
    );
  }
}
