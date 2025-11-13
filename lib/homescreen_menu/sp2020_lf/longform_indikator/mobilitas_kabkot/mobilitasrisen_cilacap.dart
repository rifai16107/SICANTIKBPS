// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, file_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_longform.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class MobilitasrisenCilacap extends StatefulWidget {
  const MobilitasrisenCilacap({Key? key}) : super(key: key);

  @override
  State<MobilitasrisenCilacap> createState() => _MobilitasrisenCilacapState();
}

RepositoryLongform repositorylongform = RepositoryLongform();

class _MobilitasrisenCilacapState extends State<MobilitasrisenCilacap> {
  late List<_ChartData> data;
  late List<_ChartData1> data1;

  late TooltipBehavior tooltip;
  late TooltipBehavior tooltip1;

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
            'MOBILITAS RISEN',
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
                  //Migrasi risen U 5+
                  double migrasiRisenclp =
                      double.parse(isilongform[index = 18].clp);
                  double migrasiRisenclpPostz =
                      double.parse(isilongform[index = 19].clp);
                  double migrasiRisenclpZ =
                      double.parse(isilongform[index = 20].clp);
                  double migrasiRisenclpMilenial =
                      double.parse(isilongform[index = 21].clp);
                  double migrasiRisenclpX =
                      double.parse(isilongform[index = 22].clp);
                  double migrasiRisenclpBoomer =
                      double.parse(isilongform[index = 23].clp);

                  double migrasiRisenjateng =
                      double.parse(isilongform[index = 18].jateng);
                  double migrasiRisenjatengPostz =
                      double.parse(isilongform[index = 19].jateng);
                  double migrasiRisenjatengZ =
                      double.parse(isilongform[index = 20].jateng);
                  double migrasiRisenjatengMilenial =
                      double.parse(isilongform[index = 21].jateng);
                  double migrasiRisenjatengX =
                      double.parse(isilongform[index = 22].jateng);
                  double migrasiRisenjatengBoomer =
                      double.parse(isilongform[index = 23].jateng);

                  //Grafik Migrasi Risen
                  data = [
                    _ChartData("Cilacap", migrasiRisenclp),
                    _ChartData("Jawa Tengah", migrasiRisenjateng),
                  ];

                  //Grafik Migrasi Risen Generation
                  data1 = [
                    _ChartData1("Post Gen Z (0-9 tahun)", migrasiRisenclpPostz,
                        migrasiRisenjatengPostz),
                    _ChartData1("Generasi Z (10-25 tahun)", migrasiRisenclpZ,
                        migrasiRisenjatengZ),
                    _ChartData1("Milenial (26-41 tahun)",
                        migrasiRisenclpMilenial, migrasiRisenjatengMilenial),
                    _ChartData1("Generasi X (42-57 tahun)", migrasiRisenclpX,
                        migrasiRisenjatengX),
                    _ChartData1("Pre-Boomer dan Baby Boomer (58+ tahun)",
                        migrasiRisenclpBoomer, migrasiRisenjatengBoomer),
                  ];

