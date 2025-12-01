import 'package:bps_cilacap/restAPI/repository_longform_mobilitas.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class LifetimeKabkot extends StatefulWidget {
  const LifetimeKabkot({Key? key}) : super(key: key);

  @override
  State<LifetimeKabkot> createState() => _LifetimeKabkotState();
}

RepositoryLongformMobilitas repositorylongform =
    RepositoryLongformMobilitas();

class _LifetimeKabkotState extends State<LifetimeKabkot> {
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
          'Migrasi Seumur Hidup Kabupaten/Kota',
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

                  double lifetimePostgenz1 =
                      double.parse(isilongform[index = 0].lifetime_postgenz);
                  double lifetimePostgenz2 =
                      double.parse(isilongform[index = 1].lifetime_postgenz);
                  double lifetimePostgenz3 =
                      double.parse(isilongform[index = 2].lifetime_postgenz);
                  double lifetimePostgenz4 =
                      double.parse(isilongform[index = 3].lifetime_postgenz);
                  double lifetimePostgenz5 =
                      double.parse(isilongform[index = 4].lifetime_postgenz);
                  double lifetimePostgenz6 =
                      double.parse(isilongform[index = 5].lifetime_postgenz);
                  double lifetimePostgenz7 =
                      double.parse(isilongform[index = 6].lifetime_postgenz);
                  double lifetimePostgenz8 =
                      double.parse(isilongform[index = 7].lifetime_postgenz);
                  double lifetimePostgenz9 =
                      double.parse(isilongform[index = 8].lifetime_postgenz);
                  double lifetimePostgenz10 =
                      double.parse(isilongform[index = 9].lifetime_postgenz);
                  double lifetimePostgenz11 =
                      double.parse(isilongform[index = 10].lifetime_postgenz);
                  double lifetimePostgenz12 =
                      double.parse(isilongform[index = 11].lifetime_postgenz);
                  double lifetimePostgenz13 =
                      double.parse(isilongform[index = 12].lifetime_postgenz);
                  double lifetimePostgenz14 =
                      double.parse(isilongform[index = 13].lifetime_postgenz);
                  double lifetimePostgenz15 =
                      double.parse(isilongform[index = 14].lifetime_postgenz);
                  double lifetimePostgenz16 =
                      double.parse(isilongform[index = 15].lifetime_postgenz);
                  double lifetimePostgenz17 =
                      double.parse(isilongform[index = 16].lifetime_postgenz);
                  double lifetimePostgenz18 =
                      double.parse(isilongform[index = 17].lifetime_postgenz);
                  double lifetimePostgenz19 =
                      double.parse(isilongform[index = 17].lifetime_postgenz);
                  double lifetimePostgenz20 =
                      double.parse(isilongform[index = 18].lifetime_postgenz);
                  double lifetimePostgenz21 =
                      double.parse(isilongform[index = 19].lifetime_postgenz);
                  double lifetimePostgenz22 =
                      double.parse(isilongform[index = 20].lifetime_postgenz);
                  double lifetimePostgenz23 =
                      double.parse(isilongform[index = 21].lifetime_postgenz);
                  double lifetimePostgenz24 =
                      double.parse(isilongform[index = 23].lifetime_postgenz);
                  double lifetimePostgenz25 =
                      double.parse(isilongform[index = 24].lifetime_postgenz);
                  double lifetimePostgenz26 =
                      double.parse(isilongform[index = 25].lifetime_postgenz);
                  double lifetimePostgenz27 =
                      double.parse(isilongform[index = 26].lifetime_postgenz);
                  double lifetimePostgenz28 =
                      double.parse(isilongform[index = 27].lifetime_postgenz);
                  double lifetimePostgenz29 =
                      double.parse(isilongform[index = 28].lifetime_postgenz);
                  double lifetimePostgenz30 =
                      double.parse(isilongform[index = 29].lifetime_postgenz);
                  double lifetimePostgenz31 =
                      double.parse(isilongform[index = 30].lifetime_postgenz);
                  double lifetimePostgenz32 =
                      double.parse(isilongform[index = 31].lifetime_postgenz);
                  double lifetimePostgenz33 =
                      double.parse(isilongform[index = 32].lifetime_postgenz);
                  double lifetimePostgenz34 =
                      double.parse(isilongform[index = 33].lifetime_postgenz);
                  double lifetimePostgenz35 =
                      double.parse(isilongform[index = 34].lifetime_postgenz);
                  double lifetimePostgenz36 =
                      double.parse(isilongform[index = 35].lifetime_postgenz);

