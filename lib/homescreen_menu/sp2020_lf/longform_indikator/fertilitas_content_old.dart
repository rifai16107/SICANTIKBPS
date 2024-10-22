// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_kabkot/series_penganggurankabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_cilacap/perkembangan_pengangguran.dart';
import 'package:bps_cilacap/restAPI/repository_tenaga_kerja_tpt.dart';
import 'package:flutter/material.dart';

class fertilitasContent extends StatefulWidget {
  const fertilitasContent({Key? key}) : super(key: key);

  @override
  State<fertilitasContent> createState() => _fertilitasContentState();
}

RepositoryPengangguran repositorypengangguran = RepositoryPengangguran();

class _fertilitasContentState extends State<fertilitasContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'FERTILITAS',
            style: TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Center(
              child: Icon(
                BackIcons.circle_arrow,
                size: 40,
              ),
            ),
          ),
          actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  constraints: BoxConstraints.tight(
                    Size(screenWidth, screenHeight),
                  ),
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "GLOSARIUM",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "KLASIFIKASI GENERASI PENDUDUK",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Klasifikasi Generasi Menurut Usia Penduduk untuk Long Form SP2020:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Post Gen Z: Lahir tahun 2013 dst, Perkiraan usia saat Long Form SP2020 adalah 0-9 tahun",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Generasi Z: Lahir tahun 1997-2012, Perkiraan usia saat Long Form SP2020 adalah 10-25 tahun",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Milenial: Lahir tahun 1981-1996, Perkiraan usia saat Long Form SP2020 adalah 26-41 tahun",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Generasi X: Lahir tahun 1965-1980, Perkiraan usia saat Long Form SP2020 adalah 42-57 tahun",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Baby Boomer: Lahir tahun 1946-1964, Perkiraan usia saat Long Form SP2020 adalah 58-76 tahun",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Pre-Boomer: Lahir tahun 1945 dan sebelumnya, Perkiraan usia saat Long Form SP2020 adalah 77 tahun ke atas",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "INDIKATOR FERTILITAS",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kelahiran Total / Total Fertility Rate (TFR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Rata-rata jumlah anak yang dilahirkan hidup oleh seorang perempuan selama masa usia suburnya (15-49 tahun)",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kelahiran Kasar / Crude Birth Rate (CBR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Banyaknya kelahiran hidup per 1000 penduduk pada pertengahan tahun.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kelahiran Menurut Kelompok Umur Tertentu / Age Specific Fertility Rate (ASFR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Banyaknya kelahiran selama setahun per 1000 perempuan pada kelompok umur 15-49 tahun",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "INDIKATOR MORTALITAS",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kematian Bayi (AKB) / Infant Mortality Rate (IMR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Banyaknya kematian bayi usia di bawah satu tahun, per 1000 kelahiran hidup pada satu tahun tertentu.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kematian Balita (AKBa) / Under-Five Mortality Rate (U5MR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Jumlah penduduk umur 0-4 tahun (balita) yang meninggal sebelum mencapai umur tepat 5 tahun pada tahun tertentu per 1000 kelahiran hidup.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kematian Anak / Child Mortality Rate (CMR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Jumlah kematian penduduk umur 1-4 tahun pada tahun tertentu per 1.000 kelahiran hidup.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "INDIKATOR MOBILITAS",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Penduduk Berstatus Migran Seumur Hidup Antar kabupaten/ kota:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Banyaknya penduduk di suatu kabupaten/kota yang lahir di kabupaten/kota lain per 100 penduduk.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Proporsi Penduduk Berstatus Migran Risen Antar kabupaten/kota:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Banyaknya penduduk umur lima tahun ke atas di suatu kabupaten/kota yang lima tahun sebelumnya bertempat tinggal di kabupaten/kota lain per 100 penduduk.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "KETAHANAN BANGUNAN",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Bahan bangunan utama atap, dinding, dan lantai rumah terluas yang memenuhi syarat ketahanan bangunan, yaitu:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Bahan bangunan atap berupa adalah beton, genteng, kayu/sirap, atau seng.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Bahan bangunan dinding berupa tembok, plesteran anyaman bambu/kawat, kayu/papan, atau batang kayu.",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Bahan bangunan lantai berupa marmer/granit, keramik, parket/vinil/karpet, ubin/tegel/teraso, kayu/papan, atau semen/bata merah.",
                                textAlign: TextAlign.justify),
                          ),
                        ],
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],
        ),
        body: FutureBuilder(
          future: repositorypengangguran.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isipengangguran = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th5 = isipengangguran[index = 4].created_at[0] +
                      isipengangguran[index = 4].created_at[1] +
                      isipengangguran[index = 4].created_at[2] +
                      isipengangguran[index = 4].created_at[3];
                  double tpak5 = double.parse(isipengangguran[index = 4].tpak);
                  double tpt5 = double.parse(isipengangguran[index = 4].tpt);

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.black,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5,
                                          horizontal: 5,
                                        ),
                                        child: Text(
                                          "Di Kabupaten Cilacap pada Tahun " +
                                              th5 +
                                              " Tingkat Pengangguran Terbuka (TPT) tercatat sebesar  " +
                                              tpt5.toStringAsFixed(2) +
                                              " dengan Tingkat Partisipasi Angkatan Kerja (TPAK) sebesar  " +
                                              tpak5
                                                  .toStringAsFixed(2)
                                                  .toString(),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    color: Colors.transparent,
                                  ),
                                )
                              ],
                            )),
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.grey,
                                        ),
                          ),
                          child: InkWell(
                            onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return const PerkembanganPengangguran();
                                },
                                ));
                            },
                            splashColor: Colors.blueGrey,
                            child: IntrinsicHeight(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(mainAxisSize: MainAxisSize.min, children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_cilacap.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth*0.15,
                                    height: screenHeight*0.12,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  SizedBox(
                                  width: screenWidth*0.73,
                                  child:Text(
                                    'Indikator Fertilitas di Kabupaten Cilacap (Hasil Pendataan Long Form SP2020)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal
                                      ),
                                    textAlign: TextAlign.justify,  
                                  ),
                                  )
                                ]),
                              ),
                            ),
                        )),
                        
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.grey,
                                        ),
                          ),
                          child: InkWell(
                            onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return const SeriesPengangguranKabkot();
                                },
                                ));
                            },
                            
                            splashColor: Colors.blueGrey,
                            child: IntrinsicHeight(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(mainAxisSize: MainAxisSize.min, children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_jateng.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth*0.15,
                                    height: screenHeight*0.12,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  SizedBox(
                                  width: screenWidth*0.73,
                                  child:Text(
                                    'Indikator Fertilitas Kabupaten/Kota di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal
                                      ),
                                      textAlign: TextAlign.justify,
                                  ),
                                  )
                                ]),
                              ),
                            ),
                        )),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
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
        ));
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
      : super(
            transitionDuration: const Duration(milliseconds: 200),
            reverseTransitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(animation),
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
