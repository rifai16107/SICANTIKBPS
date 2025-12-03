// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bps_cilacap/restAPI/repository_sensustani.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';

class SensusTaniA extends StatefulWidget {
  const SensusTaniA({Key? key}) : super(key: key);

  @override
  State<SensusTaniA> createState() => _SensusTaniAState();
}

RepositorySensusTani repositorysensustani = RepositorySensusTani();

class _SensusTaniAState extends State<SensusTaniA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorysensustani.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isisensustani = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // isi data kabupaten cilacap
                String thn = isisensustani[index = 0].tahun;

                int rtup = int.parse(isisensustani[index = 0].rtup);
                int panganRtup = int.parse(isisensustani[index = 0].padi_rtup);
                int hortiRtup = int.parse(isisensustani[index = 0].horti_rtup);
                int kebunRtup = int.parse(isisensustani[index = 0].kebun_rtup);
                int ternakRtup = int.parse(
                  isisensustani[index = 0].ternak_rtup,
                );
                int ikanRtup = int.parse(isisensustani[index = 0].ikan_rtup);
                int hutanRtup = int.parse(isisensustani[index = 0].hutan_rtup);
                int jasaRtup = int.parse(isisensustani[index = 0].jasa_rtup);

                double persenPanganRtup = panganRtup / rtup * 100;
                double persenHortiRtup = hortiRtup / rtup * 100;
                double persenKebunRtup = kebunRtup / rtup * 100;
                double persenTernakRtup = ternakRtup / rtup * 100;
                double persenIkanRtup = ikanRtup / rtup * 100;
                double persenHutanRtup = hutanRtup / rtup * 100;
                double persenJasaRtup = jasaRtup / rtup * 100;

                int utp = int.parse(isisensustani[index = 0].utp);
                int panganUtp = int.parse(isisensustani[index = 0].padi_utp);
                int hortiUtp = int.parse(isisensustani[index = 0].horti_utp);
                int kebunUtp = int.parse(isisensustani[index = 0].kebun_utp);
                int ternakUtp = int.parse(isisensustani[index = 0].ternak_utp);
                int ikanUtp = int.parse(isisensustani[index = 0].ikan_utp);
                int hutanUtp = int.parse(isisensustani[index = 0].hutan_utp);
                int jasaUtp = int.parse(isisensustani[index = 0].jasa_utp);

                double persenPanganUtp = (panganUtp / utp) * 100;
                double persenHortiUtp = (hortiUtp / utp) * 100;
                double persenKebunUtp = (kebunUtp / utp) * 100;
                double persenTernakUtp = (ternakUtp / utp) * 100;
                double persenIkanUtp = (ikanUtp / utp) * 100;
                double persenHutanUtp = (hutanUtp / utp) * 100;
                double persenJasaUtp = (jasaUtp / utp) * 100;

                double rasio = utp / rtup;

                return Container(
                  color: Color.fromARGB(223, 190, 219, 197),
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 115,
                        margin: const EdgeInsets.only(bottom: 2),
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            'Sensus Pertanian $thn (ST$thn) mencatat jumlah Rumah Tangga Usaha Pertanian (RTUP) dan jumlah Usaha Pertanian Perorangan (UTP) di Kabupaten Cilacap sebanyak : ',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Robo',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
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
                                    Format.convertTo(rtup, 0),
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromRGBO(47, 182, 224, 1),
                                    ),
                                  ),
                                  Text(
                                    "RTUP",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Naik 2,60 % dari ST2013",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.transparent,
                                child: Image.asset(
                                  './assets/images/sensus/sensus_tani_23.png',
                                  width: 75,
                                  height: 75,
                                ),
                              ),
                              Text(
                                'Rasio 1: ' + Format.convertTo(rasio, 3),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                                    Format.convertTo(utp, 0),
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromRGBO(47, 182, 224, 1),
                                    ),
                                  ),
                                  Text(
                                    "UTP",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Turun 4,64% dari ST2013",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(height: screenHeight * 0.05, thickness: 3),

                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  "(dalam rumah tangga)",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            width: screenWidth * 0.33,
                            './assets/images/sensus/st_2023.png',
                            //width: 75,
                            height: 60,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  "(dalam unit)",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //pangan
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  Format.convertTo(panganRtup, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenPanganRtup, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.33,
                                './assets/images/sensus/st_2023_padi.png',
                                //width: 75,
                                height: 52,
                              ),
                              SizedBox(
                                //width: screenWidth * 0.3,
                                child: Text(
                                  'Tanaman Pangan',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  Format.convertTo(panganUtp, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenPanganUtp, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      //horti
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  Format.convertTo(hortiRtup, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenHortiRtup, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.33,
                                './assets/images/sensus/st_2023_horti.png',
                                //width: 75,
                                height: 55,
                              ),
                              SizedBox(
                                //width: screenWidth * 0.3,
                                child: Text(
                                  'Hortikultura',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  Format.convertTo(hortiUtp, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenHortiUtp, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Divider(thickness: 1),
                      //kebun
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  Format.convertTo(kebunRtup, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenKebunRtup, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.33,
                                './assets/images/sensus/st_2023_kebun.png',
                                //width: 75,
                                height: 55,
                              ),
                              SizedBox(
                                //width: screenWidth * 0.3,
                                child: Text(
                                  'Perkebunan',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  Format.convertTo(kebunUtp, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenKebunUtp, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      //ternak
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  Format.convertTo(ternakRtup, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenTernakRtup, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.33,
                                './assets/images/sensus/st_2023_ternak.png',
                                //width: 75,
                                height: 55,
                              ),
                              SizedBox(
                                //width: screenWidth * 0.3,
                                child: Text(
                                  'Peternakan',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  Format.convertTo(ternakUtp, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenTernakUtp, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Divider(thickness: 1),
                      //ikan
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  Format.convertTo(ikanRtup, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenIkanRtup, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.33,
                                './assets/images/sensus/st_2023_ikan.png',
                                //width: 75,
                                height: 55,
                              ),
                              SizedBox(
                                //width: screenWidth * 0.3,
                                child: Text(
                                  'Perikanan',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  Format.convertTo(ikanUtp, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenIkanUtp, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      //hutan
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  Format.convertTo(hutanRtup, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenHutanRtup, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.33,
                                './assets/images/sensus/st_2023_hutan.png',
                                //width: 75,
                                height: 55,
                              ),
                              SizedBox(
                                //width: screenWidth * 0.3,
                                child: Text(
                                  'Kehutanan',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  Format.convertTo(hutanUtp, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenHutanUtp, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      //jasa
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  Format.convertTo(jasaRtup, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.33,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenJasaRtup, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.33,
                                './assets/images/sensus/st_2023_jasa.png',
                                //width: 75,
                                height: 55,
                              ),
                              SizedBox(
                                //width: screenWidth * 0.3,
                                child: Text(
                                  'Jasa Pertanian',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  Format.convertTo(jasaUtp, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: Text(
                                  '(' +
                                      Format.convertTo(persenJasaUtp, 2) +
                                      ') %',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      //catatan
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.25,
                                child: Text(
                                  "Catatan:",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
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
                                child: Text(
                                  "Satu Rumah Tangga Usaha Pertanian (RTUP) dapat terdiri atas satu Usaha Pertanian Perorangan (UTP) atau lebih.",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                  ),
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
                                    fontSize: 10,
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

extension MyExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