                  double lifetimeGenz1 =
                      double.parse(isilongform[index = 0].lifetime_genz);
                  double lifetimeGenz2 =
                      double.parse(isilongform[index = 1].lifetime_genz);
                  double lifetimeGenz3 =
                      double.parse(isilongform[index = 2].lifetime_genz);
                  double lifetimeGenz4 =
                      double.parse(isilongform[index = 3].lifetime_genz);
                  double lifetimeGenz5 =
                      double.parse(isilongform[index = 4].lifetime_genz);
                  double lifetimeGenz6 =
                      double.parse(isilongform[index = 5].lifetime_genz);
                  double lifetimeGenz7 =
                      double.parse(isilongform[index = 6].lifetime_genz);
                  double lifetimeGenz8 =
                      double.parse(isilongform[index = 7].lifetime_genz);
                  double lifetimeGenz9 =
                      double.parse(isilongform[index = 8].lifetime_genz);
                  double lifetimeGenz10 =
                      double.parse(isilongform[index = 9].lifetime_genz);
                  double lifetimeGenz11 =
                      double.parse(isilongform[index = 10].lifetime_genz);
                  double lifetimeGenz12 =
                      double.parse(isilongform[index = 11].lifetime_genz);
                  double lifetimeGenz13 =
                      double.parse(isilongform[index = 12].lifetime_genz);
                  double lifetimeGenz14 =
                      double.parse(isilongform[index = 13].lifetime_genz);
                  double lifetimeGenz15 =
                      double.parse(isilongform[index = 14].lifetime_genz);
                  double lifetimeGenz16 =
                      double.parse(isilongform[index = 15].lifetime_genz);
                  double lifetimeGenz17 =
                      double.parse(isilongform[index = 16].lifetime_genz);
                  double lifetimeGenz18 =
                      double.parse(isilongform[index = 17].lifetime_genz);
                  double lifetimeGenz19 =
                      double.parse(isilongform[index = 18].lifetime_genz);
                  double lifetimeGenz20 =
                      double.parse(isilongform[index = 19].lifetime_genz);
                  double lifetimeGenz21 =
                      double.parse(isilongform[index = 20].lifetime_genz);
                  double lifetimeGenz22 =
                      double.parse(isilongform[index = 21].lifetime_genz);
                  double lifetimeGenz23 =
                      double.parse(isilongform[index = 22].lifetime_genz);
                  double lifetimeGenz24 =
                      double.parse(isilongform[index = 23].lifetime_genz);
                  double lifetimeGenz25 =
                      double.parse(isilongform[index = 24].lifetime_genz);
                  double lifetimeGenz26 =
                      double.parse(isilongform[index = 25].lifetime_genz);
                  double lifetimeGenz27 =
                      double.parse(isilongform[index = 26].lifetime_genz);
                  double lifetimeGenz28 =
                      double.parse(isilongform[index = 27].lifetime_genz);
                  double lifetimeGenz29 =
                      double.parse(isilongform[index = 28].lifetime_genz);
                  double lifetimeGenz30 =
                      double.parse(isilongform[index = 29].lifetime_genz);
                  double lifetimeGenz31 =
                      double.parse(isilongform[index = 30].lifetime_genz);
                  double lifetimeGenz32 =
                      double.parse(isilongform[index = 31].lifetime_genz);
                  double lifetimeGenz33 =
                      double.parse(isilongform[index = 32].lifetime_genz);
                  double lifetimeGenz34 =
                      double.parse(isilongform[index = 33].lifetime_genz);
                  double lifetimeGenz35 =
                      double.parse(isilongform[index = 34].lifetime_genz);
                  double lifetimeGenz36 =
                      double.parse(isilongform[index = 35].lifetime_genz);

