import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan_yony/inflasi_cilacap_yony_a.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan_yony/inflasi_cilacap_yony_b.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan_yony/inflasi_cilacap_yony_c.dart';
import 'package:bps_cilacap/restAPI/repository_inflasi_yony.dart';
import 'package:flutter/material.dart';

class BodySeriesInflasiBulananYony extends StatefulWidget {
  const BodySeriesInflasiBulananYony({super.key});

  @override
  State<BodySeriesInflasiBulananYony> createState() =>
      _BodySeriesInflasiBulananYonyState();
}

class _BodySeriesInflasiBulananYonyState extends State<BodySeriesInflasiBulananYony> {
  RepositoryInflasiYony repositoryinflasi = RepositoryInflasiYony();

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
              String bulan0 = isiinflasi[index = 0].bulan +
                  " " +
                  isiinflasi[index = 0].tahun;
              //Bulan n-1
              String bulan1 = isiinflasi[index = 2].bulan +
                  " " +
                  isiinflasi[index = 2].tahun;
              //Bulan n
              String bulan2 = isiinflasi[index = 5].bulan +
                  " " +
                  (isiinflasi[index = 5].tahun);

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
                    InflasiBulananYonyC(),
                    InflasiBulananYonyB(),
                    InflasiBulananYonyA(),
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
