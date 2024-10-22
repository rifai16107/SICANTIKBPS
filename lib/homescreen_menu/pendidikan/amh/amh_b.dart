// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pendidikan_amh.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class AmhB extends StatefulWidget {
  const AmhB({Key? key}) : super(key: key);

  @override
  State<AmhB> createState() => _AmhBState();
}

RepositoryAmh repositoryamh = RepositoryAmh();

class _AmhBState extends State<AmhB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryamh.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiamh = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String nama1 = isiamh[index = 4].nama;
                String nama2 = isiamh[index = 5].nama;
                String nama3 = isiamh[index = 6].nama;
                String nama4 = isiamh[index = 7].nama;

                double amhLk1 = double.parse(isiamh[index = 4].amh_lk);
                double amhLk2 = double.parse(isiamh[index = 5].amh_lk);
                double amhLk3 = double.parse(isiamh[index = 6].amh_lk);
                double amhLk4 = double.parse(isiamh[index = 7].amh_lk);

                double amhPr1 = double.parse(isiamh[index = 4].amh_pr);
                double amhPr2 = double.parse(isiamh[index = 5].amh_pr);
                double amhPr3 = double.parse(isiamh[index = 6].amh_pr);
                double amhPr4 = double.parse(isiamh[index = 7].amh_pr);
                
                double amhTotal1 = double.parse(isiamh[index = 4].amh_total);
                double amhTotal2 = double.parse(isiamh[index = 5].amh_total);
                double amhTotal3 = double.parse(isiamh[index = 6].amh_total);
                double amhTotal4 = double.parse(isiamh[index = 7].amh_total);
                

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
                                        "Kelompok Umur",
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
                                        "Laki-Laki",
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
                                        "Perempuan",
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
                                        "Lk+Pr",
                                        style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // 7 - 12
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
                                      child: Text(
                                        nama1,
                                        textAlign: TextAlign.center,
                                        
                                      ),
                                    
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhLk1, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhPr1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhTotal1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // 13-15
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
                                      child: Text(
                                        nama2,
                                        textAlign: TextAlign.center,
                                        
                                      ),
                                    
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhLk2, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhPr2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhTotal2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // 16-18
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
                                        textAlign: TextAlign.center,
                                        
                                      ),
                                    
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhLk3, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhPr3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhTotal3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // 19-124
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
                                      child: Text(
                                        nama4,
                                        textAlign: TextAlign.center,
                                        
                                      ),
                                    
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhLk4, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhPr4, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(amhTotal4, 2),
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
