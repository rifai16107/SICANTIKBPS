import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/pertanian_ternak.dart';
import 'package:bps_cilacap/restAPI/repository_pertanian_ternak.dart';
import 'package:flutter/material.dart';

class BodySeriesTernak extends StatefulWidget {
  const BodySeriesTernak({super.key});

  @override
  State<BodySeriesTernak> createState() => _BodySeriesTernakState();
}

class _BodySeriesTernakState extends State<BodySeriesTernak> {
  RepositoryPertanianTernak repositorypertanian = RepositoryPertanianTernak();

  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height -
    //MediaQuery.of(context).padding.top -
    //MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorypertanian.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //List isipertanian = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //Produksi
              //String produksi = "";

              return const DefaultTabController(
                length: 1,
                child: Scaffold(
                  body: TabBarView(children: [
                    PertanianTernak(),
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
