// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan/ketimpangan_bank_dunia.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan/ketimpangan_gini.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan/body_ketimpangangini_kabkot.dart';
import 'package:bps_cilacap/restAPI/repository_inflasi.dart';
import 'package:flutter/material.dart';

class ketimpanganContent extends StatefulWidget {
  const ketimpanganContent({Key? key}) : super(key: key);

  @override
  State<ketimpanganContent> createState() => _ketimpanganContentState();
}

RepositoryInflasi repositoryinflasi = RepositoryInflasi();

class _ketimpanganContentState extends State<ketimpanganContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TINGKAT KETIMPANGAN',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "BEBERAPA KONSEP MENGENAI KETIMPANGAN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Ketimpangan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Ukuran Tingkat Ketimpangan merupakan salah tolak ukur untuk melihat pemerataan tingkat kesejahteraan. Ukuran yang biasa digunakan untuk melihat tingkat ketimpangan atau pemerataan kesejahteraan diantaranya adalah distirbusi pendapatan menurut kriteria Bank Dunia  dan Angka Gini rasio (Koefisien Gini).",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Distribusi Pendapatan Menurut Kriteria Bank Dunia",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Distribusi pendapatan menurut kriteria Bank Dunia membagi kelompok penduduk menjadi 3 kelompok, yaitu Desil ke- 4 yang merupakan 40 persen penduduk berpendapatan rendah, desil ke- 8 merupakan 40 persen penduduk berpendapatan sedang dan desil ke-10 merupakan 20 persen penduduk berpendapatan tinggi.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Untuk menghitung pendapatan penduduk pada desil ke-i dihitung dengan formula sebagai berikut:",
                                  textAlign: TextAlign.justify,
                                ),
                                Image.asset(
                                  './assets/images/modal/ketimpangan_modal.jpeg',
                                  alignment: Alignment.center,
                                  scale: 2,
                                ),
                                const Text(
                                  "   Hasil penghitungan dari formula di atas digunakan untuk menghitung distribusi pendapatan berdasarkan kriteria bank dunia.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          //klasifikasi Kriteria bank dunia
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Kriteria ketimpangan Bank Dunia :",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "Tingkat ketimpangan pendapatan menurut Bank Dunia dapat dikategorikan menjadi tiga, yaitu:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        //fontSize: 13,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 9,
                                    ),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "Ketimpangan Tinggi, jika 40% penduduk berpendapatan rendah menerima lebih kecil dari 12% dari jumlah pendapatan",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 9,
                                    ),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "Ketimpangan Sedang/Moderat/Menengah, jika 40% penduduk berpendapatan rendah menerima 12%-17% dari jumlah pendapatan",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 9,
                                    ),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "Ketimpangan Rendah, jika 40% penduduk berpendapatan rendah menerima lebih dari 17% dari jumlah pendapatan",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10, bottom: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Gini Rasio (Koefisien Gini Ratio)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Ukuran lain yang biasa digunakan untuk mengukur tingkat ketimpangan adalah Angka Gini Rasio atau Koefisien Gini, angka ini berada pada rnage 0 - 1, semakin mendekati '0'  tingkat ketimpangan semakin rendah atau tingkat pemerataan kesejahteraan semakinbaik. Sementara mendekati '1' tingkat ketimpangan semakin tinggi atau tingkat pemerataan kesejahteraan semakini buruk.",
                              textAlign: TextAlign.justify,
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Sementara untuk menghitung Koefisien Gini Rasio dihitung dengan formula sebagai berikut:",
                                  textAlign: TextAlign.justify,
                                ),
                                Image.asset(
                                  './assets/images/modal/gini_modal.jpeg',
                                  alignment: Alignment.center,
                                  scale: 2,
                                ),
                              ],
                            ),
                          ),

                          //Klasifikasi Gini rasio
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Beberapa kriteria ketimpangan berdasarkan Angka Gini Rasio diantaranya adalah sebagai berikut:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "Menurut Oshima, Kriteria Ketimpangan Berdasarkan Gini Rasio sebagai berikut:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "1. Ketimpangan rendah jika Gini Rasio < 0,35",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "2. Ketimpangan sedang jika Gini Rasio 0,35 - 0,50",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "3. Ketimpangan tinggi jika Gini Rasio > 0,50",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
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
                                    height: screenHeight * 0.01,
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
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "Menurut Micahel Todaro (Ekonom Italia), Kriteria Ketimpangan Berdasarkan Gini Rasio sebagai berikut:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "1. Ketimpangan rendah jika Gini Rasio 0,20 - 0,35",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "2. Ketimpangan sedang jika Gini Rasio 0,36 - 0,49",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    width: screenWidth * 0.97,
                                    child: const Text(
                                      "3. Ketimpangan tinggi jika Gini Rasio 0,50 - 0,70",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
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
                          const Divider(),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.info_outlined),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Ketimpangan Pendapatan Penduduk Menurut Kriteria Bank Dunia dan Gini Rasio",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(height: 100, color: Colors.transparent),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(39, 101, 182, 0.882),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const ketimpanganBankDuniaContent(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Tingkat Ketimpangan Kabupaten Cilacap Berdasarkan Kriteria Bank Dunia",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(39, 101, 182, 0.882),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const KetimpanganGini(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Tingkat Ketimpangan Kabupaten Cilacap Berdasarkan Angka Gini Rasio",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(236, 138, 20, 0.882),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const BodyGiniKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Angka Gini Rasio Kabupaten/Kota di Jawa Tengah",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
    : super(
        transitionDuration: const Duration(milliseconds: 200),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) => child,
      );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => SlideTransition(
    position: Tween<Offset>(
      begin: getBeginOffset(),
      end: Offset.zero,
    ).animate(animation),
    child: child,
  );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
