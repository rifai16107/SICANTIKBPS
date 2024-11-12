import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/amh/amh_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/amh/amh_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/amh/amh_c.dart';
import 'package:bps_cilacap/restAPI/repository_pendidikan_amh.dart';
import 'package:flutter/material.dart';

class BodySeriesAmh extends StatefulWidget {
  const BodySeriesAmh({super.key});

  @override
  State<BodySeriesAmh> createState() => _BodySeriesAmhState();
}

class _BodySeriesAmhState extends State<BodySeriesAmh> {
  RepositoryAmh repositoryamh = RepositoryAmh();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryamh.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiamh = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isiamh[index = 0].tahun;
              String th2 = isiamh[index = 4].tahun;
              String th3 = isiamh[index = 8].tahun;

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
                    AmhA(),
                    AmhB(),
                    AmhC(),
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
