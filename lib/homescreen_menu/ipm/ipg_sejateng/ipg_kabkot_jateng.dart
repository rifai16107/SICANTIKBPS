// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_ipg_kabkot.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipg_sejateng/body_grafik_ipg_kabkot.dart';

class IpgKabkotJateng extends StatefulWidget {
  const IpgKabkotJateng({Key? key}) : super(key: key);

  @override
  State<IpgKabkotJateng> createState() => _IpgKabkotJatengState();
}

class _IpgKabkotJatengState extends State<IpgKabkotJateng> {
  RepositoryIpgKabkot repositoryIpgKabkot = RepositoryIpgKabkot();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '[IPG] Kabupapaten/Kota Jawa Tengah',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
      ),
      body: FutureBuilder(
        future: repositoryIpgKabkot.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiipgkabkot = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String thN1 = isiipgkabkot[index = 0].tahun.substring(0, 4);
                String thN2 = isiipgkabkot[index = 0].tahun.substring(5, 9);
                String thN3 = isiipgkabkot[index = 0].tahun.substring(10, 14);
                String thN4 = isiipgkabkot[index = 0].tahun.substring(15, 19);
                String thN5 = isiipgkabkot[index = 0].tahun.substring(20, 24);

                String kabkota1 = isiipgkabkot[index = 0].kab_kota;
                String kabkota2 = isiipgkabkot[index = 1].kab_kota;
                String kabkota3 = isiipgkabkot[index = 2].kab_kota;
                String kabkota4 = isiipgkabkot[index = 3].kab_kota;
                String kabkota5 = isiipgkabkot[index = 4].kab_kota;
                String kabkota6 = isiipgkabkot[index = 5].kab_kota;
                String kabkota7 = isiipgkabkot[index = 6].kab_kota;
                String kabkota8 = isiipgkabkot[index = 7].kab_kota;
                String kabkota9 = isiipgkabkot[index = 8].kab_kota;
                String kabkota10 = isiipgkabkot[index = 9].kab_kota;
                String kabkota11 = isiipgkabkot[index = 10].kab_kota;
                String kabkota12 = isiipgkabkot[index = 11].kab_kota;
                String kabkota13 = isiipgkabkot[index = 12].kab_kota;
                String kabkota14 = isiipgkabkot[index = 13].kab_kota;
                String kabkota15 = isiipgkabkot[index = 14].kab_kota;
                String kabkota16 = isiipgkabkot[index = 15].kab_kota;
                String kabkota17 = isiipgkabkot[index = 16].kab_kota;
                String kabkota18 = isiipgkabkot[index = 17].kab_kota;
                String kabkota19 = isiipgkabkot[index = 18].kab_kota;
                String kabkota20 = isiipgkabkot[index = 19].kab_kota;
                String kabkota21 = isiipgkabkot[index = 20].kab_kota;
                String kabkota22 = isiipgkabkot[index = 21].kab_kota;
                String kabkota23 = isiipgkabkot[index = 22].kab_kota;
                String kabkota24 = isiipgkabkot[index = 23].kab_kota;
                String kabkota25 = isiipgkabkot[index = 24].kab_kota;
                String kabkota26 = isiipgkabkot[index = 25].kab_kota;
                String kabkota27 = isiipgkabkot[index = 26].kab_kota;
                String kabkota28 = isiipgkabkot[index = 27].kab_kota;
                String kabkota29 = isiipgkabkot[index = 28].kab_kota;
                String kabkota30 = isiipgkabkot[index = 29].kab_kota;
                String kabkota31 = isiipgkabkot[index = 30].kab_kota;
                String kabkota32 = isiipgkabkot[index = 31].kab_kota;
                String kabkota33 = isiipgkabkot[index = 32].kab_kota;
                String kabkota34 = isiipgkabkot[index = 33].kab_kota;
                String kabkota35 = isiipgkabkot[index = 34].kab_kota;
                String kabkota36 = isiipgkabkot[index = 35].kab_kota;

                //ipgn tahun 2019
                double ipgn1_1 = double.parse(isiipgkabkot[index = 0].ipg_n1);
                double ipgn1_2 = double.parse(isiipgkabkot[index = 1].ipg_n1);
                double ipgn1_3 = double.parse(isiipgkabkot[index = 2].ipg_n1);
                double ipgn1_4 = double.parse(isiipgkabkot[index = 3].ipg_n1);
                double ipgn1_5 = double.parse(isiipgkabkot[index = 4].ipg_n1);
                double ipgn1_6 = double.parse(isiipgkabkot[index = 5].ipg_n1);
                double ipgn1_7 = double.parse(isiipgkabkot[index = 6].ipg_n1);
                double ipgn1_8 = double.parse(isiipgkabkot[index = 7].ipg_n1);
                double ipgn1_9 = double.parse(isiipgkabkot[index = 8].ipg_n1);
                double ipgn1_10 = double.parse(isiipgkabkot[index = 9].ipg_n1);
                double ipgn1_11 = double.parse(isiipgkabkot[index = 10].ipg_n1);
                double ipgn1_12 = double.parse(isiipgkabkot[index = 11].ipg_n1);
                double ipgn1_13 = double.parse(isiipgkabkot[index = 12].ipg_n1);
                double ipgn1_14 = double.parse(isiipgkabkot[index = 13].ipg_n1);
                double ipgn1_15 = double.parse(isiipgkabkot[index = 14].ipg_n1);
                double ipgn1_16 = double.parse(isiipgkabkot[index = 15].ipg_n1);
                double ipgn1_17 = double.parse(isiipgkabkot[index = 16].ipg_n1);
                double ipgn1_18 = double.parse(isiipgkabkot[index = 17].ipg_n1);
                double ipgn1_19 = double.parse(isiipgkabkot[index = 17].ipg_n1);
                double ipgn1_20 = double.parse(isiipgkabkot[index = 18].ipg_n1);
                double ipgn1_21 = double.parse(isiipgkabkot[index = 19].ipg_n1);
                double ipgn1_22 = double.parse(isiipgkabkot[index = 20].ipg_n1);
                double ipgn1_23 = double.parse(isiipgkabkot[index = 21].ipg_n1);
                double ipgn1_24 = double.parse(isiipgkabkot[index = 23].ipg_n1);
                double ipgn1_25 = double.parse(isiipgkabkot[index = 24].ipg_n1);
                double ipgn1_26 = double.parse(isiipgkabkot[index = 25].ipg_n1);
                double ipgn1_27 = double.parse(isiipgkabkot[index = 26].ipg_n1);
                double ipgn1_28 = double.parse(isiipgkabkot[index = 27].ipg_n1);
                double ipgn1_29 = double.parse(isiipgkabkot[index = 28].ipg_n1);
                double ipgn1_30 = double.parse(isiipgkabkot[index = 29].ipg_n1);
                double ipgn1_31 = double.parse(isiipgkabkot[index = 30].ipg_n1);
                double ipgn1_32 = double.parse(isiipgkabkot[index = 31].ipg_n1);
                double ipgn1_33 = double.parse(isiipgkabkot[index = 32].ipg_n1);
                double ipgn1_34 = double.parse(isiipgkabkot[index = 33].ipg_n1);
                double ipgn1_35 = double.parse(isiipgkabkot[index = 34].ipg_n1);
                double ipgn1_36 = double.parse(isiipgkabkot[index = 35].ipg_n1);

                //tahun 2020
                double ipgn2_1 = double.parse(isiipgkabkot[index = 0].ipg_n2);
                double ipgn2_2 = double.parse(isiipgkabkot[index = 1].ipg_n2);
                double ipgn2_3 = double.parse(isiipgkabkot[index = 2].ipg_n2);
                double ipgn2_4 = double.parse(isiipgkabkot[index = 3].ipg_n2);
                double ipgn2_5 = double.parse(isiipgkabkot[index = 4].ipg_n2);
                double ipgn2_6 = double.parse(isiipgkabkot[index = 5].ipg_n2);
                double ipgn2_7 = double.parse(isiipgkabkot[index = 6].ipg_n2);
                double ipgn2_8 = double.parse(isiipgkabkot[index = 7].ipg_n2);
                double ipgn2_9 = double.parse(isiipgkabkot[index = 8].ipg_n2);
                double ipgn2_10 = double.parse(isiipgkabkot[index = 9].ipg_n2);
                double ipgn2_11 = double.parse(isiipgkabkot[index = 10].ipg_n2);
                double ipgn2_12 = double.parse(isiipgkabkot[index = 11].ipg_n2);
                double ipgn2_13 = double.parse(isiipgkabkot[index = 12].ipg_n2);
                double ipgn2_14 = double.parse(isiipgkabkot[index = 13].ipg_n2);
                double ipgn2_15 = double.parse(isiipgkabkot[index = 14].ipg_n2);
                double ipgn2_16 = double.parse(isiipgkabkot[index = 15].ipg_n2);
                double ipgn2_17 = double.parse(isiipgkabkot[index = 16].ipg_n2);
                double ipgn2_18 = double.parse(isiipgkabkot[index = 17].ipg_n2);
                double ipgn2_19 = double.parse(isiipgkabkot[index = 18].ipg_n2);
                double ipgn2_20 = double.parse(isiipgkabkot[index = 19].ipg_n2);
                double ipgn2_21 = double.parse(isiipgkabkot[index = 20].ipg_n2);
                double ipgn2_22 = double.parse(isiipgkabkot[index = 21].ipg_n2);
                double ipgn2_23 = double.parse(isiipgkabkot[index = 22].ipg_n2);
                double ipgn2_24 = double.parse(isiipgkabkot[index = 23].ipg_n2);
                double ipgn2_25 = double.parse(isiipgkabkot[index = 24].ipg_n2);
                double ipgn2_26 = double.parse(isiipgkabkot[index = 25].ipg_n2);
                double ipgn2_27 = double.parse(isiipgkabkot[index = 26].ipg_n2);
                double ipgn2_28 = double.parse(isiipgkabkot[index = 27].ipg_n2);
                double ipgn2_29 = double.parse(isiipgkabkot[index = 28].ipg_n2);
                double ipgn2_30 = double.parse(isiipgkabkot[index = 29].ipg_n2);
                double ipgn2_31 = double.parse(isiipgkabkot[index = 30].ipg_n2);
                double ipgn2_32 = double.parse(isiipgkabkot[index = 31].ipg_n2);
                double ipgn2_33 = double.parse(isiipgkabkot[index = 32].ipg_n2);
                double ipgn2_34 = double.parse(isiipgkabkot[index = 33].ipg_n2);
                double ipgn2_35 = double.parse(isiipgkabkot[index = 34].ipg_n2);
                double ipgn2_36 = double.parse(isiipgkabkot[index = 35].ipg_n2);

                // tahun 2021
                double ipgn3_1 = double.parse(isiipgkabkot[index = 0].ipg_n3);
                double ipgn3_2 = double.parse(isiipgkabkot[index = 1].ipg_n3);
                double ipgn3_3 = double.parse(isiipgkabkot[index = 2].ipg_n3);
                double ipgn3_4 = double.parse(isiipgkabkot[index = 3].ipg_n3);
                double ipgn3_5 = double.parse(isiipgkabkot[index = 4].ipg_n3);
                double ipgn3_6 = double.parse(isiipgkabkot[index = 5].ipg_n3);
                double ipgn3_7 = double.parse(isiipgkabkot[index = 6].ipg_n3);
                double ipgn3_8 = double.parse(isiipgkabkot[index = 7].ipg_n3);
                double ipgn3_9 = double.parse(isiipgkabkot[index = 8].ipg_n3);
                double ipgn3_10 = double.parse(isiipgkabkot[index = 9].ipg_n3);
                double ipgn3_11 = double.parse(isiipgkabkot[index = 10].ipg_n3);
                double ipgn3_12 = double.parse(isiipgkabkot[index = 11].ipg_n3);
                double ipgn3_13 = double.parse(isiipgkabkot[index = 12].ipg_n3);
                double ipgn3_14 = double.parse(isiipgkabkot[index = 13].ipg_n3);
                double ipgn3_15 = double.parse(isiipgkabkot[index = 14].ipg_n3);
                double ipgn3_16 = double.parse(isiipgkabkot[index = 15].ipg_n3);
                double ipgn3_17 = double.parse(isiipgkabkot[index = 16].ipg_n3);
                double ipgn3_18 = double.parse(isiipgkabkot[index = 17].ipg_n3);
                double ipgn3_19 = double.parse(isiipgkabkot[index = 18].ipg_n3);
                double ipgn3_20 = double.parse(isiipgkabkot[index = 19].ipg_n3);
                double ipgn3_21 = double.parse(isiipgkabkot[index = 20].ipg_n3);
                double ipgn3_22 = double.parse(isiipgkabkot[index = 21].ipg_n3);
                double ipgn3_23 = double.parse(isiipgkabkot[index = 22].ipg_n3);
                double ipgn3_24 = double.parse(isiipgkabkot[index = 23].ipg_n3);
                double ipgn3_25 = double.parse(isiipgkabkot[index = 24].ipg_n3);
                double ipgn3_26 = double.parse(isiipgkabkot[index = 25].ipg_n3);
                double ipgn3_27 = double.parse(isiipgkabkot[index = 26].ipg_n3);
                double ipgn3_28 = double.parse(isiipgkabkot[index = 27].ipg_n3);
                double ipgn3_29 = double.parse(isiipgkabkot[index = 28].ipg_n3);
                double ipgn3_30 = double.parse(isiipgkabkot[index = 29].ipg_n3);
                double ipgn3_31 = double.parse(isiipgkabkot[index = 30].ipg_n3);
                double ipgn3_32 = double.parse(isiipgkabkot[index = 31].ipg_n3);
                double ipgn3_33 = double.parse(isiipgkabkot[index = 32].ipg_n3);
                double ipgn3_34 = double.parse(isiipgkabkot[index = 33].ipg_n3);
                double ipgn3_35 = double.parse(isiipgkabkot[index = 34].ipg_n3);
                double ipgn3_36 = double.parse(isiipgkabkot[index = 35].ipg_n3);

                // tahun 2022
                double ipgn4_1 = double.parse(isiipgkabkot[index = 0].ipg_n4);
                double ipgn4_2 = double.parse(isiipgkabkot[index = 1].ipg_n4);
                double ipgn4_3 = double.parse(isiipgkabkot[index = 2].ipg_n4);
                double ipgn4_4 = double.parse(isiipgkabkot[index = 3].ipg_n4);
                double ipgn4_5 = double.parse(isiipgkabkot[index = 4].ipg_n4);
                double ipgn4_6 = double.parse(isiipgkabkot[index = 5].ipg_n4);
                double ipgn4_7 = double.parse(isiipgkabkot[index = 6].ipg_n4);
                double ipgn4_8 = double.parse(isiipgkabkot[index = 7].ipg_n4);
                double ipgn4_9 = double.parse(isiipgkabkot[index = 8].ipg_n4);
                double ipgn4_10 = double.parse(isiipgkabkot[index = 9].ipg_n4);
                double ipgn4_11 = double.parse(isiipgkabkot[index = 10].ipg_n4);
                double ipgn4_12 = double.parse(isiipgkabkot[index = 11].ipg_n4);
                double ipgn4_13 = double.parse(isiipgkabkot[index = 12].ipg_n4);
                double ipgn4_14 = double.parse(isiipgkabkot[index = 13].ipg_n4);
                double ipgn4_15 = double.parse(isiipgkabkot[index = 14].ipg_n4);
                double ipgn4_16 = double.parse(isiipgkabkot[index = 15].ipg_n4);
                double ipgn4_17 = double.parse(isiipgkabkot[index = 16].ipg_n4);
                double ipgn4_18 = double.parse(isiipgkabkot[index = 17].ipg_n4);
                double ipgn4_19 = double.parse(isiipgkabkot[index = 18].ipg_n4);
                double ipgn4_20 = double.parse(isiipgkabkot[index = 19].ipg_n4);
                double ipgn4_21 = double.parse(isiipgkabkot[index = 20].ipg_n4);
                double ipgn4_22 = double.parse(isiipgkabkot[index = 21].ipg_n4);
                double ipgn4_23 = double.parse(isiipgkabkot[index = 22].ipg_n4);
                double ipgn4_24 = double.parse(isiipgkabkot[index = 23].ipg_n4);
                double ipgn4_25 = double.parse(isiipgkabkot[index = 24].ipg_n4);
                double ipgn4_26 = double.parse(isiipgkabkot[index = 25].ipg_n4);
                double ipgn4_27 = double.parse(isiipgkabkot[index = 26].ipg_n4);
                double ipgn4_28 = double.parse(isiipgkabkot[index = 27].ipg_n4);
                double ipgn4_29 = double.parse(isiipgkabkot[index = 28].ipg_n4);
                double ipgn4_30 = double.parse(isiipgkabkot[index = 29].ipg_n4);
                double ipgn4_31 = double.parse(isiipgkabkot[index = 30].ipg_n4);
                double ipgn4_32 = double.parse(isiipgkabkot[index = 31].ipg_n4);
                double ipgn4_33 = double.parse(isiipgkabkot[index = 32].ipg_n4);
                double ipgn4_34 = double.parse(isiipgkabkot[index = 33].ipg_n4);
                double ipgn4_35 = double.parse(isiipgkabkot[index = 34].ipg_n4);
                double ipgn4_36 = double.parse(isiipgkabkot[index = 35].ipg_n4);

                // tahun 2023
                double ipgn5_1 = double.parse(isiipgkabkot[index = 0].ipg_n5);
                double ipgn5_2 = double.parse(isiipgkabkot[index = 1].ipg_n5);
                double ipgn5_3 = double.parse(isiipgkabkot[index = 2].ipg_n5);
                double ipgn5_4 = double.parse(isiipgkabkot[index = 3].ipg_n5);
                double ipgn5_5 = double.parse(isiipgkabkot[index = 4].ipg_n5);
                double ipgn5_6 = double.parse(isiipgkabkot[index = 5].ipg_n5);
                double ipgn5_7 = double.parse(isiipgkabkot[index = 6].ipg_n5);
                double ipgn5_8 = double.parse(isiipgkabkot[index = 7].ipg_n5);
                double ipgn5_9 = double.parse(isiipgkabkot[index = 8].ipg_n5);
                double ipgn5_10 = double.parse(isiipgkabkot[index = 9].ipg_n5);
                double ipgn5_11 = double.parse(isiipgkabkot[index = 10].ipg_n5);
                double ipgn5_12 = double.parse(isiipgkabkot[index = 11].ipg_n5);
                double ipgn5_13 = double.parse(isiipgkabkot[index = 12].ipg_n5);
                double ipgn5_14 = double.parse(isiipgkabkot[index = 13].ipg_n5);
                double ipgn5_15 = double.parse(isiipgkabkot[index = 14].ipg_n5);
                double ipgn5_16 = double.parse(isiipgkabkot[index = 15].ipg_n5);
                double ipgn5_17 = double.parse(isiipgkabkot[index = 16].ipg_n5);
                double ipgn5_18 = double.parse(isiipgkabkot[index = 17].ipg_n5);
                double ipgn5_19 = double.parse(isiipgkabkot[index = 18].ipg_n5);
                double ipgn5_20 = double.parse(isiipgkabkot[index = 19].ipg_n5);
                double ipgn5_21 = double.parse(isiipgkabkot[index = 20].ipg_n5);
                double ipgn5_22 = double.parse(isiipgkabkot[index = 21].ipg_n5);
                double ipgn5_23 = double.parse(isiipgkabkot[index = 22].ipg_n5);
                double ipgn5_24 = double.parse(isiipgkabkot[index = 23].ipg_n5);
                double ipgn5_25 = double.parse(isiipgkabkot[index = 24].ipg_n5);
                double ipgn5_26 = double.parse(isiipgkabkot[index = 25].ipg_n5);
                double ipgn5_27 = double.parse(isiipgkabkot[index = 26].ipg_n5);
                double ipgn5_28 = double.parse(isiipgkabkot[index = 27].ipg_n5);
                double ipgn5_29 = double.parse(isiipgkabkot[index = 28].ipg_n5);
                double ipgn5_30 = double.parse(isiipgkabkot[index = 29].ipg_n5);
                double ipgn5_31 = double.parse(isiipgkabkot[index = 30].ipg_n5);
                double ipgn5_32 = double.parse(isiipgkabkot[index = 31].ipg_n5);
                double ipgn5_33 = double.parse(isiipgkabkot[index = 32].ipg_n5);
                double ipgn5_34 = double.parse(isiipgkabkot[index = 33].ipg_n5);
                double ipgn5_35 = double.parse(isiipgkabkot[index = 34].ipg_n5);
                double ipgn5_36 = double.parse(isiipgkabkot[index = 35].ipg_n5);

                return Scaffold(
                  body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.1,
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          "Indeks Pembangunan Gender (IPG) Kabupaten/Kota Di Jawa Tengah, Tahun " +
                              thN5.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.06,
                        color: Colors.green,
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 4,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                  right: 3,
                                  top: 10,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Kabupaten/Kota",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  top: 10,
                                  bottom: 2,
                                ),
                                child: Text(
                                  thN1,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  top: 10,
                                  bottom: 2,
                                ),
                                child: Text(
                                  thN2,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 10,
                                  bottom: 2,
                                ),
                                child: Text(
                                  thN3,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 10,
                                  bottom: 2,
                                ),
                                child: Text(
                                  thN4,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  top: 10,
                                  bottom: 0,
                                ),
                                child: Text(
                                  thN5,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.7,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kabkota35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Total
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.050,
                                color: Colors.green,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          kabkota36,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn1_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn2_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn3_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn4_36, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          Format.convertTo(ipgn5_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 4,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  " Keterangan :",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 14,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "IPG yang ditampilkan pada tabel ini merupakan persentase [IPG] IPM perempuan terhadap [IPG] IPM laki-laki.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),

                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 4,
                                  bottom: 60,
                                ),
                                child: const Text(
                                  " Sumber Data : Survei Sosial Ekonomi Nasional (SUSENAS)",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CustomPageRoute(
              child: const BodyGrafikIpgKabkot(),
              direction: AxisDirection.left,
            ),
          );
        },
        mini: true,
        child: const Icon(Icons.bar_chart_sharp),
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
    : super(
        transitionDuration: const Duration(milliseconds: 200),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) => child,
      );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => SlideTransition(
    position: Tween<Offset>(
      begin: getBeginOffset(),
      end: Offset.zero,
    ).animate(animation),
    child: child,
  );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
