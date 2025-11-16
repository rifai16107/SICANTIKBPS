import 'package:bps_cilacap/homescreen_menu/ipm/ipg_sejateng/ipg_se_jateng_a.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipg_sejateng/ipg_se_jateng_b.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipg_sejateng/ipg_se_jateng_c.dart';
import 'package:bps_cilacap/restAPI/repository_ipg_kabkot.dart';
import 'package:flutter/material.dart';

class BodySeriesIpgKabkot extends StatefulWidget {
  const BodySeriesIpgKabkot({super.key});

  @override
  State<BodySeriesIpgKabkot> createState() => _BodySeriesIpgKabkotState();
}

class _BodySeriesIpgKabkotState extends State<BodySeriesIpgKabkot> {
  RepositoryIpgKabkot repositoryipgkabkot = RepositoryIpgKabkot();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryipgkabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipgkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun n1
              String tahunN1 = isiipgkabkot[index = 0].tahun.substring(0, 4);

              //tahun n-3 dan n-2
              String tahunN2N3 = '${isiipgkabkot[index = 0].tahun.substring(5, 9)}-${isiipgkabkot[index = 0].tahun.substring(10, 14)}';
              //tahun n-1 dan n
              String tahunN4N5 = '${isiipgkabkot[index = 0].tahun.substring(15, 19)}-${isiipgkabkot[index = 0].tahun.substring(20, 24)}';
                         
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
                          text: tahunN1,
                        ),
                        Tab(
                          text: tahunN2N3,
                        ),
                        Tab(
                          text: tahunN4N5,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    IpgKabkotA(),
                    IpgKabkotB(),
                    IpgKabkotC(),
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
