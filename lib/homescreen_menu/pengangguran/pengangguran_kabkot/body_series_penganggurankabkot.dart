import 'package:bps_cilacap/restAPI/repository_pengangguran_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_kabkot/pengangguran_kabkot_a.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_kabkot/pengangguran_kabkot_b.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_kabkot/pengangguran_kabkot_c.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_kabkot/pengangguran_kabkot_d.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_kabkot/pengangguran_kabkot_e.dart';
import 'package:flutter/material.dart';

class BodySeriesPengangguranKabkot extends StatefulWidget {
  const BodySeriesPengangguranKabkot({super.key});

  @override
  State<BodySeriesPengangguranKabkot> createState() =>
      _BodySeriesPengangguranKabkotState();
}

class _BodySeriesPengangguranKabkotState
    extends State<BodySeriesPengangguranKabkot> {
  RepositoryPengangguranKabkot penganggurankabkot =
      RepositoryPengangguranKabkot();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: penganggurankabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenganggurankabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 =
                  isipenganggurankabkot[index = 0].tahun.substring(0, 4);
              String thn2 =
                  isipenganggurankabkot[index = 0].tahun.substring(5, 9);
              String thn3 =
                  isipenganggurankabkot[index = 0].tahun.substring(10, 14);
              String thn4 =
                  isipenganggurankabkot[index = 0].tahun.substring(15, 19);
              String thn5 =
                  isipenganggurankabkot[index = 0].tahun.substring(20, 24);

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
                    PengangguranKabkotA(),
                    PengangguranKabkotB(),
                    PengangguranKabkotC(),
                    PengangguranKabkotD(),
                    PengangguranKabkotE(),
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
