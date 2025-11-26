import 'package:bps_cilacap/restAPI/repository_pdrb_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhk_kabkot/pdrbadhk_kabkot_a.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhk_kabkot/pdrbadhk_kabkot_bc.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhk_kabkot/pdrbadhk_kabkot_de.dart';
import 'package:flutter/material.dart';

class BodySeriesPdrbadhkKabkot extends StatefulWidget {
  const BodySeriesPdrbadhkKabkot({super.key});

  @override
  State<BodySeriesPdrbadhkKabkot> createState() =>
      _BodySeriesPdrbadhkKabkotState();
}

class _BodySeriesPdrbadhkKabkotState extends State<BodySeriesPdrbadhkKabkot> {
  RepositoryPdrbKabkot repositorypdrb = RepositoryPdrbKabkot();
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorypdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrbkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //tahun 2019-2023
              String thn1 = isipdrbkabkot[index = 0].tahun.substring(0, 4);
              String thn23 =
                  '${isipdrbkabkot[index = 0].tahun.substring(5, 9)}-${isipdrbkabkot[index = 0].tahun.substring(10, 14)}';
              String thn45 =
                  '${isipdrbkabkot[index = 0].tahun.substring(15, 19)}-${isipdrbkabkot[index = 0].tahun.substring(20, 24)}';
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
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(text: thn1),
                        Tab(text: thn23),
                        Tab(text: thn45),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      PdrbadhkKabkotA(),
                      PdrbadhkKabkotBC(),
                      PdrbadhkKabkotDE(),
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
