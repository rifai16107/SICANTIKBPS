// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bps_cilacap/restAPI/repository_sensus.dart';
import 'package:bps_cilacap/sensus_tab/body_sensus_pddk_cilacap_wil.dart';
import 'package:bps_cilacap/sensus_tab/body_sensus_pddk_cilacap_kelum.dart';
import 'package:flutter/material.dart';

class SensusA extends StatefulWidget {
  const SensusA({super.key});

  @override
  State<SensusA> createState() => _SensusAState();
}

RepositorySensus sensus = RepositorySensus();

class _SensusAState extends State<SensusA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: sensus.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenduduk = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // isi data
              String thn = isipenduduk[index = 0].created_at[0] +
                  isipenduduk[index = 0].created_at[1] +
                  isipenduduk[index = 0].created_at[2] +
                  isipenduduk[index = 0].created_at[3];

              String lkTotal = isipenduduk[index = 0].lk;
              String prTotal = isipenduduk[index = 0].pr;
              String totalPddk = isipenduduk[index = 0].jumlah;
              String sexRatio = isipenduduk[index = 0].sex_rasio;

              double totalPostGenZ =
                  double.parse(isipenduduk[index = 0].post_gen_z);
              double totalGenZ = double.parse(isipenduduk[index = 0].gen_z);
              double totalMilenial =
                  double.parse(isipenduduk[index = 0].milenial);
              double totalGenX = double.parse(isipenduduk[index = 0].gen_x);
              double totalBabyBoomer =
                  double.parse(isipenduduk[index = 0].baby_boomer);
              double totalPreBoomer =
                  double.parse(isipenduduk[index = 0].pre_boomer);
              double totalGen = totalPostGenZ +
                  totalGenZ +
                  totalMilenial +
                  totalGenX +
                  totalBabyBoomer +
                  totalPreBoomer;
              double persenPostGenZ = totalPostGenZ / totalGen * 100;
              double persenGenZ = totalGenZ / totalGen * 100;
              double persenMilenial = totalMilenial / totalGen * 100;
              double persenGenX = totalGenX / totalGen * 100;
              double persenBabyBoomer = totalBabyBoomer / totalGen * 100;
              double persenPreBoomer = totalPreBoomer / totalGen * 100;

              return Container(
                margin: const EdgeInsets.all(2),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.08,
                      margin: const EdgeInsets.only(bottom: 2),
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          'Sensus Penduduk $thn (SP$thn) mencatat jumlah penduduk Kabupaten Cilacap sebanyak : ',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Center(
                          child: Text(
                        totalPddk + " jiwa",
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(47, 182, 224, 1),
                        ),
                      )),
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text(
                                  lkTotal,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text("jiwa LAKI-LAKI")
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Image.asset(
                                './assets/images/sensus/sensus.png',
                                width: 60,
                                height: 60,
                              ),
                            ),
                            Text(
                              "Rasio $sexRatio",
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text(
                                  prTotal,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text("jiwa PEREMPUAN")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: screenHeight * 0.03,
                      thickness: 3,
                    ),
                    SizedBox(
                      width: screenWidth,
                      child: const Text(
                        "Komposisi Penduduk menurut Generasi",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: Text(
                                "Post Generasi Z : ${totalPostGenZ.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang s/d 7 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: Text(
                                "Generasi Z : ${totalGenZ.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 8-23 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: Text(
                                "Milenial : ${totalMilenial.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 24-39 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: Text(
                                "Generasi X : ${totalGenX.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 40-55 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: Text(
                                "Baby Boomer : ${totalBabyBoomer.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 56-74 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                          //color: Color.fromRGBO(47, 182, 224, 1),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: Text(
                                "Pre-Boomer : ${totalPreBoomer.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 75 tahun keatas",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: screenHeight * 0.01,
                      //thickness: 3,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.table_view, size: 35),
                              color: Color.fromRGBO(47, 182, 224, 1),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const BodySensusPddkCilacapWil();
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: screenWidth * 0.5,
                              child: const Text(
                                "Penduduk Menurut Kecamatan",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.table_view, size: 35),
                              color: Color.fromRGBO(47, 182, 224, 1),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const BodySensusPddkCilacapKelum();
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: screenWidth * 0.45,
                              child: const Text(
                                "Penduduk Kelompok Umur",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.transparent,
                      height: 30,
                    )
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth * 0.5,
                child: const LinearProgressIndicator(
                  color: Colors.cyan,
                  minHeight: 1,
                ),
              ),
              const Text("Memuat Data"),
            ],
          );
        }
        if (snapshot.connectionState == ConnectionState.none) {
          return Center(
              child: Column(
            children: [
              Icon(Icons.error_outline),
              Text("Data Kosong"),
            ],
          ));
        } else {
          return Column(
            children: [
              Icon(Icons.error_outline),
              Text("DATABASE ERROR"),
            ],
          );
        }
      },
    );
  }
}
