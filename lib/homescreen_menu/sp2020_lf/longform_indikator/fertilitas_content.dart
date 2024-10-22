// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/fertilitas_kabkot/asfr_kabkota.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/fertilitas_kabkot/tfr_cbr_kabkota.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/fertilitas_kabkot/fertilitas_cilacap.dart';
import 'package:flutter/material.dart';

class fertilitasContent extends StatefulWidget {
  const fertilitasContent({Key? key}) : super(key: key);

  @override
  State<fertilitasContent> createState() => _fertilitasContentState();
}

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
                          
                        ],
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
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
                              "Indikator Fertilitas Hasil Pendataan Long Form SP2020 Di Kabupaten Cilacap dan Kabupaten/Kota di Jawa Tengah ",
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
                        return const FertilitasCilacap();
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
                          width: screenWidth * 0.75,
                          child: Text(
                            'Indikator Fertilitas di Kabupaten Cilacap dan Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                        //return const TfrcbrKabkotCopy();
                        return const TfrcbrKabkot();
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
                          width: screenWidth * 0.75,
                          child: Text(
                            'Total Fertility Rate (TFR) dan Crude Birth Rate (CBR) Kabupaten/Kota di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                        return const AsfrKabkot();
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
                          width: screenWidth * 0.75,
                          child: Text(
                            'Age Spesific Fertility Rate (ASFR) Kabupaten/Kota di Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
