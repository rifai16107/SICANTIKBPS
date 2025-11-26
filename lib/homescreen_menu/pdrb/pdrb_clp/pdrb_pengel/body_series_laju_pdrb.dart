import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrbdislain/laju_pdrb_adhk_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrbdislain/laju_pdrb_adhk_b.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrbdislain/laju_pdrb_adhk_c.dart';
import 'package:bps_cilacap/restAPI/repository_pdrb_pengeldislain.dart';
import 'package:flutter/material.dart';

class BodySeriesLajuPdrb extends StatefulWidget {
  const BodySeriesLajuPdrb({super.key});

  @override
  State<BodySeriesLajuPdrb> createState() => _BodySeriesLajuPdrbState();
}

class _BodySeriesLajuPdrbState extends State<BodySeriesLajuPdrb> {
  RepositoryPdrbPengelDislain repositorypdrb = RepositoryPdrbPengelDislain();

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
              String tahunN4 = isipdrb[index = 9].tahun;

              //tahun n-3 dan n-2
              String tahunN3N2 =
                  '${isipdrb[index = 8].tahun}-${isipdrb[index = 7].tahun}';

              //tahun n-1 dan n
              String tahunN1N =
                  '${isipdrb[index = 6].tahun}-${isipdrb[index = 5].tahun}';

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
                      LajuPdrbAdhkA(),
                      LajuPdrbAdhkB(),
                      LajuPdrbAdhkC(),
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