                  double lifetimeMilenial1 =
                      double.parse(isilongform[index = 0].lifetime_milenial);
                  double lifetimeMilenial2 =
                      double.parse(isilongform[index = 1].lifetime_milenial);
                  double lifetimeMilenial3 =
                      double.parse(isilongform[index = 2].lifetime_milenial);
                  double lifetimeMilenial4 =
                      double.parse(isilongform[index = 3].lifetime_milenial);
                  double lifetimeMilenial5 =
                      double.parse(isilongform[index = 4].lifetime_milenial);
                  double lifetimeMilenial6 =
                      double.parse(isilongform[index = 5].lifetime_milenial);
                  double lifetimeMilenial7 =
                      double.parse(isilongform[index = 6].lifetime_milenial);
                  double lifetimeMilenial8 =
                      double.parse(isilongform[index = 7].lifetime_milenial);
                  double lifetimeMilenial9 =
                      double.parse(isilongform[index = 8].lifetime_milenial);
                  double lifetimeMilenial10 =
                      double.parse(isilongform[index = 9].lifetime_milenial);
                  double lifetimeMilenial11 =
                      double.parse(isilongform[index = 10].lifetime_milenial);
                  double lifetimeMilenial12 =
                      double.parse(isilongform[index = 11].lifetime_milenial);
                  double lifetimeMilenial13 =
                      double.parse(isilongform[index = 12].lifetime_milenial);
                  double lifetimeMilenial14 =
                      double.parse(isilongform[index = 13].lifetime_milenial);
                  double lifetimeMilenial15 =
                      double.parse(isilongform[index = 14].lifetime_milenial);
                  double lifetimeMilenial16 =
                      double.parse(isilongform[index = 15].lifetime_milenial);
                  double lifetimeMilenial17 =
                      double.parse(isilongform[index = 16].lifetime_milenial);
                  double lifetimeMilenial18 =
                      double.parse(isilongform[index = 17].lifetime_milenial);
                  double lifetimeMilenial19 =
                      double.parse(isilongform[index = 18].lifetime_milenial);
                  double lifetimeMilenial20 =
                      double.parse(isilongform[index = 19].lifetime_milenial);
                  double lifetimeMilenial21 =
                      double.parse(isilongform[index = 20].lifetime_milenial);
                  double lifetimeMilenial22 =
                      double.parse(isilongform[index = 21].lifetime_milenial);
                  double lifetimeMilenial23 =
                      double.parse(isilongform[index = 22].lifetime_milenial);
                  double lifetimeMilenial24 =
                      double.parse(isilongform[index = 23].lifetime_milenial);
                  double lifetimeMilenial25 =
                      double.parse(isilongform[index = 24].lifetime_milenial);
                  double lifetimeMilenial26 =
                      double.parse(isilongform[index = 25].lifetime_milenial);
                  double lifetimeMilenial27 =
                      double.parse(isilongform[index = 26].lifetime_milenial);
                  double lifetimeMilenial28 =
                      double.parse(isilongform[index = 27].lifetime_milenial);
                  double lifetimeMilenial29 =
                      double.parse(isilongform[index = 28].lifetime_milenial);
                  double lifetimeMilenial30 =
                      double.parse(isilongform[index = 29].lifetime_milenial);
                  double lifetimeMilenial31 =
                      double.parse(isilongform[index = 30].lifetime_milenial);
                  double lifetimeMilenial32 =
                      double.parse(isilongform[index = 31].lifetime_milenial);
                  double lifetimeMilenial33 =
                      double.parse(isilongform[index = 32].lifetime_milenial);
                  double lifetimeMilenial34 =
                      double.parse(isilongform[index = 33].lifetime_milenial);
                  double lifetimeMilenial35 =
                      double.parse(isilongform[index = 34].lifetime_milenial);
                  double lifetimeMilenial36 =
                      double.parse(isilongform[index = 35].lifetime_milenial);

