// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_longform.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PendidikanumurCilacap extends StatefulWidget {
  const PendidikanumurCilacap({Key? key}) : super(key: key);

  @override
  State<PendidikanumurCilacap> createState() => _PendidikanumurCilacapState();
}

RepositoryLongform repositorylongform = RepositoryLongform();

class _PendidikanumurCilacapState extends State<PendidikanumurCilacap> {
  late List<_ChartData> data;

  late TooltipBehavior tooltip;

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
            'PENDIDIKAN UMUR 15+',
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
        body: FutureBuilder(
          future: repositorylongform.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isilongform = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  //Pendidikan Cilacap
                  double TdkbelumSekolah =
                      double.parse(isilongform[index = 24].clp);
                  double TdktamatSD = double.parse(isilongform[index = 25].clp);
                  double SDsederajat =
                      double.parse(isilongform[index = 26].clp);
                  double SLTPsederajat =
                      double.parse(isilongform[index = 27].clp);
                  double SLTAsederajat =
                      double.parse(isilongform[index = 28].clp);
                  double Akademi = double.parse(isilongform[index = 29].clp);
                  double D4S1 = double.parse(isilongform[index = 30].clp);
                  double Profesi = double.parse(isilongform[index = 31].clp);
                  double S2S3 = double.parse(isilongform[index = 32].clp);

                  double tdkbelumsekolahJateng =
                      double.parse(isilongform[index = 24].jateng);
                  double tdktamatsdJateng =
                      double.parse(isilongform[index = 25].jateng);
                  double sdsederajatJateng =
                      double.parse(isilongform[index = 26].jateng);
                  double sltpsederajatJateng =
                      double.parse(isilongform[index = 27].jateng);
                  double sltasederajatJateng =
                      double.parse(isilongform[index = 28].jateng);
                  double akademiJateng =
                      double.parse(isilongform[index = 29].jateng);
                  double d4s1Jateng =
                      double.parse(isilongform[index = 30].jateng);
                  double profesiJateng =
                      double.parse(isilongform[index = 31].jateng);
                  double s2s3Jateng =
                      double.parse(isilongform[index = 32].jateng);

                  //Grafik Migrasi Life Time By Generation
                  data = [
                    _ChartData("Tidak/belum pernah sekolah", TdkbelumSekolah,
                        tdkbelumsekolahJateng),
                    _ChartData("Tidak tamat SD", TdktamatSD, tdktamatsdJateng),
                    _ChartData("SD/sederajat", SDsederajat, sdsederajatJateng),
                    _ChartData(
                        "SMP/sederajat", SLTPsederajat, sltpsederajatJateng),
                    _ChartData(
                        "SMA/sederajat", SLTAsederajat, sltasederajatJateng),
                    _ChartData("DI/DII/DIII", Akademi, akademiJateng),
                    _ChartData("DIV/S1", D4S1, d4s1Jateng),
                    _ChartData("Profesi", Profesi, profesiJateng),
                    _ChartData("S2/S3", S2S3, s2s3Jateng),
                  ];

                  tooltip = TooltipBehavior(enable: true);

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        //Tabel Migrasi Lifetime
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: const Text(
                              "Persentase Penduduk Umur 15+ Menurut  Pendidikan di Kabupaten Cilacap dan Jawa Tengah Hasil Long Form SP2020",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          //height: screenHeight * 0.68,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      color: Colors.blue,
                                      child: const Text(
                                        "Tingkat Pendidikan",
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
                                      padding: const EdgeInsets.only(
                                          right: 0, top: 15, bottom: 15),
                                      color: Colors.blue,
                                      child: const Text(
                                        "Cilacap",
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
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 15, bottom: 15),
                                      color: Colors.blue,
                                      child: const Text(
                                        "Jateng",
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
                                height: screenHeight * 0.045,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "Tidak/belum pernah sekolah",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(TdkbelumSekolah, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(
                                              tdkbelumsekolahJateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
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
                                        flex: 4,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          child: const Text(
                                            "Tidak tamat SD",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        flex: 2,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 5),
                                          child: Text(
                                            Format.convertTo(TdktamatSD, 2),
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        flex: 2,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 5),
                                          child: Text(
                                            Format.convertTo(
                                                tdktamatsdJateng, 2),
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.045,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "SD/sederajat",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(SDsederajat, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(
                                              sdsederajatJateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
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
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "SMP/sederajat",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(SLTPsederajat, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(
                                              sltpsederajatJateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.065,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "SMA/sederajat",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 0, bottom: 2),
                                        child: Text(
                                          Format.convertTo(SLTAsederajat, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 0, bottom: 2),
                                        child: Text(
                                          Format.convertTo(
                                              sltasederajatJateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
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
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "DI/DII/DIII",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(Akademi, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(akademiJateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
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
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "DIV/S1",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(D4S1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(d4s1Jateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
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
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "Profesi",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(Profesi, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(profesiJateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
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
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const Text(
                                          "S2/S3",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(S2S3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Text(
                                          Format.convertTo(s2s3Jateng, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                              ),
                            ],
                          ),
                        ),

                        const Divider(
                          height: 20,
                          color: Colors.transparent,
                        ),

                        //Grafik Pendidikan Usia 15+ Cilacap Jateng

                        const Divider(
                          height: 20,
                          color: Colors.transparent,
                        ),

                        SizedBox(
                          height: screenHeight * 0.85,
                          width: screenWidth,
                          child: SfCartesianChart(
                              title: ChartTitle(
                                  text:
                                      'Persentase Penduduk Umur 15 + Menurut Pendidikan yang Ditamatkan di Kabupaten Cilacap dan Jawa Tengah Hasil Long Form SP2020',
                                  // Aligns the chart title to left
                                  alignment: ChartAlignment.center,
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 10, 10, 10),
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  )),
                              primaryXAxis: CategoryAxis(
                                //maximumLabelWidth: 0.4*screenWidth,
                                labelsExtent: 0.30 * screenWidth,
                                majorGridLines: const MajorGridLines(width: 0),
                              ),
                              legend: Legend(
                                  // Visibility of legend
                                  overflowMode: LegendItemOverflowMode.wrap,
                                  textStyle: const TextStyle(
                                    fontSize: 11,
                                  ),
                                  isVisible: true,
                                  position: LegendPosition.bottom),
                              primaryYAxis: NumericAxis(
                                  numberFormat:
                                      NumberFormat.decimalPattern('vi_VN'),
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
                                  minimum: 0,
                                  maximum: 45,
                                  interval: 15),
                              tooltipBehavior: tooltip,
                              series: <CartesianSeries>[
                                BarSeries<_ChartData, String>(
                                  dataSource: data,
                                  xValueMapper: (_ChartData data1, _) =>
                                      data1.x,
                                  yValueMapper: (_ChartData data1, _) =>
                                      data1.y,

                                  // Sorting based on the specified field
                                  //sortingOrder: SortingOrder.descending,
                                  //sortFieldValueMapper: (_ChartData data, _) =>
                                  //data.y,
                                  dataLabelSettings: const DataLabelSettings(
                                      // Renders the data label
                                      labelAlignment:
                                          ChartDataLabelAlignment.outer,
                                      isVisible: true,
                                      textStyle: TextStyle(fontSize: 11)),
                                  width: 0.9, // Width of the bars
                                  spacing: 0, // Spacing between the bars
                                  name: 'Cilacap',
                                  color:
                                      const Color.fromARGB(255, 12, 110, 238),
                                ),
                                BarSeries<_ChartData, String>(
                                  dataSource: data,
                                  xValueMapper: (_ChartData data1, _) =>
                                      data1.x,
                                  yValueMapper: (_ChartData data1, _) =>
                                      data1.y1,

                                  // Sorting based on the specified field
                                  //sortingOrder: SortingOrder.descending,
                                  //sortFieldValueMapper: (_ChartData data, _) =>
                                  //data.y,
                                  dataLabelSettings: const DataLabelSettings(
                                      // Renders the data label
                                      labelAlignment:
                                          ChartDataLabelAlignment.outer,
                                      isVisible: true,
                                      textStyle: TextStyle(fontSize: 11)),
                                  width: 0.9, // Width of the bars
                                  spacing: 0, // Spacing between the bars
                                  name: 'Jawa Tengah',
                                  color:
                                      const Color.fromARGB(255, 238, 121, 12),
                                ),
                              ]),
                        ),

                        const SizedBox(
                            child: Text(
                          "Klik pada legenda untuk menonaktifkan/mengaktifkan series/kelompok data",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        )),
                        SizedBox(
                          height: 0.02 * screenHeight,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Penjelasan:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Mayoritas penduduk berumur 15 tahun ke atas berpendidikan Sekolah Dasar atau Sederajat.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Persentase penduduk Usia 15+ yang berpendidikan SMA/sederajat atau lebih tinggi di Kabupaten Cilacap masih lebih rendah apabila dibandingkan Provinsi Jawa Tengah. Untuk Penduduk Usia 15+ yang tamat SMA/sederajat di Kabupaten Cilacap tercatat 20,92 persen sementara di Jawa Tengah tercatat 24,94 persen. Sementara untuk jenjang pendidikan DIV/S1, di Kabupaten Cilacap sebesar 3,20 persen dan di Jawa Tengah sebesar 4,59 persen.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(
                          height: 0.04 * screenHeight,
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

class _ChartData {
  _ChartData(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}
