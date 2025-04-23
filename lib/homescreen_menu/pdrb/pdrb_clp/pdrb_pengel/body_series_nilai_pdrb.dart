import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb/nilai_pdrb_adhb_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb/nilai_pdrb_adhb_b.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb/nilai_pdrb_adhb_c.dart';
import 'package:bps_cilacap/restAPI/repository_pdrb_pengel.dart';
import 'package:flutter/material.dart';

class BodySeriesPdrbPengel extends StatefulWidget {
  const BodySeriesPdrbPengel({super.key});

  @override
  State<BodySeriesPdrbPengel> createState() => _BodySeriesPdrbPengelState();
}

class _BodySeriesPdrbPengelState extends State<BodySeriesPdrbPengel> {
  RepositoryPdrbPengel repositorypdrb = RepositoryPdrbPengel();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorypdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun n-4
              String tahunN4 = isipdrb[index = 14].tahun;

              //tahun n-3 dan n-2
              String tahunN3N2 =
                  isipdrb[index = 13].tahun + "-" + isipdrb[index = 12].tahun;

              //tahun n-1 dan n
              String tahunN1N =
                  isipdrb[index = 11].tahun + "-" + isipdrb[index = 10].tahun;

              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.001,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      //isScrollable: true,
                      tabs: [
                        Tab(
                          text: tahunN4,
                        ),
                        Tab(
                          text: tahunN3N2,
                        ),
                        Tab(
                          text: tahunN1N,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    PdrbPengelA(),
                    PdrbPengelB(),
                    PdrbPengelC(),
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