                  double lifetimeGenx1 =
                      double.parse(isilongform[index = 0].lifetime_genx);
                  double lifetimeGenx2 =
                      double.parse(isilongform[index = 1].lifetime_genx);
                  double lifetimeGenx3 =
                      double.parse(isilongform[index = 2].lifetime_genx);
                  double lifetimeGenx4 =
                      double.parse(isilongform[index = 3].lifetime_genx);
                  double lifetimeGenx5 =
                      double.parse(isilongform[index = 4].lifetime_genx);
                  double lifetimeGenx6 =
                      double.parse(isilongform[index = 5].lifetime_genx);
                  double lifetimeGenx7 =
                      double.parse(isilongform[index = 6].lifetime_genx);
                  double lifetimeGenx8 =
                      double.parse(isilongform[index = 7].lifetime_genx);
                  double lifetimeGenx9 =
                      double.parse(isilongform[index = 8].lifetime_genx);
                  double lifetimeGenx10 =
                      double.parse(isilongform[index = 9].lifetime_genx);
                  double lifetimeGenx11 =
                      double.parse(isilongform[index = 10].lifetime_genx);
                  double lifetimeGenx12 =
                      double.parse(isilongform[index = 11].lifetime_genx);
                  double lifetimeGenx13 =
                      double.parse(isilongform[index = 12].lifetime_genx);
                  double lifetimeGenx14 =
                      double.parse(isilongform[index = 13].lifetime_genx);
                  double lifetimeGenx15 =
                      double.parse(isilongform[index = 14].lifetime_genx);
                  double lifetimeGenx16 =
                      double.parse(isilongform[index = 15].lifetime_genx);
                  double lifetimeGenx17 =
                      double.parse(isilongform[index = 16].lifetime_genx);
                  double lifetimeGenx18 =
                      double.parse(isilongform[index = 17].lifetime_genx);
                  double lifetimeGenx19 =
                      double.parse(isilongform[index = 18].lifetime_genx);
                  double lifetimeGenx20 =
                      double.parse(isilongform[index = 19].lifetime_genx);
                  double lifetimeGenx21 =
                      double.parse(isilongform[index = 20].lifetime_genx);
                  double lifetimeGenx22 =
                      double.parse(isilongform[index = 21].lifetime_genx);
                  double lifetimeGenx23 =
                      double.parse(isilongform[index = 22].lifetime_genx);
                  double lifetimeGenx24 =
                      double.parse(isilongform[index = 23].lifetime_genx);
                  double lifetimeGenx25 =
                      double.parse(isilongform[index = 24].lifetime_genx);
                  double lifetimeGenx26 =
                      double.parse(isilongform[index = 25].lifetime_genx);
                  double lifetimeGenx27 =
                      double.parse(isilongform[index = 26].lifetime_genx);
                  double lifetimeGenx28 =
                      double.parse(isilongform[index = 27].lifetime_genx);
                  double lifetimeGenx29 =
                      double.parse(isilongform[index = 28].lifetime_genx);
                  double lifetimeGenx30 =
                      double.parse(isilongform[index = 29].lifetime_genx);
                  double lifetimeGenx31 =
                      double.parse(isilongform[index = 30].lifetime_genx);
                  double lifetimeGenx32 =
                      double.parse(isilongform[index = 31].lifetime_genx);
                  double lifetimeGenx33 =
                      double.parse(isilongform[index = 32].lifetime_genx);
                  double lifetimeGenx34 =
                      double.parse(isilongform[index = 33].lifetime_genx);
                  double lifetimeGenx35 =
                      double.parse(isilongform[index = 34].lifetime_genx);
                  double lifetimeGenx36 =
                      double.parse(isilongform[index = 35].lifetime_genx);

