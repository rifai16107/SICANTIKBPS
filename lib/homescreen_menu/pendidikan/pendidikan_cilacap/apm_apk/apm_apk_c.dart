// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pendidikan_apm_apk.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class ApmApkC extends StatefulWidget {
  const ApmApkC({Key? key}) : super(key: key);

  @override
  State<ApmApkC> createState() => _ApmApkCState();
}

RepositoryApmApk repositoryapmapk = RepositoryApmApk();

class _ApmApkCState extends State<ApmApkC> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryapmapk.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiapmapk = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String nama1 = isiapmapk[index = 8].nama;
                String nama2 = isiapmapk[index = 9].nama;
                String nama3 = isiapmapk[index = 10].nama;
                String nama4 = isiapmapk[index = 11].nama;

                double apm1 = double.parse(isiapmapk[index = 8].apm);
                double apm2 = double.parse(isiapmapk[index = 9].apm);
                double apm3 = double.parse(isiapmapk[index = 10].apm);
                double apm4 = double.parse(isiapmapk[index = 11].apm);

                double apk1 = double.parse(isiapmapk[index = 8].apk);
                double apk2 = double.parse(isiapmapk[index = 9].apk);
                double apk3 = double.parse(isiapmapk[index = 10].apk);
                double apk4 = double.parse(isiapmapk[index = 11].apk);

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
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Jenjang Pendidikan",
                                        style: TextStyle(color: Colors.white,
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
                                        "APM",
                                        style: TextStyle(color: Colors.white,
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
                                        "APK",
                                        style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SD Sederajat
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
                                      child: Text(
                                        nama1,
                                        textAlign: TextAlign.left,
                                        
                                      ),
                                    
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                      Format.convertTo(apm1, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                      Format.convertTo(apk1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // SLTP Sederajat
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal:10),
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
                                      Format.convertTo(apm2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  
                                    child: Text(
                                      Format.convertTo(apk2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                ),
                              ],
                            ),

                            // SLTA Sederajat
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    margin:
                                      const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
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
                                      Format.convertTo(apm3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                   child: Text(
                                      Format.convertTo(apk3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                 ),
                              ],
                            ),

                            // Akademi/PT
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
                                      Format.convertTo(apm4, 2),
                                    textAlign: TextAlign.right,
                                    ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(apk4, 2),
                                    textAlign: TextAlign.right,
                                    ),
                                 ),
                              ],
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
                                                  " Sumber Data : Survei Sosial Ekonomi Nasional",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.normal),
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