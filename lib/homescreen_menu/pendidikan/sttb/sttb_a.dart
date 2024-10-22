// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pendidikan_sttb.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class SttbA extends StatefulWidget {
  const SttbA({Key? key}) : super(key: key);

  @override
  State<SttbA> createState() => _SttbAState();
}

RepositorySttb repositorysttb = RepositorySttb();

class _SttbAState extends State<SttbA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorysttb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isisttb = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String nama1 = isisttb[index = 0].nama;
                String nama2 = isisttb[index = 1].nama;
                String nama3 = isisttb[index = 2].nama;
                String nama4 = isisttb[index = 3].nama;
                String nama5 = isisttb[index = 4].nama;
                String nama6 = isisttb[index = 5].nama;

                double sttbLk1 = double.parse(isisttb[index = 0].sttb_lk);
                double sttbLk2 = double.parse(isisttb[index = 1].sttb_lk);
                double sttbLk3 = double.parse(isisttb[index = 2].sttb_lk);
                double sttbLk4 = double.parse(isisttb[index = 3].sttb_lk);
                double sttbLk5 = double.parse(isisttb[index = 4].sttb_lk);
                double sttbLk6 = double.parse(isisttb[index = 5].sttb_lk);
                double sttbLkTotal = sttbLk1+sttbLk2+sttbLk3+sttbLk4+sttbLk5+sttbLk6;

                double sttbPr1 = double.parse(isisttb[index = 0].sttb_pr);
                double sttbPr2 = double.parse(isisttb[index = 1].sttb_pr);
                double sttbPr3 = double.parse(isisttb[index = 2].sttb_pr);
                double sttbPr4 = double.parse(isisttb[index = 3].sttb_pr);
                double sttbPr5 = double.parse(isisttb[index = 4].sttb_pr);
                double sttbPr6 = double.parse(isisttb[index = 5].sttb_pr);
                double sttbPrTotal = sttbPr1+sttbPr2+sttbPr3+sttbPr4+sttbPr5+sttbPr6;


                double sttbTotal1 = double.parse(isisttb[index = 0].sttb_total);
                double sttbTotal2 = double.parse(isisttb[index = 1].sttb_total);
                double sttbTotal3 = double.parse(isisttb[index = 2].sttb_total);
                double sttbTotal4 = double.parse(isisttb[index = 3].sttb_total);
                double sttbTotal5 = double.parse(isisttb[index = 4].sttb_total);
                double sttbTotal6 = double.parse(isisttb[index = 5].sttb_total);
                double sttbTotal = sttbTotal1+sttbTotal2+sttbTotal3+sttbTotal4+sttbTotal5+sttbTotal6;

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

                            // Tidk/Belum pernah sekolah
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbLk1, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbPr1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbTotal1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // Tidak tamat SD
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
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
                                      Format.convertTo(sttbLk2, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbPr2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbTotal2, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // SD Sederajat
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                      Format.convertTo(sttbLk3, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbPr3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbTotal3, 2),
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
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
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
                                      Format.convertTo(sttbLk4, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbPr4, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbTotal4, 2),
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
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
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
                                      Format.convertTo(sttbLk5, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbPr5, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbTotal5, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                               
                              ],
                            ),

                            // PT
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                    
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
                                      Format.convertTo(sttbLk6, 2),
                                      textAlign: TextAlign.right, 
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbPr6, 2),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbTotal6, 2),
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
                                  flex: 4,
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
                                      
                                      Format.convertTo(sttbLkTotal, 2),
                                      style: const TextStyle(color: Color.fromARGB(255, 7, 7, 7),
                                        fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                       
                                      ),
                                  
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbPrTotal, 2),
                                      style: const TextStyle(color: Color.fromARGB(255, 7, 7, 7),
                                        fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                    ),
                               ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                      Format.convertTo(sttbTotal, 2),
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