                  double lifetimeBoomer1 =
                      double.parse(isilongform[index = 0].lifetime_boomer);
                  double lifetimeBoomer2 =
                      double.parse(isilongform[index = 1].lifetime_boomer);
                  double lifetimeBoomer3 =
                      double.parse(isilongform[index = 2].lifetime_boomer);
                  double lifetimeBoomer4 =
                      double.parse(isilongform[index = 3].lifetime_boomer);
                  double lifetimeBoomer5 =
                      double.parse(isilongform[index = 4].lifetime_boomer);
                  double lifetimeBoomer6 =
                      double.parse(isilongform[index = 5].lifetime_boomer);
                  double lifetimeBoomer7 =
                      double.parse(isilongform[index = 6].lifetime_boomer);
                  double lifetimeBoomer8 =
                      double.parse(isilongform[index = 7].lifetime_boomer);
                  double lifetimeBoomer9 =
                      double.parse(isilongform[index = 8].lifetime_boomer);
                  double lifetimeBoomer10 =
                      double.parse(isilongform[index = 9].lifetime_boomer);
                  double lifetimeBoomer11 =
                      double.parse(isilongform[index = 10].lifetime_boomer);
                  double lifetimeBoomer12 =
                      double.parse(isilongform[index = 11].lifetime_boomer);
                  double lifetimeBoomer13 =
                      double.parse(isilongform[index = 12].lifetime_boomer);
                  double lifetimeBoomer14 =
                      double.parse(isilongform[index = 13].lifetime_boomer);
                  double lifetimeBoomer15 =
                      double.parse(isilongform[index = 14].lifetime_boomer);
                  double lifetimeBoomer16 =
                      double.parse(isilongform[index = 15].lifetime_boomer);
                  double lifetimeBoomer17 =
                      double.parse(isilongform[index = 16].lifetime_boomer);
                  double lifetimeBoomer18 =
                      double.parse(isilongform[index = 17].lifetime_boomer);
                  double lifetimeBoomer19 =
                      double.parse(isilongform[index = 18].lifetime_boomer);
                  double lifetimeBoomer20 =
                      double.parse(isilongform[index = 19].lifetime_boomer);
                  double lifetimeBoomer21 =
                      double.parse(isilongform[index = 20].lifetime_boomer);
                  double lifetimeBoomer22 =
                      double.parse(isilongform[index = 21].lifetime_boomer);
                  double lifetimeBoomer23 =
                      double.parse(isilongform[index = 22].lifetime_boomer);
                  double lifetimeBoomer24 =
                      double.parse(isilongform[index = 23].lifetime_boomer);
                  double lifetimeBoomer25 =
                      double.parse(isilongform[index = 24].lifetime_boomer);
                  double lifetimeBoomer26 =
                      double.parse(isilongform[index = 25].lifetime_boomer);
                  double lifetimeBoomer27 =
                      double.parse(isilongform[index = 26].lifetime_boomer);
                  double lifetimeBoomer28 =
                      double.parse(isilongform[index = 27].lifetime_boomer);
                  double lifetimeBoomer29 =
                      double.parse(isilongform[index = 28].lifetime_boomer);
                  double lifetimeBoomer30 =
                      double.parse(isilongform[index = 29].lifetime_boomer);
                  double lifetimeBoomer31 =
                      double.parse(isilongform[index = 30].lifetime_boomer);
                  double lifetimeBoomer32 =
                      double.parse(isilongform[index = 31].lifetime_boomer);
                  double lifetimeBoomer33 =
                      double.parse(isilongform[index = 32].lifetime_boomer);
                  double lifetimeBoomer34 =
                      double.parse(isilongform[index = 33].lifetime_boomer);
                  double lifetimeBoomer35 =
                      double.parse(isilongform[index = 34].lifetime_boomer);
                  double lifetimeBoomer36 =
                      double.parse(isilongform[index = 35].lifetime_boomer);

                  
                  return Scaffold(
                      body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                          width: screenWidth * 1.0,
                          height: 65,
                          padding: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                            top: 2,
                            bottom: 1,
                          ),
                          child: const Text(
                            "Migrasi Seumur Hidup (Life time) Kabupaten/Kota Di Jawa Tengah (Menurut Generasi), Hasil Pendataan Long Form SP2020 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                          Container(
                           padding: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                            top: 1,
                            bottom: 2,
                          ),
                          child: const Text(
                            'Scroll ke atas dan ke bawah pada data, untuk melihat data kab/kota lainnya',
                            style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
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
                                  //textAlign: TextAlign.center,
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
                                height: screenHeight * 0.01,
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
                                height: screenHeight * 0.01,
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
                                          Format.convertTo(lifetimePostgenz1, 2),
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
                                          Format.convertTo(lifetimeGenz1, 2),
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
                                          Format.convertTo(lifetimeMilenial1, 2),
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
                                          Format.convertTo(lifetimeGenx1, 2),
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
                                          Format.convertTo(lifetimeBoomer1, 2),
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
                                          Format.convertTo(lifetimePostgenz2, 2),
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
                                          Format.convertTo(lifetimeGenz2, 2),
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
                                          Format.convertTo(lifetimeMilenial2, 2),
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
                                          Format.convertTo(lifetimeGenx2, 2),
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
                                          Format.convertTo(lifetimeBoomer2, 2),
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
                                          Format.convertTo(lifetimePostgenz3, 2),
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
                                          Format.convertTo(lifetimeGenz3, 2),
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
                                          Format.convertTo(lifetimeMilenial3, 2),
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
                                          Format.convertTo(lifetimeGenx3, 2),
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
                                          Format.convertTo(lifetimeBoomer3, 2),
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
                                          Format.convertTo(lifetimePostgenz4, 2),
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
                                          Format.convertTo(lifetimeGenz4, 2),
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
                                          Format.convertTo(lifetimeMilenial4, 2),
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
                                          Format.convertTo(lifetimeGenx4, 2),
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
                                          Format.convertTo(lifetimeBoomer4, 2),
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
                                          Format.convertTo(lifetimePostgenz5, 2),
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
                                          Format.convertTo(lifetimeGenz5, 2),
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
                                          Format.convertTo(lifetimeMilenial5, 2),
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
                                          Format.convertTo(lifetimeGenx5, 2),
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
                                          Format.convertTo(lifetimeBoomer5, 2),
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
                                          Format.convertTo(lifetimePostgenz6, 2),
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
                                          Format.convertTo(lifetimeGenz6, 2),
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
                                          Format.convertTo(lifetimeMilenial6, 2),
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
                                          Format.convertTo(lifetimeGenx6, 2),
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
                                          Format.convertTo(lifetimeBoomer6, 2),
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
                                          Format.convertTo(lifetimePostgenz7, 2),
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
                                          Format.convertTo(lifetimeGenz7, 2),
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
                                          Format.convertTo(lifetimeMilenial7, 2),
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
                                          Format.convertTo(lifetimeGenx7, 2),
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
                                          Format.convertTo(lifetimeBoomer7, 2),
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
                                          Format.convertTo(lifetimePostgenz8, 2),
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
                                          Format.convertTo(lifetimeGenz8, 2),
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
                                          Format.convertTo(lifetimeMilenial8, 2),
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
                                          Format.convertTo(lifetimeGenx8, 2),
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
                                          Format.convertTo(lifetimeBoomer8, 2),
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
                                          Format.convertTo(lifetimePostgenz9, 2),
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
                                          Format.convertTo(lifetimeGenz9, 2),
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
                                          Format.convertTo(lifetimeMilenial9, 2),
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
                                          Format.convertTo(lifetimeGenx9, 2),
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
                                          Format.convertTo(lifetimeBoomer9, 2),
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
                                          Format.convertTo(lifetimePostgenz10, 2),
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
                                          Format.convertTo(lifetimeGenz10, 2),
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
                                          Format.convertTo(lifetimeMilenial10, 2),
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
                                          Format.convertTo(lifetimeGenx10, 2),
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
                                          Format.convertTo(lifetimeBoomer10, 2),
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
                                          Format.convertTo(lifetimePostgenz11, 2),
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
                                          Format.convertTo(lifetimeGenz11, 2),
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
                                          Format.convertTo(lifetimeMilenial11, 2),
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
                                          Format.convertTo(lifetimeGenx11, 2),
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
                                          Format.convertTo(lifetimeBoomer11, 2),
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
                                          Format.convertTo(lifetimePostgenz12, 2),
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
                                          Format.convertTo(lifetimeGenz12, 2),
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
                                          Format.convertTo(lifetimeMilenial12, 2),
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
                                          Format.convertTo(lifetimeGenx12, 2),
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
                                          Format.convertTo(lifetimeBoomer12, 2),
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
                                          Format.convertTo(lifetimePostgenz13, 2),
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
                                          Format.convertTo(lifetimeGenz13, 2),
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
                                          Format.convertTo(lifetimeMilenial13, 2),
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
                                          Format.convertTo(lifetimeGenx13, 2),
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
                                          Format.convertTo(lifetimeBoomer13, 2),
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
                                          Format.convertTo(lifetimePostgenz14, 2),
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
                                          Format.convertTo(lifetimeGenz14, 2),
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
                                          Format.convertTo(lifetimeMilenial14, 2),
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
                                          Format.convertTo(lifetimeGenx14, 2),
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
                                          Format.convertTo(lifetimeBoomer14, 2),
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
                                          Format.convertTo(lifetimePostgenz15, 2),
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
                                          Format.convertTo(lifetimeGenz15, 2),
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
                                          Format.convertTo(lifetimeMilenial15, 2),
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
                                          Format.convertTo(lifetimeGenx15, 2),
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
                                          Format.convertTo(lifetimeBoomer15, 2),
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
                                          Format.convertTo(lifetimePostgenz16, 2),
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
                                          Format.convertTo(lifetimeGenz16, 2),
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
                                          Format.convertTo(lifetimeMilenial16, 2),
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
                                          Format.convertTo(lifetimeGenx16, 2),
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
                                          Format.convertTo(lifetimeBoomer16, 2),
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
                                          Format.convertTo(lifetimePostgenz17, 2),
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
                                          Format.convertTo(lifetimeGenz17, 2),
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
                                          Format.convertTo(lifetimeMilenial17, 2),
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
                                          Format.convertTo(lifetimeGenx17, 2),
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
                                          Format.convertTo(lifetimeBoomer17, 2),
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
                                          Format.convertTo(lifetimePostgenz18, 2),
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
                                          Format.convertTo(lifetimeGenz18, 2),
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
                                          Format.convertTo(lifetimeMilenial18, 2),
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
                                          Format.convertTo(lifetimeGenx18, 2),
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
                                          Format.convertTo(lifetimeBoomer18, 2),
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
                                          Format.convertTo(lifetimePostgenz19, 2),
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
                                          Format.convertTo(lifetimeGenz19, 2),
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
                                          Format.convertTo(lifetimeMilenial19, 2),
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
                                          Format.convertTo(lifetimeGenx19, 2),
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
                                          Format.convertTo(lifetimeBoomer19, 2),
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
                                          Format.convertTo(lifetimePostgenz20, 2),
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
                                          Format.convertTo(lifetimeGenz20, 2),
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
                                          Format.convertTo(lifetimeMilenial20, 2),
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
                                          Format.convertTo(lifetimeGenx20, 2),
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
                                          Format.convertTo(lifetimeBoomer20, 2),
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
                                          Format.convertTo(lifetimePostgenz21, 2),
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
                                          Format.convertTo(lifetimeGenz21, 2),
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
                                          Format.convertTo(lifetimeMilenial21, 2),
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
                                          Format.convertTo(lifetimeGenx21, 2),
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
                                          Format.convertTo(lifetimeBoomer21, 2),
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
                                          Format.convertTo(lifetimePostgenz22, 2),
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
                                          Format.convertTo(lifetimeGenz22, 2),
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
                                          Format.convertTo(lifetimeMilenial22, 2),
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
                                          Format.convertTo(lifetimeGenx22, 2),
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
                                          Format.convertTo(lifetimeBoomer22, 2),
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
                                          Format.convertTo(lifetimePostgenz23, 2),
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
                                          Format.convertTo(lifetimeGenz23, 2),
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
                                          Format.convertTo(lifetimeMilenial23, 2),
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
                                          Format.convertTo(lifetimeGenx23, 2),
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
                                          Format.convertTo(lifetimeBoomer23, 2),
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
                                          Format.convertTo(lifetimePostgenz24, 2),
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
                                          Format.convertTo(lifetimeGenz24, 2),
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
                                          Format.convertTo(lifetimeMilenial24, 2),
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
                                          Format.convertTo(lifetimeGenx24, 2),
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
                                          Format.convertTo(lifetimeBoomer24, 2),
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
                                          Format.convertTo(lifetimePostgenz25, 2),
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
                                          Format.convertTo(lifetimeGenz25, 2),
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
                                          Format.convertTo(lifetimeMilenial25, 2),
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
                                          Format.convertTo(lifetimeGenx25, 2),
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
                                          Format.convertTo(lifetimeBoomer25, 2),
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
                                          Format.convertTo(lifetimePostgenz26, 2),
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
                                          Format.convertTo(lifetimeGenz26, 2),
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
                                          Format.convertTo(lifetimeMilenial26, 2),
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
                                          Format.convertTo(lifetimeGenx26, 2),
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
                                          Format.convertTo(lifetimeBoomer26, 2),
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
                                          Format.convertTo(lifetimePostgenz27, 2),
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
                                          Format.convertTo(lifetimeGenz27, 2),
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
                                          Format.convertTo(lifetimeMilenial27, 2),
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
                                          Format.convertTo(lifetimeGenx27, 2),
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
                                          Format.convertTo(lifetimeBoomer27, 2),
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
                                          Format.convertTo(lifetimePostgenz28, 2),
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
                                          Format.convertTo(lifetimeGenz28, 2),
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
                                          Format.convertTo(lifetimeMilenial28, 2),
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
                                          Format.convertTo(lifetimeGenx28, 2),
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
                                          Format.convertTo(lifetimeBoomer28, 2),
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
                                          Format.convertTo(lifetimePostgenz29, 2),
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
                                          Format.convertTo(lifetimeGenz29, 2),
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
                                          Format.convertTo(lifetimeMilenial29, 2),
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
                                          Format.convertTo(lifetimeGenx29, 2),
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
                                          Format.convertTo(lifetimeBoomer29, 2),
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
                                          Format.convertTo(lifetimePostgenz30, 2),
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
                                          Format.convertTo(lifetimeGenz30, 2),
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
                                          Format.convertTo(lifetimeMilenial30, 2),
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
                                          Format.convertTo(lifetimeGenx30, 2),
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
                                          Format.convertTo(lifetimeBoomer30, 2),
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
                                          Format.convertTo(lifetimePostgenz31, 2),
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
                                          Format.convertTo(lifetimeGenz31, 2),
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
                                          Format.convertTo(lifetimeMilenial31, 2),
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
                                          Format.convertTo(lifetimeGenx31, 2),
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
                                          Format.convertTo(lifetimeBoomer31, 2),
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
                                          Format.convertTo(lifetimePostgenz32, 2),
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
                                          Format.convertTo(lifetimeGenz32, 2),
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
                                          Format.convertTo(lifetimeMilenial32, 2),
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
                                          Format.convertTo(lifetimeGenx32, 2),
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
                                          Format.convertTo(lifetimeBoomer32, 2),
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
                                          Format.convertTo(lifetimePostgenz33, 2),
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
                                          Format.convertTo(lifetimeGenz33, 2),
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
                                          Format.convertTo(lifetimeMilenial33, 2),
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
                                          Format.convertTo(lifetimeGenx33, 2),
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
                                          Format.convertTo(lifetimeBoomer33, 2),
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
                                          Format.convertTo(lifetimePostgenz34, 2),
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
                                          Format.convertTo(lifetimeGenz34, 2),
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
                                          Format.convertTo(lifetimeMilenial34, 2),
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
                                          Format.convertTo(lifetimeGenx34, 2),
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
                                          Format.convertTo(lifetimeBoomer34, 2),
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
                                          Format.convertTo(lifetimePostgenz35, 2),
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
                                          Format.convertTo(lifetimeGenz35, 2),
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
                                          Format.convertTo(lifetimeMilenial35, 2),
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
                                          Format.convertTo(lifetimeGenx35, 2),
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
                                          Format.convertTo(lifetimeBoomer35, 2),
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
                                          Format.convertTo(lifetimePostgenz36, 2),
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
                                          Format.convertTo(lifetimeGenz36, 2),
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
                                          Format.convertTo(lifetimeMilenial36, 2),
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
                                          Format.convertTo(lifetimeGenx36, 2),
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
                                          Format.convertTo(lifetimeBoomer36, 2),
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
                              "Proporsi Penduduk Berstatus Migran Seumur Risen Antar kabupaten/kota:",
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
