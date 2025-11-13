import 'package:bps_cilacap/sensus_tani_23/sensustani_a.dart';
import 'package:bps_cilacap/sensus_tani_23/sensustani_b.dart';
import 'package:bps_cilacap/sensus_tani_23/sensustani_c.dart';
import 'package:bps_cilacap/restAPI/repository_sensustani.dart';
import 'package:flutter/material.dart';

class BodySensusPertanian extends StatefulWidget {
  const BodySensusPertanian({super.key});

  @override
  State<BodySensusPertanian> createState() => _BodySensusPertanianState();
}

class _BodySensusPertanianState extends State<BodySensusPertanian> {
  RepositorySensusTani repositorysensustani = RepositorySensusTani();

@override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWeight = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorysensustani.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isikategori = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kab = isikategori[index = 0].wilayah;
              String prov = isikategori[index = 1].wilayah;
              String nasional = isikategori[index = 2].wilayah;
              
              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                     backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.002,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      //isScrollable: true,
                      tabs: [
                        Tab(
                          text: kab,
                        ),
                        Tab(
                          text: prov,
                        ),
                        Tab(
                          text: nasional,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    SensusTaniA(),
                    SensusTaniB(),
                    SensusTaniC(),
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
