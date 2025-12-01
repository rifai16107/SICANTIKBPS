import 'package:bps_cilacap/restAPI/repository_longform_mobilitas.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class RisenKabkot extends StatefulWidget {
  const RisenKabkot({Key? key}) : super(key: key);

  @override
  State<RisenKabkot> createState() => _RisenKabkotState();
}

RepositoryLongformMobilitas repositorylongform =
    RepositoryLongformMobilitas();

class _RisenKabkotState extends State<RisenKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Migrasi Risen Kabupaten/Kota',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
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
      ),
      body: FutureBuilder(
          future: repositorylongform.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isilongform = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String kabkota1 = isilongform[index = 0].wilayah;
                  String kabkota2 = isilongform[index = 1].wilayah;
                  String kabkota3 = isilongform[index = 2].wilayah;
                  String kabkota4 = isilongform[index = 3].wilayah;
                  String kabkota5 = isilongform[index = 4].wilayah;
                  String kabkota6 = isilongform[index = 5].wilayah;
                  String kabkota7 = isilongform[index = 6].wilayah;
                  String kabkota8 = isilongform[index = 7].wilayah;
                  String kabkota9 = isilongform[index = 8].wilayah;
                  String kabkota10 = isilongform[index = 9].wilayah;
                  String kabkota11 = isilongform[index = 10].wilayah;
                  String kabkota12 = isilongform[index = 11].wilayah;
                  String kabkota13 = isilongform[index = 12].wilayah;
                  String kabkota14 = isilongform[index = 13].wilayah;
                  String kabkota15 = isilongform[index = 14].wilayah;
                  String kabkota16 = isilongform[index = 15].wilayah;
                  String kabkota17 = isilongform[index = 16].wilayah;
                  String kabkota18 = isilongform[index = 17].wilayah;
                  String kabkota19 = isilongform[index = 18].wilayah;
                  String kabkota20 = isilongform[index = 19].wilayah;
                  String kabkota21 = isilongform[index = 20].wilayah;
                  String kabkota22 = isilongform[index = 21].wilayah;
                  String kabkota23 = isilongform[index = 22].wilayah;
                  String kabkota24 = isilongform[index = 23].wilayah;
                  String kabkota25 = isilongform[index = 24].wilayah;
                  String kabkota26 = isilongform[index = 25].wilayah;
                  String kabkota27 = isilongform[index = 26].wilayah;
                  String kabkota28 = isilongform[index = 27].wilayah;
                  String kabkota29 = isilongform[index = 28].wilayah;
                  String kabkota30 = isilongform[index = 29].wilayah;
                  String kabkota31 = isilongform[index = 30].wilayah;
                  String kabkota32 = isilongform[index = 31].wilayah;
                  String kabkota33 = isilongform[index = 32].wilayah;
                  String kabkota34 = isilongform[index = 33].wilayah;
                  String kabkota35 = isilongform[index = 34].wilayah;
                  String kabkota36 = isilongform[index = 35].wilayah;

                  double risenPostgenz1 =
                      double.parse(isilongform[index = 0].risen_postgenz);
                  double risenPostgenz2 =
                      double.parse(isilongform[index = 1].risen_postgenz);
                  double risenPostgenz3 =
                      double.parse(isilongform[index = 2].risen_postgenz);
                  double risenPostgenz4 =
                      double.parse(isilongform[index = 3].risen_postgenz);
                  double risenPostgenz5 =
                      double.parse(isilongform[index = 4].risen_postgenz);
                  double risenPostgenz6 =
                      double.parse(isilongform[index = 5].risen_postgenz);
                  double risenPostgenz7 =
                      double.parse(isilongform[index = 6].risen_postgenz);
                  double risenPostgenz8 =
                      double.parse(isilongform[index = 7].risen_postgenz);
                  double risenPostgenz9 =
                      double.parse(isilongform[index = 8].risen_postgenz);
                  double risenPostgenz10 =
                      double.parse(isilongform[index = 9].risen_postgenz);
                  double risenPostgenz11 =
                      double.parse(isilongform[index = 10].risen_postgenz);
                  double risenPostgenz12 =
                      double.parse(isilongform[index = 11].risen_postgenz);
                  double risenPostgenz13 =
                      double.parse(isilongform[index = 12].risen_postgenz);
                  double risenPostgenz14 =
                      double.parse(isilongform[index = 13].risen_postgenz);
                  double risenPostgenz15 =
                      double.parse(isilongform[index = 14].risen_postgenz);
                  double risenPostgenz16 =
                      double.parse(isilongform[index = 15].risen_postgenz);
                  double risenPostgenz17 =
                      double.parse(isilongform[index = 16].risen_postgenz);
                  double risenPostgenz18 =
                      double.parse(isilongform[index = 17].risen_postgenz);
                  double risenPostgenz19 =
                      double.parse(isilongform[index = 17].risen_postgenz);
                  double risenPostgenz20 =
                      double.parse(isilongform[index = 18].risen_postgenz);
                  double risenPostgenz21 =
                      double.parse(isilongform[index = 19].risen_postgenz);
                  double risenPostgenz22 =
                      double.parse(isilongform[index = 20].risen_postgenz);
                  double risenPostgenz23 =
                      double.parse(isilongform[index = 21].risen_postgenz);
                  double risenPostgenz24 =
                      double.parse(isilongform[index = 23].risen_postgenz);
                  double risenPostgenz25 =
                      double.parse(isilongform[index = 24].risen_postgenz);
                  double risenPostgenz26 =
                      double.parse(isilongform[index = 25].risen_postgenz);
                  double risenPostgenz27 =
                      double.parse(isilongform[index = 26].risen_postgenz);
                  double risenPostgenz28 =
                      double.parse(isilongform[index = 27].risen_postgenz);
                  double risenPostgenz29 =
                      double.parse(isilongform[index = 28].risen_postgenz);
                  double risenPostgenz30 =
                      double.parse(isilongform[index = 29].risen_postgenz);
                  double risenPostgenz31 =
                      double.parse(isilongform[index = 30].risen_postgenz);
                  double risenPostgenz32 =
                      double.parse(isilongform[index = 31].risen_postgenz);
                  double risenPostgenz33 =
                      double.parse(isilongform[index = 32].risen_postgenz);
                  double risenPostgenz34 =
                      double.parse(isilongform[index = 33].risen_postgenz);
                  double risenPostgenz35 =
                      double.parse(isilongform[index = 34].risen_postgenz);
                  double risenPostgenz36 =
                      double.parse(isilongform[index = 35].risen_postgenz);

                  double risenGenz1 =
                      double.parse(isilongform[index = 0].risen_genz);
                  double risenGenz2 =
                      double.parse(isilongform[index = 1].risen_genz);
                  double risenGenz3 =
                      double.parse(isilongform[index = 2].risen_genz);
                  double risenGenz4 =
                      double.parse(isilongform[index = 3].risen_genz);
                  double risenGenz5 =
                      double.parse(isilongform[index = 4].risen_genz);
                  double risenGenz6 =
                      double.parse(isilongform[index = 5].risen_genz);
                  double risenGenz7 =
                      double.parse(isilongform[index = 6].risen_genz);
                  double risenGenz8 =
                      double.parse(isilongform[index = 7].risen_genz);
                  double risenGenz9 =
                      double.parse(isilongform[index = 8].risen_genz);
                  double risenGenz10 =
                      double.parse(isilongform[index = 9].risen_genz);
                  double risenGenz11 =
                      double.parse(isilongform[index = 10].risen_genz);
                  double risenGenz12 =
                      double.parse(isilongform[index = 11].risen_genz);
                  double risenGenz13 =
                      double.parse(isilongform[index = 12].risen_genz);
                  double risenGenz14 =
                      double.parse(isilongform[index = 13].risen_genz);
                  double risenGenz15 =
                      double.parse(isilongform[index = 14].risen_genz);
                  double risenGenz16 =
                      double.parse(isilongform[index = 15].risen_genz);
                  double risenGenz17 =
                      double.parse(isilongform[index = 16].risen_genz);
                  double risenGenz18 =
                      double.parse(isilongform[index = 17].risen_genz);
                  double risenGenz19 =
                      double.parse(isilongform[index = 18].risen_genz);
                  double risenGenz20 =
                      double.parse(isilongform[index = 19].risen_genz);
                  double risenGenz21 =
                      double.parse(isilongform[index = 20].risen_genz);
                  double risenGenz22 =
                      double.parse(isilongform[index = 21].risen_genz);
                  double risenGenz23 =
                      double.parse(isilongform[index = 22].risen_genz);
                  double risenGenz24 =
                      double.parse(isilongform[index = 23].risen_genz);
                  double risenGenz25 =
                      double.parse(isilongform[index = 24].risen_genz);
                  double risenGenz26 =
                      double.parse(isilongform[index = 25].risen_genz);
                  double risenGenz27 =
                      double.parse(isilongform[index = 26].risen_genz);
                  double risenGenz28 =
                      double.parse(isilongform[index = 27].risen_genz);
                  double risenGenz29 =
                      double.parse(isilongform[index = 28].risen_genz);
                  double risenGenz30 =
                      double.parse(isilongform[index = 29].risen_genz);
                  double risenGenz31 =
                      double.parse(isilongform[index = 30].risen_genz);
                  double risenGenz32 =
                      double.parse(isilongform[index = 31].risen_genz);
                  double risenGenz33 =
                      double.parse(isilongform[index = 32].risen_genz);
                  double risenGenz34 =
                      double.parse(isilongform[index = 33].risen_genz);
                  double risenGenz35 =
                      double.parse(isilongform[index = 34].risen_genz);
                  double risenGenz36 =
                      double.parse(isilongform[index = 35].risen_genz);

                  double risenMilenial1 =
                      double.parse(isilongform[index = 0].risen_milenial);
                  double risenMilenial2 =
                      double.parse(isilongform[index = 1].risen_milenial);
                  double risenMilenial3 =
                      double.parse(isilongform[index = 2].risen_milenial);
                  double risenMilenial4 =
                      double.parse(isilongform[index = 3].risen_milenial);
                  double risenMilenial5 =
                      double.parse(isilongform[index = 4].risen_milenial);
                  double risenMilenial6 =
                      double.parse(isilongform[index = 5].risen_milenial);
                  double risenMilenial7 =
                      double.parse(isilongform[index = 6].risen_milenial);
                  double risenMilenial8 =
                      double.parse(isilongform[index = 7].risen_milenial);
                  double risenMilenial9 =
                      double.parse(isilongform[index = 8].risen_milenial);
                  double risenMilenial10 =
                      double.parse(isilongform[index = 9].risen_milenial);
                  double risenMilenial11 =
                      double.parse(isilongform[index = 10].risen_milenial);
                  double risenMilenial12 =
                      double.parse(isilongform[index = 11].risen_milenial);
                  double risenMilenial13 =
                      double.parse(isilongform[index = 12].risen_milenial);
                  double risenMilenial14 =
                      double.parse(isilongform[index = 13].risen_milenial);
                  double risenMilenial15 =
                      double.parse(isilongform[index = 14].risen_milenial);
                  double risenMilenial16 =
                      double.parse(isilongform[index = 15].risen_milenial);
                  double risenMilenial17 =
                      double.parse(isilongform[index = 16].risen_milenial);
                  double risenMilenial18 =
                      double.parse(isilongform[index = 17].risen_milenial);
                  double risenMilenial19 =
                      double.parse(isilongform[index = 18].risen_milenial);
                  double risenMilenial20 =
                      double.parse(isilongform[index = 19].risen_milenial);
                  double risenMilenial21 =
                      double.parse(isilongform[index = 20].risen_milenial);
                  double risenMilenial22 =
                      double.parse(isilongform[index = 21].risen_milenial);
                  double risenMilenial23 =
                      double.parse(isilongform[index = 22].risen_milenial);
                  double risenMilenial24 =
                      double.parse(isilongform[index = 23].risen_milenial);
                  double risenMilenial25 =
                      double.parse(isilongform[index = 24].risen_milenial);
                  double risenMilenial26 =
                      double.parse(isilongform[index = 25].risen_milenial);
                  double risenMilenial27 =
                      double.parse(isilongform[index = 26].risen_milenial);
                  double risenMilenial28 =
                      double.parse(isilongform[index = 27].risen_milenial);
                  double risenMilenial29 =
                      double.parse(isilongform[index = 28].risen_milenial);
                  double risenMilenial30 =
                      double.parse(isilongform[index = 29].risen_milenial);
                  double risenMilenial31 =
                      double.parse(isilongform[index = 30].risen_milenial);
                  double risenMilenial32 =
                      double.parse(isilongform[index = 31].risen_milenial);
                  double risenMilenial33 =
                      double.parse(isilongform[index = 32].risen_milenial);
                  double risenMilenial34 =
                      double.parse(isilongform[index = 33].risen_milenial);
                  double risenMilenial35 =
                      double.parse(isilongform[index = 34].risen_milenial);
                  double risenMilenial36 =
                      double.parse(isilongform[index = 35].risen_milenial);

                  double risenGenx1 =
                      double.parse(isilongform[index = 0].risen_genx);
                  double risenGenx2 =
                      double.parse(isilongform[index = 1].risen_genx);
                  double risenGenx3 =
                      double.parse(isilongform[index = 2].risen_genx);
                  double risenGenx4 =
                      double.parse(isilongform[index = 3].risen_genx);
                  double risenGenx5 =
                      double.parse(isilongform[index = 4].risen_genx);
                  double risenGenx6 =
                      double.parse(isilongform[index = 5].risen_genx);
                  double risenGenx7 =
                      double.parse(isilongform[index = 6].risen_genx);
                  double risenGenx8 =
                      double.parse(isilongform[index = 7].risen_genx);
                  double risenGenx9 =
                      double.parse(isilongform[index = 8].risen_genx);
                  double risenGenx10 =
                      double.parse(isilongform[index = 9].risen_genx);
                  double risenGenx11 =
                      double.parse(isilongform[index = 10].risen_genx);
                  double risenGenx12 =
                      double.parse(isilongform[index = 11].risen_genx);
                  double risenGenx13 =
                      double.parse(isilongform[index = 12].risen_genx);
                  double risenGenx14 =
                      double.parse(isilongform[index = 13].risen_genx);
                  double risenGenx15 =
                      double.parse(isilongform[index = 14].risen_genx);
                  double risenGenx16 =
                      double.parse(isilongform[index = 15].risen_genx);
                  double risenGenx17 =
                      double.parse(isilongform[index = 16].risen_genx);
                  double risenGenx18 =
                      double.parse(isilongform[index = 17].risen_genx);
                  double risenGenx19 =
                      double.parse(isilongform[index = 18].risen_genx);
                  double risenGenx20 =
                      double.parse(isilongform[index = 19].risen_genx);
                  double risenGenx21 =
                      double.parse(isilongform[index = 20].risen_genx);
                  double risenGenx22 =
                      double.parse(isilongform[index = 21].risen_genx);
                  double risenGenx23 =
                      double.parse(isilongform[index = 22].risen_genx);
                  double risenGenx24 =
                      double.parse(isilongform[index = 23].risen_genx);
                  double risenGenx25 =
                      double.parse(isilongform[index = 24].risen_genx);
                  double risenGenx26 =
                      double.parse(isilongform[index = 25].risen_genx);
                  double risenGenx27 =
                      double.parse(isilongform[index = 26].risen_genx);
                  double risenGenx28 =
                      double.parse(isilongform[index = 27].risen_genx);
                  double risenGenx29 =
                      double.parse(isilongform[index = 28].risen_genx);
                  double risenGenx30 =
                      double.parse(isilongform[index = 29].risen_genx);
                  double risenGenx31 =
                      double.parse(isilongform[index = 30].risen_genx);
                  double risenGenx32 =
                      double.parse(isilongform[index = 31].risen_genx);
                  double risenGenx33 =
                      double.parse(isilongform[index = 32].risen_genx);
                  double risenGenx34 =
                      double.parse(isilongform[index = 33].risen_genx);
                  double risenGenx35 =
                      double.parse(isilongform[index = 34].risen_genx);
                  double risenGenx36 =
                      double.parse(isilongform[index = 35].risen_genx);

                  double risenBoomer1 =
                      double.parse(isilongform[index = 0].risen_boomer);
                  double risenBoomer2 =
                      double.parse(isilongform[index = 1].risen_boomer);
                  double risenBoomer3 =
                      double.parse(isilongform[index = 2].risen_boomer);
                  double risenBoomer4 =
                      double.parse(isilongform[index = 3].risen_boomer);
                  double risenBoomer5 =
                      double.parse(isilongform[index = 4].risen_boomer);
                  double risenBoomer6 =
                      double.parse(isilongform[index = 5].risen_boomer);
                  double risenBoomer7 =
                      double.parse(isilongform[index = 6].risen_boomer);
                  double risenBoomer8 =
                      double.parse(isilongform[index = 7].risen_boomer);
                  double risenBoomer9 =
                      double.parse(isilongform[index = 8].risen_boomer);
                  double risenBoomer10 =
                      double.parse(isilongform[index = 9].risen_boomer);
                  double risenBoomer11 =
                      double.parse(isilongform[index = 10].risen_boomer);
                  double risenBoomer12 =
                      double.parse(isilongform[index = 11].risen_boomer);
                  double risenBoomer13 =
                      double.parse(isilongform[index = 12].risen_boomer);
                  double risenBoomer14 =
                      double.parse(isilongform[index = 13].risen_boomer);
                  double risenBoomer15 =
                      double.parse(isilongform[index = 14].risen_boomer);
                  double risenBoomer16 =
                      double.parse(isilongform[index = 15].risen_boomer);
                  double risenBoomer17 =
                      double.parse(isilongform[index = 16].risen_boomer);
                  double risenBoomer18 =
                      double.parse(isilongform[index = 17].risen_boomer);
                  double risenBoomer19 =
                      double.parse(isilongform[index = 18].risen_boomer);
                  double risenBoomer20 =
                      double.parse(isilongform[index = 19].risen_boomer);
                  double risenBoomer21 =
                      double.parse(isilongform[index = 20].risen_boomer);
                  double risenBoomer22 =
                      double.parse(isilongform[index = 21].risen_boomer);
                  double risenBoomer23 =
                      double.parse(isilongform[index = 22].risen_boomer);
                  double risenBoomer24 =
                      double.parse(isilongform[index = 23].risen_boomer);
                  double risenBoomer25 =
                      double.parse(isilongform[index = 24].risen_boomer);
                  double risenBoomer26 =
                      double.parse(isilongform[index = 25].risen_boomer);
                  double risenBoomer27 =
                      double.parse(isilongform[index = 26].risen_boomer);
                  double risenBoomer28 =
                      double.parse(isilongform[index = 27].risen_boomer);
                  double risenBoomer29 =
                      double.parse(isilongform[index = 28].risen_boomer);
                  double risenBoomer30 =
                      double.parse(isilongform[index = 29].risen_boomer);
                  double risenBoomer31 =
                      double.parse(isilongform[index = 30].risen_boomer);
                  double risenBoomer32 =
                      double.parse(isilongform[index = 31].risen_boomer);
                  double risenBoomer33 =
                      double.parse(isilongform[index = 32].risen_boomer);
                  double risenBoomer34 =
                      double.parse(isilongform[index = 33].risen_boomer);
                  double risenBoomer35 =
                      double.parse(isilongform[index = 34].risen_boomer);
                  double risenBoomer36 =
                      double.parse(isilongform[index = 35].risen_boomer);

                  
                  return Scaffold(
                      body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                          width: screenWidth * 1.0,
                          height: screenHeight * 0.12,
                          padding: const EdgeInsets.only(
                            left: 2,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          child: const Text(
                            "Migrasi Risen Kabupaten/Kota Di Jawa Tengah (Menurut Generasi), Hasil Pendataan Long Form SP2020 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.26,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    right: 0, top: 10, bottom: 0),
                                child: const Text(
                                  "Kabupaten/",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.14,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 0),
                                child: const Text(
                                  "Post  ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.13,
                              child: Container(
                                height: screenHeight * 0.07,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 0),
                                child: const Text(
                                  "Gen. Z",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.14,
                              child: Container(
                                height: screenHeight * 0.07,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 0),
                                child: const Text(
                                  "Milenial",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.13,
                              child: Container(
                                height: screenHeight * 0.07,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 0),
                                child: const Text(
                                  "Gen. X",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.20,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 0),
                                child: const Text(
                                  "Pre Boomer",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.26,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    right: 0, top: 0, bottom: 0),
                                child: const Text(
                                  "Kota",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.14,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 0, bottom: 0),
                                child: const Text(
                                  "Gen Z",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.13,
                              child: Container(
                                height: screenHeight * 0.01,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top:0, bottom: 0),
                                child: const Text(
                                  "  ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.14,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 0, bottom: 2),
                                child: const Text(
                                  "  ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.13,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 0, bottom: 2),
                                child: const Text(
                                  "  ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.20,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 0, bottom: 2),
                                child: const Text(
                                  "& Boomer",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),

                      //),
                      Expanded(
                        //flex:16,
                        child: SingleChildScrollView(
                          //child: Flexible(
                          //flex: 20,
                          //fit: FlexFit.tight,
                          //child: SizedBox(
                          //width: screenWidth,
                          //height: screenHeight,
                          child: Column(
                            children: [
                              // 1 Cilacap
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //2 Banyumas
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //3 Purbalingga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //4 Banjarnegara

                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                     width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //5 Kebumen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                    width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //6 Purworejo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              // 7 Wonosobo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //8 Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //9 Boyolali
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //10 Klaten
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //11 Sukoharjo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //12 Wonogiri
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //13 Karanganyar
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //14 Sragen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                               color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //15 Grobogan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //16 Blora
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //17 Rembang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //18 Pati
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //19 Kudus
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //20 Jepara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //21 Demak
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //23 Temanggung
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //24 Kendal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //25 Batang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //26 Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //27 Pemalang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //28 Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //29 Brebes
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              // 30 Kota Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //31 Kota Surakarta
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //32 Kota Salatiga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //33 Kota Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //34 Kota Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //35 Kota Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              //Total
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.045,
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.30,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 2,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota36,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              color:Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenPostgenz36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color:Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenz36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color:Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenMilenial36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color:Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.13,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 10,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenGenx36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color:Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(risenBoomer36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color:Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 4,
                                  bottom: 5,
                                ),
                                child: const Text(
                                  " Sumber Data : Pendataan Long Form SP 2020 (dilaksanakan pada tahun 2022)",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Keterangan:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Klasifikasi Generasi Menurut Usia Penduduk untuk Long Form SP2020:",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Post Gen Z: Lahir tahun 2013 dst, Perkiraan usia saat Long Form SP2020 adalah 0-9 tahun",
                                 style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Generasi Z: Lahir tahun 1997-2012, Perkiraan usia saat Long Form SP2020 adalah 10-25 tahun",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Milenial: Lahir tahun 1981-1996, Perkiraan usia saat Long Form SP2020 adalah 26-41 tahun",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Generasi X: Lahir tahun 1965-1980, Perkiraan usia saat Long Form SP2020 adalah 42-57 tahun",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Baby Boomer: Lahir tahun 1946-1964, Perkiraan usia saat Long Form SP2020 adalah 58-76 tahun",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Pre-Boomer: Lahir tahun 1945 dan sebelumnya, Perkiraan usia saat Long Form SP2020 adalah 77 tahun ke atas",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                        Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Indikator Mobilitas/Migrasi",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Penduduk Berstatus Migran Seumur Hidup Antar kabupaten/ kota:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize:12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Banyaknya penduduk di suatu kabupaten/kota yang lahir di kabupaten/kota lain per 100 penduduk.",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Proporsi Penduduk Berstatus Migran Risen Antar kabupaten/kota:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize:12),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Banyaknya penduduk umur lima tahun ke atas di suatu kabupaten/kota yang lima tahun sebelumnya bertempat tinggal di kabupaten/kota lain per 100 penduduk.",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "Untuk angka migrasi seumur hidup dan migrasi risen Provinsi Jawa Tengah yang dimaksud adalah tempat lahir dan tempat tinggal sebelumnya (tempat tinggal 5 tahun yg lalu) berada di luar Provinsi Jawa Tengah",
                                style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify),
                          ),

                          ],
                         ),  
                         ],
                          ),
                          
                        ),
                      ),
                    ],
                  ));
                },
              );
            }
            if (snapshot.hasError) {
              return const Text('Database Error');
            } else {
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 3));
            }
          }),
    );
  }
}