                  tooltip = TooltipBehavior(enable: true);
                  tooltip1 = TooltipBehavior(enable: true);

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        //Tabel Migrasi Lifetime
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: const Text(
                              "Migrasi Risen Antar Kabupaten/Kota Menurut Generasi di Kabupaten Cilacap dan Jawa Tengah Hasil Long Form SP2020",
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
                                        "Generasi",
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
                                height: screenHeight * 0.06,
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
                                          "Post Gen Z (0-9 tahun)",
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
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          Format.convertTo(
                                              migrasiRisenclpPostz, 2),
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
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          Format.convertTo(
                                              migrasiRisenjatengPostz, 2),
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
                                  height: screenHeight * 0.06,
                                  color: Colors.grey.shade200,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        fit: FlexFit.tight,
                                        flex: 4,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 10),
                                          child: const Text(
                                            "Generasi Z (10-25 tahun)",
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
                                              horizontal: 20, vertical: 10),
                                          child: Text(
                                            Format.convertTo(
                                                migrasiRisenclpZ, 2),
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
                                              horizontal: 20, vertical: 10),
                                          child: Text(
                                            Format.convertTo(
                                                migrasiRisenjatengZ, 2),
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
                                height: screenHeight * 0.06,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: const Text(
                                          "Milenial (26-41 tahun)",
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
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          Format.convertTo(
                                              migrasiRisenclpMilenial, 2),
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
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          Format.convertTo(
                                              migrasiRisenjatengMilenial, 2),
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
                                height: screenHeight * 0.06,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: const Text(
                                          "Generasi X (42-57 tahun)",
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
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          Format.convertTo(migrasiRisenclpX, 2),
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
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          Format.convertTo(
                                              migrasiRisenjatengX, 2),
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
                                            horizontal: 5, vertical: 0),
                                        child: const Text(
                                          "Pre-Boomer dan Baby Boomer (58+ tahun)",
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
                                          Format.convertTo(
                                              migrasiRisenclpBoomer, 2),
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
                                              migrasiRisenjatengBoomer, 2),
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

                        //Grafik Migrasi Life Time
                        SizedBox(
                          height: screenHeight * 0.40,
                          width: screenWidth,
                          child: SfCartesianChart(
                              title: ChartTitle(
                                  text:
                                      'Migrasi Risen Antar Kabupaten/Kota di Kabupaten Cilacap dan Jawa Tengah Hasil Long Form SP2020',
                                  // Aligns the chart title to left
                                  alignment: ChartAlignment.center,
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 10, 10, 10),
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  )),
                              primaryXAxis: CategoryAxis(
                                majorGridLines: const MajorGridLines(width: 0),
                              ),
                              legend: Legend(
                                  // Visibility of legend
                                  overflowMode: LegendItemOverflowMode.wrap,
                                  textStyle: const TextStyle(
                                    fontSize: 11,
                                  ),
                                  isVisible: false,
                                  position: LegendPosition.bottom),
                              primaryYAxis: NumericAxis(
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
                                  numberFormat:
                                      NumberFormat.decimalPattern('vi_VN'),
                                  minimum: 0,
                                  maximum: 6,
                                  interval: 2),
                              tooltipBehavior: tooltip,
                              series: <CartesianSeries>[
                                ColumnSeries<_ChartData, String>(
                                  dataSource: data,
                                  xValueMapper: (_ChartData data, _) => data.x,
                                  yValueMapper: (_ChartData data, _) => data.y,
                                  // Sorting based on the specified field
                                  //sortingOrder: SortingOrder.descending,
                                  //sortFieldValueMapper: (_ChartData data, _) =>
                                  //data.y,
                                  dataLabelSettings: const DataLabelSettings(
                                      // Renders the data label
                                      isVisible: true,
                                      labelAlignment:
                                          ChartDataLabelAlignment.outer,
                                      textStyle: TextStyle(fontSize: 11)),
                                  name: 'IMR SP2010',
                                  color:
                                      const Color.fromARGB(255, 240, 164, 50),
                                ),
                              ]),
                        ),

                        const Divider(
                          height: 20,
                          color: Colors.transparent,
                        ),
                        //Grafik Migrasi Lifetime Menurut Generasi
                        SizedBox(
                          height: screenHeight * 0.55,
                          width: screenWidth,
                          child: SfCartesianChart(
                              title: ChartTitle(
                                  text:
                                      'Migrasi Risen Antar Kabupaten/Kota di Kabupaten Cilacap dan Migrasi Risen Antar Provinsi di Jawa Tengah Menurut Generasi Hasil Long Form SP2020',
                                  // Aligns the chart title to left
                                  alignment: ChartAlignment.center,
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 10, 10, 10),
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  )),
                              primaryXAxis: CategoryAxis(
                                //maximumLabelWidth: 0.4*screenWidth,
                                labelsExtent: 0.35 * screenWidth,
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
                                  maximum: 10,
                                  interval: 2),
                              tooltipBehavior: tooltip1,
                              series: <CartesianSeries>[
                                BarSeries<_ChartData1, String>(
                                  dataSource: data1,
                                  xValueMapper: (_ChartData1 data1, _) =>
                                      data1.x,
                                  yValueMapper: (_ChartData1 data1, _) =>
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
                                BarSeries<_ChartData1, String>(
                                  dataSource: data1,
                                  xValueMapper: (_ChartData1 data1, _) =>
                                      data1.x,
                                  yValueMapper: (_ChartData1 data1, _) =>
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
                              "Angka Migrasi Risen Kabupaten Cilacap sebesar 3,78 mengandung arti bahwa sekitar 3-4 dari 100 penduduk Cilacap yang berusia 5+ bertempat tinggal di luar Kabupaten Cilacap pada periode 5 tahun sebelumnya.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Angka migrasi risen Provinsi Jawa Tengah sebesar 2,27 lebih rendah dari angka migrasi risen Kabupaten Cilacap.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Sekitar 7-8 dari 100 penduduk generasi milenial di Cilacap merupakan migran risen.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Generasi yang lebih muda (post gen z, generasi z, dan milenial) memperlihatkan proporsi migran risen lebih tinggi daripada generasi yang lebih tua (generasi x, pre-boomer, dan baby boomer).",
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
  _ChartData(this.x, this.y);
  final String x;
  final double? y;
}

class _ChartData1 {
  _ChartData1(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}
