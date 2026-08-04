import 'package:bps_cilacap/homescreen_menu/hasil_skd/skdtriwulanan_a.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/skdtriwulanan_b.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/skdtriwulanan_c.dart';
import 'package:bps_cilacap/restAPI/repository_skd_triwulanan.dart';
import 'package:flutter/material.dart';

class BodySeriesSkdTrwCilacap extends StatefulWidget {
  const BodySeriesSkdTrwCilacap({super.key});

  @override
  State<BodySeriesSkdTrwCilacap> createState() =>
      _BodySeriesSkdTrwCilacapState();
}

class _BodySeriesSkdTrwCilacapState extends State<BodySeriesSkdTrwCilacap> {
  RepositorySkdTriwulanan repositorySkdTriwulanan = RepositorySkdTriwulanan();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorySkdTriwulanan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiSkdTriwulanan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun n-2
              String tahun1 = isiSkdTriwulanan[index = 0].tahun.substring(0, 4);
              //tahun n-1
              String tahun2 = isiSkdTriwulanan[index = 8].tahun.substring(5, 9);
              //tahun n
              String tahun3 = isiSkdTriwulanan[index = 16].tahun.substring(
                10,
                14,
              );

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
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      //isScrollable: true,
                      tabs: [
                        Tab(text: tahun1),
                        Tab(text: tahun2),
                        Tab(text: tahun3),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      SkdTriwulananA(),
                      SkdTriwulananB(),
                      SkdTriwulananC(),
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
