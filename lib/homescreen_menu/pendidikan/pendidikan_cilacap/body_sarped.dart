import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/sarped/sarped_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/sarped/sarped_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/sarped/sarped_c.dart';
import 'package:bps_cilacap/restAPI/repository_pendidikan_sarped.dart';
import 'package:flutter/material.dart';

class BodySeriesSarped extends StatefulWidget {
  const BodySeriesSarped({super.key});

  @override
  State<BodySeriesSarped> createState() => _BodySeriesSarpedState();
}

class _BodySeriesSarpedState extends State<BodySeriesSarped> {
  RepositorySarped repositorysarped = RepositorySarped();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorysarped.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisarped = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isisarped[index = 0].tahun;
              String th2 = isisarped[index = 10].tahun;
              String th3 = isisarped[index = 20].tahun;

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
                  body: const TabBarView(
                    children: [SarpedA(), SarpedB(), SarpedC()],
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
