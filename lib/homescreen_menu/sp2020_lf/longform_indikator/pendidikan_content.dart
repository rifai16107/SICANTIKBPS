// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/SP2020_lf/longform_indikator/pendidikan_kabkot/pendidikanumur_cilacap.dart';
import 'package:bps_cilacap/homescreen_menu/SP2020_lf/longform_indikator/pendidikan_kabkot/generasi_cilacap.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/pendidikan_kabkot/body_pendidikan_kabkot.dart';
import 'package:flutter/material.dart';

class pendidikanContent extends StatefulWidget {
  const pendidikanContent({Key? key}) : super(key: key);

  @override
  State<pendidikanContent> createState() => _pendidikanContentState();
}

class _pendidikanContentState extends State<pendidikanContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PENDIDIKAN',
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
                            child: const Text(
                              "Indikator Pendidikan Hasil Pendataan Long Form SP2020 Di Kabupaten Cilacap dan Kabupaten/Kota di Jawa Tengah ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const PendidikanumurCilacap();
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
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Pendidikan Penduduk Usia 15+ di Kabupaten Cilacap dan Jawa Tengah (Hasil Pendataan Long Form SP2020)',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const PddknGenCilacap();
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
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Pendidikan Kelompok Generasi Milenial, Gen X dan Baby Boomer di Kabupaten Cilacap dan Jawa Tengah (Hasil Pendataan Long Form SP2020)',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const BodyPendidikanKabkot();
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
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Penduduk Usia 5+ Menurut Pendidikan Tertinggi yang Ditamatkan di Kabupaten/Kota di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
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
      ),
    );
  }
}
