import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipm_se_jateng_a.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipm_se_jateng_b.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipm_se_jateng_c.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipm_se_jateng_d.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipm_se_jateng_e.dart';
import 'package:bps_cilacap/restAPI/repository_ipm_kabkot.dart';
import 'package:flutter/material.dart';

class BodySeriesIpmsejateng extends StatefulWidget {
  const BodySeriesIpmsejateng({super.key});

  @override
  State<BodySeriesIpmsejateng> createState() => _BodySeriesIpmsejatengState();
}

class _BodySeriesIpmsejatengState extends State<BodySeriesIpmsejateng> {
  RepositoryIpmKabkot repositoryipmkabkot = RepositoryIpmKabkot();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryipmkabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipmkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahunN1 = isiipmkabkot[index = 0].tahun_new.substring(
                20,
                24,
              );
              String tahunN2 = isiipmkabkot[index = 0].tahun_new.substring(
                15,
                19,
              );
              String tahunN3 = isiipmkabkot[index = 0].tahun_new.substring(
                10,
                14,
              );
              String tahunN4 = isiipmkabkot[index = 0].tahun_new.substring(
                5,
                9,
              );
              String tahunN5 = isiipmkabkot[index = 0].tahun_new.substring(
                0,
                4,
              );

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
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      //isScrollable: true,
                      tabs: [
                        Tab(text: tahunN1),
                        Tab(text: tahunN2),
                        Tab(text: tahunN3),
                        Tab(text: tahunN4),
                        Tab(text: tahunN5),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      IpmKabkotA(),
                      IpmKabkotB(),
                      IpmKabkotC(),
                      IpmKabkotD(),
                      IpmKabkotE(),
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
