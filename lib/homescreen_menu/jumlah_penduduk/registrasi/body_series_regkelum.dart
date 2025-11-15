// ignore: file_names
import 'package:bps_cilacap/restAPI/repository_penduduk.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/pendudukreg_umur_a.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/pendudukreg_umur_b.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/pendudukreg_umur_c.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/pendudukreg_umur_d.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/pendudukreg_umur_e.dart';
import 'package:flutter/material.dart';

class BodySeriesRegistrasiKelum extends StatefulWidget {
  const BodySeriesRegistrasiKelum({super.key});

  @override
  State<BodySeriesRegistrasiKelum> createState() =>
      _BodySeriesRegistrasiKelumState();
}

class _BodySeriesRegistrasiKelumState extends State<BodySeriesRegistrasiKelum> {
  RepositoryJumlahPenduduk repositoryJumlahPenduduk =
      RepositoryJumlahPenduduk();
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
              //Tahun 2023
              String thn5 = isijumlahpenduduk[index = 0].tahun;
              //tahun 2020-2022
              String thn1 = isijumlahpenduduk[index = 16].tahun;
              String thn2 = isijumlahpenduduk[index = 12].tahun;
              String thn3 = isijumlahpenduduk[index = 8].tahun;
              String thn4 = isijumlahpenduduk[index = 4].tahun;

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
                    PendudukRegUmurA(),
                    PendudukRegUmurB(),
                    PendudukRegUmurC(),
                    PendudukRegUmurD(),
                    PendudukRegUmurE(),
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
