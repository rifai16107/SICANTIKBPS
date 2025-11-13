import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan/inflasi_cilacap_a.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan/inflasi_cilacap_b.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan/inflasi_cilacap_c.dart';
import 'package:bps_cilacap/restAPI/repository_inflasi.dart';
import 'package:flutter/material.dart';

class BodySeriesInflasiBulanan extends StatefulWidget {
  const BodySeriesInflasiBulanan({super.key});

  @override
  State<BodySeriesInflasiBulanan> createState() =>
      _BodySeriesInflasiBulananState();
}

class _BodySeriesInflasiBulananState extends State<BodySeriesInflasiBulanan> {
  RepositoryInflasi repositoryinflasi = RepositoryInflasi();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryinflasi.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //Bulan n-2
              String bulan0 = '${isiinflasi[index = 0].bulan} ' ' ${isiinflasi[index = 0].tahun}';
              //Bulan n-1
              String bulan1 = '${isiinflasi[index = 3].bulan} ' ' ${isiinflasi[index = 3].tahun}';
              //Bulan n
              String bulan2 = '${isiinflasi[index = 6].bulan} ' ' ${isiinflasi[index = 6].tahun}';

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
                          text: bulan2,
                        ),
                        Tab(
                          text: bulan1,
                        ),
                        Tab(
                          text: bulan0,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    InflasiBulananC(),
                    InflasiBulananB(),
                    InflasiBulananA(),
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
