import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// TPK dan RLS Hotel bintang
class RepositoryIndikatorUtama {
  final _baseURL = 'https://bps-3301-asap.my.id/api/indikator-utama';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiindikatorutama) =>
                ModelIndikatorUtama.fromJson(isiindikatorutama))
            .toList();
      }
    } catch (isiindikatorutama) {
      // ignore: avoid_print
      print(isiindikatorutama.toString());
    }
  }
}

class ModelIndikatorUtama {
  final int id;
  final String indikator;
  final String nilai;
  final String bulan;
  final String tahun;

  ModelIndikatorUtama(
      {required this.id,
      required this.indikator,
      required this.nilai,
      required this.bulan,
      required this.tahun});

  factory ModelIndikatorUtama.fromJson(Map<String, dynamic> json) {
    return ModelIndikatorUtama(
      id: json['id'],
      indikator: json['indikator'],
      nilai: json['nilai'],
      bulan: json['bulan'],
      tahun: json['tahun'],
    );
  }
}

class carouselSlider5 extends StatefulWidget {
  const carouselSlider5({super.key});

  @override
  State<carouselSlider5> createState() => _carouselSlider5State();
}

RepositoryIndikatorUtama repositoryindikatorutama = RepositoryIndikatorUtama();

class _carouselSlider5State extends State<carouselSlider5> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryindikatorutama.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiindikatorutama = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //String kab = "Cilacap";
              String bulanSblm = isiindikatorutama[index = 15].bulan;
              String tahunSblm = isiindikatorutama[index = 15].tahun;
              
              String bulanNow = isiindikatorutama[index = 16].bulan;
              String tahunNow = isiindikatorutama[index = 16].tahun;

              //String bulanSblm = "";
              
              //if (bulann == "Jan") {
                //bulanSblm = "Januari";
              //} else if (bulann == "Feb") {
                //bulanSblm = "Februari";
              //} else if (bulann == "Mar") {
                //bulanSblm = "Maret";
              //} else if (bulann == "Apr") {
                //bulanSblm = "April";
              //} else if (bulann == "Mei") {
                //bulanSblm = "Mei";
              //} else if (bulann == "Jun") {
                //bulanSblm = "Juni";
              //} else if (bulann == "Jul") {
                //bulanSblm = "Juli";
              //} else if (bulann == "Ags") {
                //bulanSblm = "Agustus";
              //} else if (bulann == "Sep") {
                //bulanSblm = "September";
              //} else if (bulann == "Okt") {
                //bulanSblm = "Oktober";
              //} else if (bulann == "Nov") {
                //bulanSblm = "November";
              //} else {
                //bulanSblm = "Desember";
              //}

              //String bulanNow = "";
              //if (bulann1 == "Jan") {
                //bulanNow = "Januari";
              //} else if (bulann1 == "Feb") {
                //bulanNow = "Februari";
              //} else if (bulann1 == "Mar") {
                //bulanNow = "Maret";
              //} else if (bulann1 == "Apr") {
                //bulanNow = "April";
              //} else if (bulann1 == "Mei") {
                //bulanNow = "Mei";
              //} else if (bulann1 == "Jun") {
                //bulanNow = "Juni";
              //} else if (bulann1 == "Jul") {
                //bulanNow = "Juli";
              //} else if (bulann1 == "Ags") {
                //bulanNow = "Agustus";
              //} else if (bulann1 == "Sep") {
                //bulanNow = "September";
              //} else if (bulann1 == "Okt") {
                //bulanNow = "Oktober";
              //} else if (bulann1 == "Nov") {
                //bulanNow = "November";
              //} else {
                //bulanNow = "Desember";
              //}

              double tpkSblm = double.parse(isiindikatorutama[index = 15].nilai);
              double tpkNow = double.parse(isiindikatorutama[index = 16].nilai);

              double rlmSblm = double.parse(isiindikatorutama[index = 17].nilai);
              double rlmNow = double.parse(isiindikatorutama[index = 18].nilai);
              
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 231, 232, 233),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 0, bottom: 0),
                width: screenWidth,
                height: screenHeight,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                      width: screenWidth * 0.40,
                      height: screenHeight * 0.15,
                      child: Material(
                        //color: const Color.fromARGB(255, 232, 240, 248),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 231, 232, 233),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.blueGrey,
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    "Tingkat Penghunian",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    'Kamar/TPK (%)',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: screenWidth * 0.18,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          '$bulanSblm $tahunSblm',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.185,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          '$bulanNow $tahunNow',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.40,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: screenWidth * 0.365,
                                        height: screenHeight * 0.005,
                                        color: const Color.fromARGB(
                                            255, 231, 232, 233),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          " ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.17,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(tpkSblm, 2)}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                    Container(
                                      width: screenWidth * 0.18,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(tpkNow, 2)}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                                //const SizedBox(height:6),

                                //const SizedBox(height:10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                      width: screenWidth * 0.40,
                      height: screenHeight * 0.15,
                      child: Material(
                        //color: const Color.fromARGB(255, 232, 240, 248),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 231, 232, 233),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.blueGrey,
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    "Rata-Rata Lama Me-",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    'nginap/RLM (Malam)',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: screenWidth * 0.18,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          '$bulanSblm $tahunSblm',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.185,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          '$bulanNow $tahunNow',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.40,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: screenWidth * 0.365,
                                        height: screenHeight * 0.005,
                                        color: const Color.fromARGB(
                                            255, 231, 232, 233),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          " ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.17,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(rlmSblm, 2)}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                    Container(
                                      width: screenWidth * 0.18,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(rlmNow, 2)}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                                //const SizedBox(height:6),

                                //const SizedBox(height:10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Tidak Ada Kabar Terbaru");
        } else {
          return Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(136, 159, 176, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            width: screenWidth,
            height: screenHeight,
          );
        }
      },
    );
  }
}
        

// ignore_for_file: camel_case_types