import 'package:bps_cilacap/ketenagakerjaan/isi_body_bak/isi_bak_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_bak/isi_bak_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_bak/isi_bak_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_bak/isi_bak_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_bak/isi_bak_e.dart';
import 'package:bps_cilacap/restAPI/repository_bkn_angkatan_kerja.dart';
import 'package:flutter/material.dart';

class BodyBak extends StatefulWidget {
  const BodyBak({super.key});

  @override
  State<BodyBak> createState() => _BodyBakState();
}

class _BodyBakState extends State<BodyBak> {
  RepositoryBknAngkatanKerja repositorybknangkatankerja =
      RepositoryBknAngkatanKerja();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorybknangkatankerja.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isitenagakerja = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isitenagakerja[index = 4].tahun;
              String th2 = isitenagakerja[index = 3].tahun;
              String th3 = isitenagakerja[index = 2].tahun;
              String th4 = isitenagakerja[index = 1].tahun;
              String th5 = isitenagakerja[index = 0].tahun;

              return DefaultTabController(
                length: 5,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.01,
                    bottom: TabBar(
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey,
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
                        Tab(
                          text: th4,
                        ),
                        Tab(
                          text: th5,
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    IsiBakA(),
                    IsiBakB(),
                    IsiBakC(),
                    IsiBakD(),
                    IsiBakE(),
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
