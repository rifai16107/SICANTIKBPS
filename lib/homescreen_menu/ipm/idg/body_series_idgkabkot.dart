import 'package:bps_cilacap/homescreen_menu/ipm/idg/idg_se_jateng_a.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/idg_se_jateng_b.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/idg_se_jateng_c.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/idg_se_jateng_d.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/idg_se_jateng_e.dart';
import 'package:bps_cilacap/restAPI/repository_idg_kabkot.dart';
import 'package:flutter/material.dart';

class BodySeriesIdgKabkot extends StatefulWidget {
  const BodySeriesIdgKabkot({super.key});

  @override
  State<BodySeriesIdgKabkot> createState() => _BodySeriesIdgKabkotState();
}

class _BodySeriesIdgKabkotState extends State<BodySeriesIdgKabkot> {
  RepositoryIdgKabkot repositoryidgkabkot = RepositoryIdgKabkot();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryidgkabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiidgkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahunN1 = isiidgkabkot[index = 0].tahun.substring(0, 4);
              String tahunN2 = isiidgkabkot[index = 0].tahun.substring(5, 9);
              String tahunN3 = isiidgkabkot[index = 0].tahun.substring(10, 14);
              String tahunN4 = isiidgkabkot[index = 0].tahun.substring(15, 19);
              String tahunN5 = isiidgkabkot[index = 0].tahun.substring(20, 24);

              return DefaultTabController(
                length: 5,
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
                          text: tahunN1,
                        ),
                        Tab(
                          text: tahunN2,
                        ),
                        Tab(
                          text: tahunN3,
                        ),
                        Tab(
                          text: tahunN4,
                        ),
                        Tab(
                          text: tahunN5,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    IdgKabkotA(),
                    IdgKabkotB(),
                    IdgKabkotC(),
                    IdgKabkotD(),
                    IdgKabkotE(),
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
