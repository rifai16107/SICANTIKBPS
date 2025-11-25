import 'package:bps_cilacap/homescreen_menu/inflasi/series_kota/inflasi_kota_a.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_kota/inflasi_kota_b.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_kota/inflasi_kota_c.dart';
import 'package:bps_cilacap/restAPI/repository_inflasi_kota.dart';
import 'package:flutter/material.dart';

class BodySeriesInflasiKota extends StatefulWidget {
  const BodySeriesInflasiKota({super.key});

  @override
  State<BodySeriesInflasiKota> createState() => _BodySeriesInflasiKotaState();
}

class _BodySeriesInflasiKotaState extends State<BodySeriesInflasiKota> {
  RepositoryInflasiKota repositoryinflasikota = RepositoryInflasiKota();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryinflasikota.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //Bulan n-2
              String bulan0 =
                  '${isiinflasi[index = 0].bulan} '
                  '${isiinflasi[index = 0].tahun}';
              //Bulan n-1
              String bulan1 =
                  '${isiinflasi[index = 8].bulan} '
                  '${isiinflasi[index = 8].tahun}';
              //Bulan n
              String bulan2 =
                  '${isiinflasi[index = 16].bulan} '
                  '${isiinflasi[index = 16].tahun}';

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
                      tabs: [
                        Tab(text: bulan2),
                        Tab(text: bulan1),
                        Tab(text: bulan0),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [InflasiKotaC(), InflasiKotaB(), InflasiKotaA()],
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
