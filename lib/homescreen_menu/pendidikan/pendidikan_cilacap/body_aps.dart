import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/aps/aps_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/aps/aps_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/aps/aps_c.dart';
import 'package:bps_cilacap/restAPI/repository_pendidikan_aps.dart';
import 'package:flutter/material.dart';

class BodySeriesAps extends StatefulWidget {
  const BodySeriesAps({super.key});

  @override
  State<BodySeriesAps> createState() => _BodySeriesApsState();
}

class _BodySeriesApsState extends State<BodySeriesAps> {
  RepositoryAps repositoryaps = RepositoryAps();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryaps.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiaps = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isiaps[index = 0].tahun;
              String th2 = isiaps[index = 4].tahun;
              String th3 = isiaps[index = 8].tahun;

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
                        Tab(text: th1),
                        Tab(text: th2),
                        Tab(text: th3),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [ApsA(), ApsB(), ApsC()]),
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
