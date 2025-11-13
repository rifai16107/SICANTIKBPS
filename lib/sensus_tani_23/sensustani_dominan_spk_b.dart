import 'package:bps_cilacap/restAPI/repository_sensustani_dominan_spk.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';

class DominanSpkB extends StatefulWidget {
  const DominanSpkB({Key? key}) : super(key: key);

  @override
  State<DominanSpkB> createState() => _DominanSpkBState();
}

RepositorySensusTaniDominanSpk repositorysensustanidominspk =
    RepositorySensusTaniDominanSpk();

class _DominanSpkBState extends State<DominanSpkB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorysensustanidominspk.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isisensustani = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // isi data  jateng
                //String thn = isisensustani[index = 0].tahun;

                String thn = isisensustani[index = 1].tahun;

                int terbanyak_1 = int.parse(isisensustani[index = 1].terbanyak_1);
                int terbanyak_2 = int.parse(isisensustani[index = 1].terbanyak_2);
                int terbanyak_3 = int.parse(isisensustani[index = 1].terbanyak_3);
                int terbanyak_4 = int.parse(isisensustani[index = 1].terbanyak_4);
                int terbanyak_5 = int.parse(isisensustani[index = 1].terbanyak_5);
                int terbanyak_6 = int.parse(isisensustani[index = 1].terbanyak_6);
                int terbanyak_7 = int.parse(isisensustani[index = 1].terbanyak_7);
                int terbanyak_8 = int.parse(isisensustani[index = 1].terbanyak_8);
                int terbanyak_9 = int.parse(isisensustani[index = 1].terbanyak_9);
                int terbanyak_10 = int.parse(isisensustani[index = 1].terbanyak_10);
                int sapi = int.parse(isisensustani[index = 1].sapi);
                int kerbau = int.parse(isisensustani[index = 1].kerbau);

                

                return Container(
                  color: const Color.fromARGB(223, 190, 219, 197),
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: screenHeight * 0.10,
                        margin: const EdgeInsets.only(bottom: 5),
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            'Sepuluh Komoditas Pertanian yang Paling Banyak Diusahakan serta Jumlah Sapi dan Kerbau  Hasil Sensus Pertanian $thn di Jawa Tengah: ',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: 'Robo',
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                       const Divider(
                        thickness: 3,
                      ),                  
                      //Dominan 1                  
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '1',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Padi Sawah Inbrida',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_1, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_1.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      
                      //dominan 2
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '2',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Ayam Kampung Biasa',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_2, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_2.png',
                              //width: 75,
                              height: 50 ,
                            ),
                          ]),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),

                    //dominan 3
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '3',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Kambing Potong',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_3, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_3.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      
                      //dominan 4 
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '4',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Jagung Hibrida',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_4, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_4.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),

                      //dominan 5
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Sapi Potong',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_5, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_5.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),


                      //dominan 6
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '6',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Sengon/Jeunjing/Albasia',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_6, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_6.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),

                      //dominan 7
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '7',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Kelapa',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_7, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_7.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),

                      //dominan 8
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '8',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Jati',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_8, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_8.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ), 
                      const Divider(
                        thickness: 1,
                      ),

                      //dominan 9
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '9',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Ubi Kayu',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_9, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_9.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ), 
                      const Divider(
                        thickness: 1,
                      ),

                      //dominan 10
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.20,
                                child: const Text(
                                  '10',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                             
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: const Text(
                                  'Mahoni',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.45,
                                child: Text(
                                  '${Format.convertTo(terbanyak_10, 0)} Unit',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/jateng_10.png',
                              //width: 75,
                              height: 50,
                            ),
                          ]),
                        ],
                      ), 
                      const Divider(
                        thickness: 1,
                      ),
                      
                      //SAPI
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.65,
                                child: const Text(
                                  'Jumlah Sapi (mencakup Sapi Potong dan Perah):',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.65,
                                child: Text(
                                  '${Format.convertTo(sapi, 0)} (Ekor)',
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/st_2023_sapi.png',
                              //width: 75,
                              height: 70,
                            ),
                          ]),
                        ],
                      ), 
                      const Divider(
                        thickness: 1,
                      ),

                      // KERBAU
                      Row(
                        children: [
                          Column(children: [
                            Image.asset(
                              width: screenWidth * 0.30,
                              './assets/images/sensus/st_2023_kerbau.png',
                              //width: 75,
                              height: 70,
                            ),
                          ]),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.65,
                                child: const Text(
                                  'Jumlah Kerbau, tercatat sebanyak:',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.65,
                                child: Text(
                                  '${Format.convertTo(kerbau, 0)} (Ekor)',
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ), 
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.25,
                                child: const Text(
                                  "Catatan:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Satu Rumah Tangga Usaha Pertanian (RTUP) dapat terdiri atas satu Usaha Pertanian Perorangan (UTP) atau lebih.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Satu RTUP dan UTP dapat mengusahakan lebih dari satu subsektor usaha pertanian, sehingga jumlah unit RTUP dan UTP di Sektor Pertanian bukan merupakan penjumlahan dari masing-masing subsektor",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.03,
                                width: screenWidth * 0.97,
                                child: const Text(
                                  " ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
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
