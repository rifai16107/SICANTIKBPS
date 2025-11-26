import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb/nilai_pdrb_adhk_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb/nilai_pdrb_adhk_b.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb/nilai_pdrb_adhk_c.dart';
import 'package:bps_cilacap/restAPI/repository_pdrb_pengel.dart';
import 'package:flutter/material.dart';

class BodySeriesPdrbPengelAdhk extends StatefulWidget {
  const BodySeriesPdrbPengelAdhk({super.key});

  @override
  State<BodySeriesPdrbPengelAdhk> createState() =>
      _BodySeriesPdrbPengelAdhkState();
}

class _BodySeriesPdrbPengelAdhkState extends State<BodySeriesPdrbPengelAdhk> {
  RepositoryPdrbPengel repositorypdrb = RepositoryPdrbPengel();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
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
              String tahunN4 = isipdrb[index = 19].tahun;

              //tahun n-3 dan n-2
              String tahunN3N2 =
                  '${isipdrb[index = 18].tahun}-${isipdrb[index = 17].tahun}';

              //tahun n-1 dan n
              String tahunN1N =
                  '${isipdrb[index = 16].tahun}-${isipdrb[index = 15].tahun}';

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
                        Tab(text: tahunN4),
                        Tab(text: tahunN3N2),
                        Tab(text: tahunN1N),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      PdrbPengelAdhkA(),
                      PdrbPengelAdhkB(),
                      PdrbPengelAdhkC(),
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
