import 'package:bps_cilacap/restAPI/repository_penduduk_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/penduduk_kabkot_a.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/penduduk_kabkot_b.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/penduduk_kabkot_c.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/penduduk_kabkot_d.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/penduduk_kabkot_e.dart';
import 'package:flutter/material.dart';

class BodySeriesPddkKabkot extends StatefulWidget {
  const BodySeriesPddkKabkot({super.key});

  @override
  State<BodySeriesPddkKabkot> createState() => _BodySeriesPddkKabkotState();
}

class _BodySeriesPddkKabkotState extends State<BodySeriesPddkKabkot> {
  RepositoryJumlahPendudukKabkot repositoryJumlahPenduduk =
      RepositoryJumlahPendudukKabkot();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryJumlahPenduduk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isijumlahpenduduk = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
             
              //tahun 2019-2023
              String thn1 =
                  isijumlahpenduduk[index = 0].tahun.substring(0, 4);
              String thn2 =
                  isijumlahpenduduk[index = 0].tahun.substring(5, 9);
              String thn3 =
                  isijumlahpenduduk[index = 0].tahun.substring(10, 14);
              String thn4 =
                  isijumlahpenduduk[index = 0].tahun.substring(15, 19);
              String thn5 =
                  isijumlahpenduduk[index = 0].tahun.substring(20, 24);    

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
                    JumlahPendudukKabkotA(),
                    JumlahPendudukKabkotB(),
                    JumlahPendudukKabkotC(),
                    JumlahPendudukKabkotD(),
                    JumlahPendudukKabkotE(),
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
