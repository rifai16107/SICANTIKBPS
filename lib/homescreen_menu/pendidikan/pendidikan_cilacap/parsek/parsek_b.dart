// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pendidikan_parsek.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class ParsekB extends StatefulWidget {
  const ParsekB({Key? key}) : super(key: key);

  @override
  State<ParsekB> createState() => _ParsekBState();
}

RepositoryParsek repositoryparsek = RepositoryParsek();

class _ParsekBState extends State<ParsekB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryparsek.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiparsek = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String nama1 = isiparsek[index = 3].nama;
                String nama2 = isiparsek[index = 4].nama;
                String nama3 = isiparsek[index = 5].nama;
                

                double parsekLk1 = double.parse(isiparsek[index = 3].parsek_lk);
                double parsekLk2 = double.parse(isiparsek[index = 4].parsek_lk);
                double parsekLk3 = double.parse(isiparsek[index = 5].parsek_lk);
                double parsekLktotal = parsekLk1+parsekLk2+parsekLk3;

                double parsekPr1 = double.parse(isiparsek[index = 3].parsek_pr);
                double parsekPr2 = double.parse(isiparsek[index = 4].parsek_pr);
                double parsekPr3 = double.parse(isiparsek[index = 5].parsek_pr);
                double parsekPrtotal = parsekPr1+parsekPr2+parsekPr3;
                
                double parsekTotal1 = double.parse(isiparsek[index = 3].parsek_total);
                double parsekTotal2 = double.parse(isiparsek[index = 4].parsek_total);
                double parsekTotal3 = double.parse(isiparsek[index = 5].parsek_total);
                double parsekTotal = parsekTotal1+parsekTotal2+parsekTotal3;
                

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
                                        horizontal: 2, vertical: 2),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Partisipasi Sekolah",
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
                                        "Lk",
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
                                        "Pr",
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

                            // Tidak/belum pernah bersekolah
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
                                        textAlign: TextAlign.center,
                                        
                                      ),
                                    
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekLk1, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekPr1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekTotal1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // Masih Bersekolah
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
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
                                      Format.convertTo(parsekLk2, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekPr2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekTotal2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // Tdk Sekolah Lagi
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
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
                                      Format.convertTo(parsekLk3, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekPr3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekTotal3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),
                             const Divider(
                              thickness: 3,
                            ),
                            // Total
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: const Center(
                                      child: Text(
                                        "Total",
                                        style: TextStyle(color: Color.fromARGB(255, 7, 7, 7),
                                        fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                 child: Text(
                                      
                                      Format.convertTo(parsekLktotal, 2),
                                      style: const TextStyle(color: Color.fromARGB(255, 7, 7, 7),
                                        fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                       
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekPrtotal, 2),
                                      style: const TextStyle(color: Color.fromARGB(255, 7, 7, 7),
                                        fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(parsekTotal, 2),
                                      style: const TextStyle(color: Color.fromARGB(255, 7, 7, 7),
                                        fontWeight: FontWeight.bold),
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
