// ignore: file_names

import 'package:bps_cilacap/restAPI/repository_skd_triwulanan.dart';
import 'package:flutter/material.dart';

class SkdTriwulananC extends StatefulWidget {
  const SkdTriwulananC({Key? key}) : super(key: key);

  @override
  State<SkdTriwulananC> createState() => _SkdTriwulananCState();
}

RepositorySkdTriwulanan repositorySkdTriwulanan = RepositorySkdTriwulanan();

class _SkdTriwulananCState extends State<SkdTriwulananC> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;

    return Scaffold(
      body: FutureBuilder(
        future: repositorySkdTriwulanan.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiSkdTriwulanan = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // isi data kabupaten cilacap
                //String thn = isisensustani[index = 0].tahun;

                String ipkpTrw1n3 = isiSkdTriwulanan[index = 0].trw1n3_ipkp;
                String ipakTrw1n3 = isiSkdTriwulanan[index = 0].trw1n3_ipak;
                String ipkpTrw2n3 = isiSkdTriwulanan[index = 0].trw2n3_ipkp;
                String ipakTrw2n3 = isiSkdTriwulanan[index = 0].trw2n3_ipak;
                String ipkpTrw3n3 = isiSkdTriwulanan[index = 0].trw3n3_ipkp;
                String ipakTrw3n3 = isiSkdTriwulanan[index = 0].trw3n3_ipak;
                String ipkpTrw4n3 = isiSkdTriwulanan[index = 0].trw4n3_ipkp;
                String ipakTrw4n3 = isiSkdTriwulanan[index = 0].trw4n3_ipak;

                return Container(
                  //color: const Color.fromARGB(223, 240, 216, 172),
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: <Widget>[
                      //Header Column
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.25,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  right: 0,
                                ),
                                child: Text(
                                  'URAIAN',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Trw 1',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Trw 2',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Trw 3',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Trw 4',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.97,
                                height: screenHeight * 0.02,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //ikk dan ipak n3
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.25,
                                height: screenHeight * 0.08,
                                child: Text(
                                  'IPKP',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipkpTrw1n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipkpTrw2n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipkpTrw3n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipkpTrw4n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //ikk dan ipak n3
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.25,
                                height: screenHeight * 0.08,
                                child: Text(
                                  'IPAK',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipakTrw1n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipakTrw2n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipakTrw3n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.18,
                                height: screenHeight * 0.08,
                                child: Text(
                                  ipakTrw4n3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const Divider(thickness: 1),

                      const Divider(
                        color: Colors.white,
                        height: 10,
                        thickness: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.93,
                                child: const Text(
                                  "Keterangan:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.93,
                                child: const Text(
                                  "IPKP (Indeks Persepsi Kualitas Pelayanan) dan IPAK (Indeks Persepsi Anti Korupsi) Triwulanan didapat dari Survei Kebutuhan Data (SKD) Triwulanan pada pengguna Layanan PST (Pelayanan Statistik Terpadu) di BPS Cilacap",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Sumber: BPS Kabupaten Cilacap",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
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
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
      ),
    );
  }
}
