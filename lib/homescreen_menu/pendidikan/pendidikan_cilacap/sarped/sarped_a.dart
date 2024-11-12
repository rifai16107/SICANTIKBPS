// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pendidikan_sarped.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class SarpedA extends StatefulWidget {
  const SarpedA({Key? key}) : super(key: key);

  @override
  State<SarpedA> createState() => _SarpedAState();
}

RepositorySarped repositorysarped = RepositorySarped();

class _SarpedAState extends State<SarpedA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorysarped.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isisarped = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String nama1 = isisarped[index = 0].nama;
                String nama2 = isisarped[index = 1].nama;
                String nama3 = isisarped[index = 2].nama;
                String nama4 = isisarped[index = 3].nama;
                String nama5 = isisarped[index = 4].nama;
                String nama6 = isisarped[index = 5].nama;
                String nama7 = isisarped[index = 6].nama;
                String nama8 = isisarped[index = 7].nama;
                String nama9 = isisarped[index = 8].nama;
                String nama10 = isisarped[index = 9].nama;

                int sekolah1 = int.parse(isisarped[index = 0].sklh);
                int sekolah2 = int.parse(isisarped[index = 1].sklh);
                int sekolah3 = int.parse(isisarped[index = 2].sklh);
                int sekolah4 = int.parse(isisarped[index = 3].sklh);
                int sekolah5 = int.parse(isisarped[index = 4].sklh);
                int sekolah6 = int.parse(isisarped[index = 5].sklh);
                int sekolah7 = int.parse(isisarped[index = 6].sklh);
                int sekolah8 = int.parse(isisarped[index = 7].sklh);
                int sekolah9 = int.parse(isisarped[index = 8].sklh);
                int sekolah10 = int.parse(isisarped[index = 9].sklh);

                int guru1 = int.parse(isisarped[index = 0].guru);
                int guru2 = int.parse(isisarped[index = 1].guru);
                int guru3 = int.parse(isisarped[index = 2].guru);
                int guru4 = int.parse(isisarped[index = 3].guru);
                int guru5 = int.parse(isisarped[index = 4].guru);
                int guru6 = int.parse(isisarped[index = 5].guru);
                int guru7 = int.parse(isisarped[index = 6].guru);
                int guru8 = int.parse(isisarped[index = 7].guru);
                int guru9 = int.parse(isisarped[index = 8].guru);
                int guru10 = int.parse(isisarped[index = 9].guru);

                int murid1 = int.parse(isisarped[index = 0].murid);
                int murid2 = int.parse(isisarped[index = 1].murid);
                int murid3 = int.parse(isisarped[index = 2].murid);
                int murid4 = int.parse(isisarped[index = 3].murid);
                int murid5 = int.parse(isisarped[index = 4].murid);
                int murid6 = int.parse(isisarped[index = 5].murid);
                int murid7 = int.parse(isisarped[index = 6].murid);
                int murid8 = int.parse(isisarped[index = 7].murid);
                int murid9 = int.parse(isisarped[index = 8].murid);
                int murid10 = int.parse(isisarped[index = 9].murid);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Jenis Sekolah",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Sekolah",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Guru",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Murid",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // TK
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 40),
                                    child: Text(
                                      nama1,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(sekolah1, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(guru1, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(murid1, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),

                            // RA
                            Container(
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 40),
                                      child: Text(
                                        nama2,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(sekolah2, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(guru2, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(murid2, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SD
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 40),
                                    child: Text(
                                      nama3,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(sekolah3, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(guru3, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(murid3, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),

                            // MI
                            Container(
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 40),
                                      child: Text(
                                        nama4,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(sekolah4, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(guru4, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(murid4, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SLTP
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 40),
                                    child: Text(
                                      nama5,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(sekolah5, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(guru5, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(murid5, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),

                            // MTs
                            Container(
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 40),
                                      child: Text(
                                        nama6,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(sekolah6, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(guru6, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(murid6, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SMU
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 40),
                                    child: Text(
                                      nama7,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(sekolah7, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(guru7, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(murid7, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),

                            // SMK
                            Container(
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 40),
                                      child: Text(
                                        nama8,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(sekolah8, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(guru8, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(murid8, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //MA
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 40),
                                    child: Text(
                                      nama9,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(sekolah9, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(guru9, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(murid9, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),

                            //PT
                            Container(
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 40),
                                      child: Text(
                                        nama10,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(sekolah10, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(guru10, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(murid10, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 3,
                            ),

                            Row(children: [
                              Flexible(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.only(
                                          top: 4,
                                          left: 4,
                                        ),
                                        child: const Text(
                                          " Sumber Data : Kementerian Pendidikan, Kementerian Agama, dan Disdikpora Prov/Kab",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ))
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('Database Error');
          } else {
            return const Center(
                child: CircularProgressIndicator(strokeWidth: 3));
          }
        },
      ),
    );
  }
}

extension MyExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
