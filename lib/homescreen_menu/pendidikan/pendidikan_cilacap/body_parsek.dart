import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/parsek/parsek_a.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/parsek/parsek_b.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/parsek/parsek_c.dart';
import 'package:bps_cilacap/restAPI/repository_pendidikan_parsek.dart';
import 'package:flutter/material.dart';

class BodySeriesParsek extends StatefulWidget {
  const BodySeriesParsek({super.key});

  @override
  State<BodySeriesParsek> createState() => _BodySeriesParsekState();
}

class _BodySeriesParsekState extends State<BodySeriesParsek> {
  RepositoryParsek repositoryparsek = RepositoryParsek();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryparsek.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiparsek = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isiparsek[index = 0].tahun;
              String th2 = isiparsek[index = 3].tahun;
              String th3 = isiparsek[index = 6].tahun;

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
                    children: [ParsekA(), ParsekB(), ParsekC()],
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
