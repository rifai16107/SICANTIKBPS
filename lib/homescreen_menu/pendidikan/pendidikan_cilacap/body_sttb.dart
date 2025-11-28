import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/sttb/sttb_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/sttb/sttb_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/sttb/sttb_c.dart';
import 'package:bps_cilacap/restAPI/repository_pendidikan_sttb.dart';
import 'package:flutter/material.dart';

class BodySeriesSttb extends StatefulWidget {
  const BodySeriesSttb({super.key});

  @override
  State<BodySeriesSttb> createState() => _BodySeriesSttbState();
}

class _BodySeriesSttbState extends State<BodySeriesSttb> {
  RepositorySttb repositorysttb = RepositorySttb();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorysttb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisttb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isisttb[index = 0].tahun;
              String th2 = isisttb[index = 6].tahun;
              String th3 = isisttb[index = 12].tahun;

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
                  body: const TabBarView(children: [SttbA(), SttbB(), SttbC()]),
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
