// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_longform.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PddknGenCilacap extends StatefulWidget {
  const PddknGenCilacap({Key? key}) : super(key: key);

  @override
  State<PddknGenCilacap> createState() => _PddknGenCilacapState();
}

RepositoryLongform repositorylongform = RepositoryLongform();

class _PddknGenCilacapState extends State<PddknGenCilacap> {
  late List<_ChartData> data;
  late List<_ChartData1> data1;
  late TooltipBehavior tooltip;
  late TooltipBehavior tooltip1;

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PENDIDIKAN MENURUT GENERASI',
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
      ),
      body: FutureBuilder(
        future: repositorylongform.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isilongform = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                //Pendidikan Milenial Cilacap dan Jateng
                double MilenialTdkbelumSekolah_Clp = double.parse(
                  isilongform[index = 33].clp,
                );
                double MilenialTdktamatSD_Clp = double.parse(
                  isilongform[index = 34].clp,
                );
                double MilenialSDsederajat_Clp = double.parse(
                  isilongform[index = 35].clp,
                );
                double MilenialSLTPsederajat_Clp = double.parse(
                  isilongform[index = 36].clp,
                );
                double MilenialSLTAsederajat_Clp = double.parse(
                  isilongform[index = 37].clp,
                );
                double MilenialAkademi_Clp = double.parse(
                  isilongform[index = 38].clp,
                );
                double MilenialD4S1_Clp = double.parse(
                  isilongform[index = 39].clp,
                );
                double MilenialProfesi_Clp = double.parse(
                  isilongform[index = 40].clp,
                );
                double MilenialS2S3_Clp = double.parse(
                  isilongform[index = 41].clp,
                );

                double MilenialTdkbelumSekolah_Jateng = double.parse(
                  isilongform[index = 33].jateng,
                );
                double MilenialTdktamatSD_Jateng = double.parse(
                  isilongform[index = 34].jateng,
                );
                double MilenialSDsederajat_Jateng = double.parse(
                  isilongform[index = 35].jateng,
                );
                double MilenialSLTPsederajat_Jateng = double.parse(
                  isilongform[index = 36].jateng,
                );
                double MilenialSLTAsederajat_Jateng = double.parse(
                  isilongform[index = 37].jateng,
                );
                double MilenialAkademi_Jateng = double.parse(
                  isilongform[index = 38].jateng,
                );
                double MilenialD4S1_Jateng = double.parse(
                  isilongform[index = 39].jateng,
                );
                double MilenialProfesi_Jateng = double.parse(
                  isilongform[index = 40].jateng,
                );
                double MilenialS2S3_Jateng = double.parse(
                  isilongform[index = 41].jateng,
                );

                // Pendidikan Gen X di Cilacap dan Jateng
                double genXTdkbelumSekolah_Clp = double.parse(
                  isilongform[index = 42].clp,
                );
                double genXTdktamatSD_Clp = double.parse(
                  isilongform[index = 43].clp,
                );
                double genXSDsederajat_Clp = double.parse(
                  isilongform[index = 44].clp,
                );
                double genXSLTPsederajat_Clp = double.parse(
                  isilongform[index = 45].clp,
                );
                double genXSLTAsederajat_Clp = double.parse(
                  isilongform[index = 46].clp,
                );
                double genXAkademi_Clp = double.parse(
                  isilongform[index = 47].clp,
                );
                double genXD4S1_Clp = double.parse(isilongform[index = 48].clp);
                double genXProfesi_Clp = double.parse(
                  isilongform[index = 49].clp,
                );
                double genXS2S3_Clp = double.parse(isilongform[index = 50].clp);

                double genXTdkbelumSekolah_Jateng = double.parse(
                  isilongform[index = 42].jateng,
                );
                double genXTdktamatSD_Jateng = double.parse(
                  isilongform[index = 43].jateng,
                );
                double genXSDsederajat_Jateng = double.parse(
                  isilongform[index = 44].jateng,
                );
                double genXSLTPsederajat_Jateng = double.parse(
                  isilongform[index = 45].jateng,
                );
                double genXSLTAsederajat_Jateng = double.parse(
                  isilongform[index = 46].jateng,
                );
                double genXAkademi_Jateng = double.parse(
                  isilongform[index = 47].jateng,
                );
                double genXD4S1_Jateng = double.parse(
                  isilongform[index = 48].jateng,
                );
                double genXProfesi_Jateng = double.parse(
                  isilongform[index = 49].jateng,
                );
                double genXS2S3_Jateng = double.parse(
                  isilongform[index = 50].jateng,
                );

                //Pendidikan Generasi Baby Boomer
                double BoomerTdkbelumSekolah_Clp = double.parse(
                  isilongform[index = 51].clp,
                );
                double BoomerTdktamatSD_Clp = double.parse(
                  isilongform[index = 52].clp,
                );
                double BoomerSDsederajat_Clp = double.parse(
                  isilongform[index = 53].clp,
                );
                double BoomerSLTPsederajat_Clp = double.parse(
                  isilongform[index = 54].clp,
                );
                double BoomerSLTAsederajat_Clp = double.parse(
                  isilongform[index = 55].clp,
                );
                double BoomerAkademi_Clp = double.parse(
                  isilongform[index = 56].clp,
                );
                double BoomerD4S1_Clp = double.parse(
                  isilongform[index = 57].clp,
                );
                double BoomerProfesi_Clp = double.parse(
                  isilongform[index = 58].clp,
                );
                double BoomerS2S3_Clp = double.parse(
                  isilongform[index = 59].clp,
                );

                double BoomerTdkbelumSekolah_Jateng = double.parse(
                  isilongform[index = 51].jateng,
                );
                double BoomerTdktamatSD_Jateng = double.parse(
                  isilongform[index = 52].jateng,
                );
                double BoomerSDsederajat_Jateng = double.parse(
                  isilongform[index = 53].jateng,
                );
                double BoomerSLTPsederajat_Jateng = double.parse(
                  isilongform[index = 54].jateng,
                );
                double BoomerSLTAsederajat_Jateng = double.parse(
                  isilongform[index = 55].jateng,
                );
                double BoomerAkademi_Jateng = double.parse(
                  isilongform[index = 56].jateng,
                );
                double BoomerD4S1_Jateng = double.parse(
                  isilongform[index = 57].jateng,
                );
                double BoomerProfesi_Jateng = double.parse(
                  isilongform[index = 58].jateng,
                );
                double BoomerS2S3_Jateng = double.parse(
                  isilongform[index = 59].jateng,
                );

                //Grafik Pendidikan Menurut Generasi Cilacap
                data = [
                  _ChartData(
                    "Tidak/belum pernah sekolah",
                    MilenialTdkbelumSekolah_Clp,
                    genXTdkbelumSekolah_Clp,
                    BoomerTdkbelumSekolah_Clp,
                  ),
                  _ChartData(
                    "Tidak tamat SD",
                    MilenialTdktamatSD_Clp,
                    genXTdktamatSD_Clp,
                    BoomerTdktamatSD_Clp,
                  ),
                  _ChartData(
                    "SD/sederajat",
                    MilenialSDsederajat_Clp,
                    genXSDsederajat_Clp,
                    BoomerSDsederajat_Clp,
                  ),
                  _ChartData(
                    "SMP/sederajat",
                    MilenialSLTPsederajat_Clp,
                    genXSLTPsederajat_Clp,
                    BoomerSLTPsederajat_Clp,
                  ),
                  _ChartData(
                    "SMA/sederajat",
                    MilenialSLTAsederajat_Clp,
                    genXSLTAsederajat_Clp,
                    BoomerSLTAsederajat_Clp,
                  ),
                  _ChartData(
                    "DI/DII/DIII",
                    MilenialAkademi_Clp,
                    genXAkademi_Clp,
                    BoomerAkademi_Clp,
                  ),
                  _ChartData(
                    "DIV/S1",
                    MilenialD4S1_Clp,
                    genXD4S1_Clp,
                    BoomerD4S1_Clp,
                  ),
                  _ChartData(
                    "Profesi",
                    MilenialProfesi_Clp,
                    genXProfesi_Clp,
                    BoomerProfesi_Clp,
                  ),
                  _ChartData(
                    "S2/S3",
                    MilenialS2S3_Clp,
                    genXS2S3_Clp,
                    BoomerS2S3_Clp,
                  ),
                ];

                // Grafik Pendidikan Menurut Generasi Jateng
                data1 = [
                  _ChartData1(
                    "Tidak/belum pernah sekolah",
                    MilenialTdkbelumSekolah_Jateng,
                    genXTdkbelumSekolah_Jateng,
                    BoomerTdkbelumSekolah_Jateng,
                  ),
                  _ChartData1(
                    "Tidak tamat SD",
                    MilenialTdktamatSD_Jateng,
                    genXTdktamatSD_Jateng,
                    BoomerTdktamatSD_Jateng,
                  ),
                  _ChartData1(
                    "SD/sederajat",
                    MilenialSDsederajat_Jateng,
                    genXSDsederajat_Jateng,
                    BoomerSDsederajat_Jateng,
                  ),
                  _ChartData1(
                    "SMP/sederajat",
                    MilenialSLTPsederajat_Jateng,
                    genXSLTPsederajat_Jateng,
                    BoomerSLTPsederajat_Jateng,
                  ),
                  _ChartData1(
                    "SMA/sederajat",
                    MilenialSLTAsederajat_Jateng,
                    genXSLTAsederajat_Jateng,
                    BoomerSLTAsederajat_Jateng,
                  ),
                  _ChartData1(
                    "DI/DII/DIII",
                    MilenialAkademi_Jateng,
                    genXAkademi_Jateng,
                    BoomerAkademi_Jateng,
                  ),
                  _ChartData1(
                    "DIV/S1",
                    MilenialD4S1_Jateng,
                    genXD4S1_Jateng,
                    BoomerD4S1_Jateng,
                  ),
                  _ChartData1(
                    "Profesi",
                    MilenialProfesi_Jateng,
                    genXProfesi_Jateng,
                    BoomerProfesi_Jateng,
                  ),
                  _ChartData1(
                    "S2/S3",
                    MilenialS2S3_Jateng,
                    genXS2S3_Jateng,
                    BoomerS2S3_Jateng,
                  ),
                ];

                tooltip = TooltipBehavior(enable: true);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      //Tabel Migrasi Lifetime
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "PENDIDIKAN MENURUT GENERASI DI KABUPATEN CILACAP",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey.shade400, thickness: 2),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        child: const Text(
                          "Tingkat Pendidikan yang Ditamatkan Pada Generasi Baby Boomer, Generasi X, dan Milenial (Persen) di Kabupaten Cilacap Hasil Long Form SP2020",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        //height: screenHeight * 0.075,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      'Tingkat\n' 
                                      'Pendidikan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.only(
                                      right: 0,
                                      top: 15,
                                      bottom: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      "Milenial",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                      top: 15,
                                      bottom: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      "Gen. X",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      'Gen. Baby\n' 
                                      'Boomer',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.075,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        'Tidak/belum\n' 
                                        'pernah sekolah',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialTdkbelumSekolah_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXTdkbelumSekolah_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerTdkbelumSekolah_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "Tidak tamat SD",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialTdktamatSD_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXTdktamatSD_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerTdktamatSD_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "SD/sederajat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialSDsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXSDsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerSDsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "SMP/sederajat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialSLTPsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXSLTPsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerSLTPsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "SMA/sederajat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialSLTAsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXSLTAsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerSLTAsederajat_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "DI/DII/DIII",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialAkademi_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXAkademi_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(BoomerAkademi_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "DIV/S1",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(MilenialD4S1_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXD4S1_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(BoomerD4S1_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "Profesi",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialProfesi_Clp,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXProfesi_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(BoomerProfesi_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "S2/S3",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(MilenialS2S3_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXS2S3_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(BoomerS2S3_Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey.shade400, thickness: 1),
                          ],
                        ),
                      ),

                      const Divider(height: 5, color: Colors.transparent),

                      //Grafik Pendidikan mENURUT gENERASI
                      const Divider(height: 20, color: Colors.transparent),

                      SizedBox(
                        height: screenHeight * 0.85,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Tingkat Pendidikan yang Ditamatkan Pada Generasi Baby Boomer, Generasi X, dan Milenial (Persen) di Kabupaten Cilacap Hasil Long Form SP2020',
                            // Aligns the chart title to left
                            alignment: ChartAlignment.center,
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          primaryXAxis: CategoryAxis(
                            //maximumLabelWidth: 0.4*screenWidth,
                            labelsExtent: 0.25 * screenWidth,
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          legend: Legend(
                            // Visibility of legend
                            overflowMode: LegendItemOverflowMode.wrap,
                            textStyle: const TextStyle(fontSize: 11),
                            isVisible: true,
                            position: LegendPosition.bottom,
                          ),
                          primaryYAxis: NumericAxis(
                            numberFormat: NumberFormat.decimalPattern('vi_VN'),
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 70,
                            interval: 10,
                          ),
                          tooltipBehavior: tooltip,
                          series: <CartesianSeries>[
                            BarSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'Milenial',
                              color: const Color.fromARGB(255, 12, 110, 238),
                            ),
                            BarSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y1,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'Generasi X',
                              color: const Color.fromARGB(255, 100, 240, 228),
                            ),
                            BarSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y2,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'Generasi Boomer',
                              color: const Color.fromARGB(255, 238, 121, 12),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        child: Text(
                          "Klik pada legenda untuk menonaktifkan/mengaktifkan series/kelompok data",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 0.02 * screenHeight),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Penjelasan:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Mayoritas tingkat pendidikan tertinggi yang ditamatkan oleh Generasi Baby Boomer dan Generasi X di Kabupaten Cilacap adalah SD/Sederajat, sementara mayoritas tingkat pendidikan tertinggi yang ditamatkan oleh Generasi Milenial di Kabupaten Cilacap adalah SMP/Sederajat.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      SizedBox(height: 0.04 * screenHeight),

                      // Jateng
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "PENDIDIKAN MENURUT GENERASI DI JAWA TENGAH",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey.shade400, thickness: 2),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        child: const Text(
                          "Tingkat Pendidikan yang Ditamatkan Pada Generasi Baby Boomer, Generasi X, dan Milenial (Persen) di Provinsi Jawa Tengah Hasil Long Form SP2020",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        //height: screenHeight * 0.06,
                        child: Column(
                          children: [
                             Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      'Tingkat\n' 
                                      'Pendidikan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.only(
                                      right: 0,
                                      top: 15,
                                      bottom: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      "Milenial",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                      top: 15,
                                      bottom: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      "Gen. X",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.075,
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      'Gen. Baby\n' 
                                      'Boomer',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.075,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        'Tidak/belum\n'
                                         'pernah sekolah',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialTdkbelumSekolah_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXTdkbelumSekolah_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerTdkbelumSekolah_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "Tidak tamat SD",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialTdktamatSD_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXTdktamatSD_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerTdktamatSD_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "SD/sederajat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialSDsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXSDsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerSDsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "SMP/sederajat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialSLTPsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXSLTPsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerSLTPsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "SMA/sederajat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialSLTAsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          genXSLTAsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerSLTAsederajat_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "DI/DII/DIII",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialAkademi_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXAkademi_Jateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerAkademi_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "DIV/S1",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialD4S1_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXD4S1_Jateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(BoomerD4S1_Jateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "Profesi",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialProfesi_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXProfesi_Jateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          BoomerProfesi_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.045,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "S2/S3",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          MilenialS2S3_Jateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(genXS2S3_Jateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        Format.convertTo(BoomerS2S3_Jateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey.shade400, thickness: 1),
                          ],
                        ),
                      ),

                      //Grafik Pendidikan Usia 15+ Cilacap Jateng
                      const Divider(height: 20, color: Colors.transparent),

                      SizedBox(
                        height: screenHeight * 0.85,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Tingkat Pendidikan yang Ditamatkan Pada Generasi Baby Boomer, Generasi X, dan Milenial (Persen) di Provinsi Jawa Tengah Hasil Long Form SP2020',
                            // Aligns the chart title to left
                            alignment: ChartAlignment.center,
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          primaryXAxis: CategoryAxis(
                            //maximumLabelWidth: 0.4*screenWidth,
                            labelsExtent: 0.25 * screenWidth,
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          legend: Legend(
                            // Visibility of legend
                            overflowMode: LegendItemOverflowMode.wrap,
                            textStyle: const TextStyle(fontSize: 11),
                            isVisible: true,
                            position: LegendPosition.bottom,
                          ),
                          primaryYAxis: NumericAxis(
                            numberFormat: NumberFormat.decimalPattern('vi_VN'),
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 70,
                            interval: 10,
                          ),
                          tooltipBehavior: tooltip,
                          series: <CartesianSeries>[
                            BarSeries<_ChartData1, String>(
                              dataSource: data1,
                              xValueMapper: (_ChartData1 data1, _) => data1.x,
                              yValueMapper: (_ChartData1 data1, _) => data1.y,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'Milenial',
                              color: const Color.fromARGB(255, 12, 110, 238),
                            ),
                            BarSeries<_ChartData1, String>(
                              dataSource: data1,
                              xValueMapper: (_ChartData1 data1, _) => data1.x,
                              yValueMapper: (_ChartData1 data1, _) => data1.y1,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'Generasi X',
                              color: const Color.fromARGB(255, 100, 240, 228),
                            ),
                            BarSeries<_ChartData1, String>(
                              dataSource: data1,
                              xValueMapper: (_ChartData1 data1, _) => data1.x,
                              yValueMapper: (_ChartData1 data1, _) => data1.y2,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'Generasi Boomer',
                              color: const Color.fromARGB(255, 238, 121, 12),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        child: Text(
                          "Klik pada legenda untuk menonaktifkan/mengaktifkan series/kelompok data",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 0.02 * screenHeight),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Penjelasan:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Mayoritas tingkat pendidikan tertinggi yang ditamatkan oleh Generasi Baby Boomer dan Generasi X di Jawa Tengah adalah Sekolah Dasar atau sederajat. Sementara tingkat pendidikan tertinggi yang ditamatkan oleh Generasi Milenial adalah Sekolah Menengah Pertama atau sederajat.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                          bottom: 0,
                          top: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Milenial (Usia 26-41 saat pendataan Long Form):",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                          bottom: 0,
                          top: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Generasi X (Usia 42-57 saat pendataan Long Form).",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                          bottom: 0,
                          top: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Generasi Boomer (Pre Boomer+Boomer, Usia 58+ saat pendataan Long Form).",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(height: 0.04 * screenHeight),
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

class _ChartData {
  _ChartData(this.x, this.y, this.y1, this.y2);
  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}

class _ChartData1 {
  _ChartData1(this.x, this.y, this.y1, this.y2);
  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}
