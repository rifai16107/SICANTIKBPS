import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/apm_apk/apm_apk_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/apm_apk/apm_apk_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/apm_apk/apm_apk_c.dart';
import 'package:bps_cilacap/restAPI/repository_pendidikan_apm_apk.dart';
import 'package:flutter/material.dart';

class BodySeriesApmApk extends StatefulWidget {
  const BodySeriesApmApk({super.key});

  @override
  State<BodySeriesApmApk> createState() => _BodySeriesApmApkState();
}

class _BodySeriesApmApkState extends State<BodySeriesApmApk> {
  RepositoryApmApk repositoryapmapk = RepositoryApmApk();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryapmapk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiapmapk = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isiapmapk[index = 0].tahun;
              String th2 = isiapmapk[index = 4].tahun;
              String th3 = isiapmapk[index = 8].tahun;

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
                      tabs: [
                        Tab(
                          text: th1,
                        ),
                        Tab(
                          text: th2,
                        ),
                        Tab(
                          text: th3,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    
                    ApmApkA(),
                    ApmApkB(),
                    ApmApkC(),
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
