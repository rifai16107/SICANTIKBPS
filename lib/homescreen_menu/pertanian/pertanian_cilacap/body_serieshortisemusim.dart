import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/pertanian_horti_semusim_a.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/pertanian_horti_semusim_b.dart';
import 'package:bps_cilacap/restAPI/repository_pertanian_horti_semusim.dart';
import 'package:flutter/material.dart';

class BodySeriesHortiSemusim extends StatefulWidget {
  const BodySeriesHortiSemusim({super.key});

  @override
  State<BodySeriesHortiSemusim> createState() => _BodySeriesHortiSemusimState();
}

class _BodySeriesHortiSemusimState extends State<BodySeriesHortiSemusim> {
  RepositoryPertanianHortiSemusim repositorypertanian =
      RepositoryPertanianHortiSemusim();

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
          //List isipertanian = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //Luas Panen
              String luaspanen = "Luas Panen";
              //Produksi
              String produksi = "Produksi";

              return DefaultTabController(
                length: 2,
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
                          text: luaspanen,
                        ),
                        Tab(
                          text: produksi,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    PertanianHortiSemusimA(),
                    PertanianHortiSemusimB(),
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
