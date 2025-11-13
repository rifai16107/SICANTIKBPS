// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/body_rumahatap_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/body_rumahlantai_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/body_rumahdinding_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/body_rumahmilik_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/bangunan_cilacap.dart';
import 'package:flutter/material.dart';

class perumahanContent extends StatefulWidget {
  const perumahanContent({Key? key}) : super(key: key);

  @override
  State<perumahanContent> createState() => _perumahanContentState();
}

class _perumahanContentState extends State<perumahanContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KONDISI BANGUNAN',
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
        height: screenHeight * 1.0,
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
                flex: 2,
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
                              "Kondisi Bangunan tempat Tinggal Hasil Pendataan Long Form SP2020 Di Kabupaten Cilacap dan Kabupaten/Kota di Jawa Tengah ",
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
                      flex: 1,
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
                        return const BangunanCilacap();
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
                          height: screenHeight * 0.10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Ketahanan Bangunan Tempat Tinggal di Kabupaten Cilacap (Hasil Pendataan Long Form SP2020)',
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
                        return const BodyRumahatapKabkot();
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
                          height: screenHeight * 0.10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Jumlah Rumah Tangga Menurut Jenis Atap Terluas di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                        return const BodyRumahlantaiKabkot();
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
                          height: screenHeight * 0.10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Jumlah Rumah Tangga Menurut Jenis Lantai Terluas di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                        return const BodyRumahdindingKabkot();
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
                          height: screenHeight * 0.10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Jumlah Rumah Tangga Menurut Jenis Dinding Terluas di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                        return const BodyRumahmilikKabkot();
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
                          height: screenHeight * 0.10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: screenWidth * 0.73,
                          child: Text(
                            'Jumlah Rumah Tangga Menurut Status Kepemilikan Bangunan di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
