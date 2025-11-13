import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/pertanian_pangan_a.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/pertanian_pangan_b.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/pertanian_pangan_c.dart';
import 'package:bps_cilacap/restAPI/repository_pertanian_pangan.dart';
import 'package:flutter/material.dart';

class BodySeriesPertanianPangan extends StatefulWidget {
  const BodySeriesPertanianPangan({super.key});

  @override
  State<BodySeriesPertanianPangan> createState() =>
      _BodySeriesPertanianPanganState();
}

class _BodySeriesPertanianPanganState extends State<BodySeriesPertanianPangan> {
  RepositoryPertanianPangan repositorypertanian = RepositoryPertanianPangan();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorypertanian.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipertanian = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun n-2
              String tahun1 = isipertanian[index = 0].tahun;
              //tahun n-1
              String tahun2 = isipertanian[index = 8].tahun;
              //tahun n
              String tahun3 = isipertanian[index = 16].tahun;

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
                          text: tahun1,
                        ),
                        Tab(
                          text: tahun2,
                        ),
                        Tab(
                          text: tahun3,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    PertanianPanganA(),
                    PertanianPanganB(),
                    PertanianPanganC(),
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
