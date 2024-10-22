import 'package:bps_cilacap/homescreen_menu/inflasi/isi_inflasi_series/series_inflasi_a.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/isi_inflasi_series/series_inflasi_b.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/isi_inflasi_series/series_inflasi_c.dart';
import 'package:bps_cilacap/restAPI/repository_series_inflasi.dart';
import 'package:flutter/material.dart';

class BodySeriesInflasi extends StatefulWidget {
  const BodySeriesInflasi({super.key});

  @override
  State<BodySeriesInflasi> createState() => _BodySeriesInflasiState();
}

class _BodySeriesInflasiState extends State<BodySeriesInflasi> {
  RepositorySeriesInflasi repositoryseriesinflasi = RepositorySeriesInflasi();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryseriesinflasi.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiseriesinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isiseriesinflasi[index = 0].tahun;
              String th2 = isiseriesinflasi[index = 12].tahun;
              String th3 = isiseriesinflasi[index = 24].tahun;

              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.01,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          text: th3,
                        ),
                        Tab(
                          text: th2,
                        ),
                        Tab(
                          text: th1,
                        ),
                      ],
                    ),
                  ),
                  
                  body: const TabBarView(children: [
                    SeriesInflasiC(),
                    SeriesInflasiB(),
                    SeriesInflasiA(),
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
