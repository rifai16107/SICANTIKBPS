// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_longform.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class FertilitasCilacap extends StatefulWidget {
  const FertilitasCilacap({Key? key}) : super(key: key);

  @override
  State<FertilitasCilacap> createState() => _FertilitasCilacapState();
}

var formater = NumberFormat('###,0#', 'ID');
RepositoryLongform repositorylongform = RepositoryLongform();

class _FertilitasCilacapState extends State<FertilitasCilacap> {
  late List<_ChartData> data;
  late List<_ChartData1> data1;
  late List<_ChartData2> data2;
  late TooltipBehavior tooltip;
  late TooltipBehavior tooltip1;
  late TooltipBehavior tooltip2;

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
            'INDIKATOR FERTILITAS',
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
                  double tfrlfClp = double.parse(isilongform[index = 0].clp);
                  double tfrlfJateng =
                      double.parse(isilongform[index = 0].jateng);
                  double tfrsp2010Clp =
                      double.parse(isilongform[index = 0].clp_sp2010);
                  double tfrsp2010Jateng =
                      double.parse(isilongform[index = 0].jateng_sp2010);

                  double cbrlfClp = double.parse(isilongform[index = 1].clp);
                  double cbrlfJateng =
                      double.parse(isilongform[index = 1].jateng);

                  double asfrClp_1519 =
                      double.parse(isilongform[index = 2].clp);
                  double asfrClp_2024 =
                      double.parse(isilongform[index = 3].clp);
                  double asfrClp_2529 =
                      double.parse(isilongform[index = 4].clp);
                  double asfrClp_3034 =
                      double.parse(isilongform[index = 5].clp);
                  double asfrClp_3539 =
                      double.parse(isilongform[index = 6].clp);
                  double asfrClp_4044 =
                      double.parse(isilongform[index = 7].clp);
                  double asfrClp_4549 =
                      double.parse(isilongform[index = 8].clp);

                  double asfrJateng_1519 =
                      double.parse(isilongform[index = 2].jateng);
                  double asfrJateng_2024 =
                      double.parse(isilongform[index = 3].jateng);
                  double asfrJateng_2529 =
                      double.parse(isilongform[index = 4].jateng);
                  double asfrJateng_3034 =
                      double.parse(isilongform[index = 5].jateng);
                  double asfrJateng_3539 =
                      double.parse(isilongform[index = 6].jateng);
                  double asfrJateng_4044 =
                      double.parse(isilongform[index = 7].jateng);
                  double asfrJateng_4549 =
                      double.parse(isilongform[index = 8].jateng);

                  //Grafik TFR
                  data = [
                    _ChartData("Cilacap", tfrsp2010Clp, tfrlfClp),
                    _ChartData("Jawa Tengah", tfrsp2010Jateng, tfrlfJateng),
                  ];

                  //Grafik CBR
                  data1 = [
                    _ChartData1("Cilacap", cbrlfClp),
                    _ChartData1("Jawa Tengah", cbrlfJateng),
                  ];

                  //Grafik ASFR
                  data2 = [
                    _ChartData2("15-19", asfrClp_1519, asfrJateng_1519),
                    _ChartData2("20-24", asfrClp_2024, asfrJateng_2024),
                    _ChartData2("25-29", asfrClp_2529, asfrJateng_2529),
                    _ChartData2("30-34", asfrClp_3034, asfrJateng_3034),
                    _ChartData2("35-39", asfrClp_3539, asfrJateng_3539),
                    _ChartData2("40-45", asfrClp_4044, asfrJateng_4044),
                    _ChartData2("45-49", asfrClp_4549, asfrJateng_4549),
                  ];
                  tooltip = TooltipBehavior(enable: true);
                  tooltip1 = TooltipBehavior(enable: true);
                  tooltip2 = TooltipBehavior(enable: true);

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: const Text(
                              "Perkembangan TFR di Kabupaten Cilacap dan Jawa Tengah hasil SP2010 dan Long Form SP2020",
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
                                          horizontal: 2, vertical: 15),
                                      color: Colors.blue,
                                      child: const Text(
                                        "Indikator",
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 15),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 15),
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
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 15),
                                      child: const Text(
                                        "TFR Long Form SP2020",
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
                                          horizontal: 2, vertical: 15),
                                      child: Text(
                                        Format.convertTo(tfrlfClp, 2),
                                        textAlign: TextAlign.center,
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
                                          horizontal: 2, vertical: 15),
                                      child: Text(
                                        Format.convertTo(tfrlfJateng, 2),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 15),
                                      child: const Text(
                                        "TFR Hasil SP2010",
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
                                          horizontal: 2, vertical: 15),
                                      child: Text(
                                        Format.convertTo(tfrsp2010Clp, 2),
                                        textAlign: TextAlign.center,
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
                                          horizontal: 2, vertical: 15),
                                      child: Text(
                                        Format.convertTo(tfrsp2010Jateng, 2),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                              ),
                            ],
                          ),
                        ),

                        const Divider(
                          height: 2,
                          color: Colors.transparent,
                        ),

                        //Explanatory
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
                          child: Text(
                              "Fertilitas Kabupaten Cilacap menurun dalam sepuluh tahun terakhir. Sensus Penduduk 2010 mencatat angka TFR sebesar "  +Format.convertTo(tfrsp2010Clp, 2)+ " yang berarti seorang perempuan melahirkan sekitar 2-3 anak selama masa reproduksinya. Sementara Long Form SP2020 mencatat TFR sebesar " +Format.convertTo(tfrlfClp, 2)+ " yang berarti hanya sekitar 2 anak yang dilahirkan perempuan selama masa reprodukasinya.",
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),

                        const Divider(
                          height: 25,
                          color: Colors.transparent,
                        ),
                        //Grafik TFR
                        SizedBox(
                          height: screenHeight * 0.40,
                          width: screenWidth,
                          child: SfCartesianChart(
                              title: ChartTitle(
                                  text:
                                      'TFR Kabupaten Cilacap dan Jawa Tengah hasil SP2010 dan LF SP2020',
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
                                  isVisible: true,
                                  position: LegendPosition.bottom),
                              primaryYAxis: NumericAxis(
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
                                  numberFormat:
                                      NumberFormat.decimalPattern('vi_VN'),
                                  minimum: 0,
                                  maximum: 5,
                                  interval: 1),
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
                                      textStyle: TextStyle(fontSize: 10)),
                                  name: 'TFR SP2010',
                                  color:
                                      const Color.fromARGB(255, 240, 164, 50),
                                ),
                                ColumnSeries<_ChartData, String>(
                                  dataSource: data,
                                  xValueMapper: (_ChartData data, _) => data.x,
                                  yValueMapper: (_ChartData data, _) => data.y1,
                                  // Sorting based on the specified field
                                  //sortingOrder: SortingOrder.descending,
                                  //sortFieldValueMapper: (_ChartData data, _) =>
                                  //data.y,
                                  dataLabelSettings: const DataLabelSettings(
                                      // Renders the data label
                                      isVisible: true,
                                      textStyle: TextStyle(fontSize: 10)),
                                  name: 'TFR Long Form SP2020',
                                  color:
                                      const Color.fromARGB(255, 170, 240, 80),
                                ),
                              ]),
                        ),

                        const Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        //Grafik CBR
                        SizedBox(
                          height: screenHeight * 0.35,
                          width: screenWidth,
                          child: SfCartesianChart(
                              title: ChartTitle(
                                  text:
                                      'Angka Kelahiran Kasar (Crude Birth Rate/CBR) Kabupaten Cilacap dan Jawa Tengah hasil LF SP2020',
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
                                  numberFormat:
                                      NumberFormat.decimalPattern('vi_VN'),
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
                                  minimum: 0,
                                  maximum: 25,
                                  interval: 5),
                              tooltipBehavior: tooltip1,
                              series: <CartesianSeries>[
                                ColumnSeries<_ChartData1, String>(
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
                                      isVisible: true,
                                      textStyle: TextStyle(fontSize: 11)),
                                  width: 0.7, // Width of the bars
                                  spacing: 0.2, // Spacing between the bars
                                  name: 'Angka Kelahiran Kasar/AKB (CBR)',
                                  color:
                                      const Color.fromARGB(255, 12, 110, 238),
                                ),
                              ]),
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
                          child: Text(
                              "Hasil Long Form SP2020 mencatat terdapat " +Format.convertTo(cbrlfClp, 2)+ " kelahiran hidup diantara 1.000 penduduk Kabupaten Cilacap. Sementara untuk Provinsi Jawa Tengah tercatat " +Format.convertTo(cbrlfJateng, 2)+ " kelahiran hidup diantara 1.000 penduduk Jawa Tengah.",
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        const Divider(
                          height: 25,
                          color: Colors.transparent,
                        ),
                        // Grafik ASFR
                        SizedBox(
                          height: screenHeight * 0.40,
                          width: screenWidth,
                          child: SfCartesianChart(
                              title: ChartTitle(
                                  text:
                                      'Angka Kelahiran Menurut Kelompok Umur (ASFR) Kabupaten Cilacap dan Jawa Tengah, Hasil LF SP2020',
                                  // Aligns the chart title to left
                                  alignment: ChartAlignment.center,
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 10, 10, 10),
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  )),
                              primaryXAxis: CategoryAxis(),
                              legend: Legend(
                                  // Visibility of legend
                                  overflowMode: LegendItemOverflowMode.wrap,
                                  textStyle: const TextStyle(
                                    fontSize: 11,
                                  ),
                                  isVisible: true,
                                  position: LegendPosition.bottom),
                              primaryYAxis: NumericAxis(
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
                                  numberFormat:
                                      NumberFormat.decimalPattern('vi_VN'),
                                  minimum: 0,
                                  maximum: 160,
                                  interval: 40),
                              tooltipBehavior: tooltip2,
                              series: <CartesianSeries>[
                                ColumnSeries<_ChartData2, String>(
                                  dataSource: data2,
                                  xValueMapper: (_ChartData2 data2, _) =>
                                      data2.x,
                                  yValueMapper: (_ChartData2 data2, _) =>
                                      data2.y,
                                  // Sorting based on the specified field
                                  //sortingOrder: SortingOrder.descending,
                                  //sortFieldValueMapper: (_ChartData data, _) =>
                                  //data.y,
                                  dataLabelSettings: const DataLabelSettings(
                                      // Renders the data label
                                      isVisible: true,
                                      labelAlignment:
                                          ChartDataLabelAlignment.top,
                                      textStyle: TextStyle(
                                          fontSize: 9, color: Colors.black)),
                                  width: 0.8, // Width of the bars
                                  spacing: 0.05,
                                  name: 'Cilacap',
                                  color:
                                      const Color.fromARGB(255, 121, 247, 109),
                                ),
                                ColumnSeries<_ChartData2, String>(
                                  dataSource: data2,
                                  xValueMapper: (_ChartData2 data2, _) =>
                                      data2.x,
                                  yValueMapper: (_ChartData2 data2, _) =>
                                      data2.y1,
                                  // Sorting based on the specified field
                                  //sortingOrder: SortingOrder.descending,
                                  //sortFieldValueMapper: (_ChartData data, _) =>
                                  //data.y,
                                  dataLabelSettings: const DataLabelSettings(
                                      // Renders the data label
                                      isVisible: true,
                                      labelAlignment:
                                          ChartDataLabelAlignment.outer,
                                      textStyle: TextStyle(fontSize: 9)),
                                  name: 'Jateng',
                                  width: 0.8, // Width of the bars
                                  spacing: 0.05,
                                  color:
                                      const Color.fromARGB(255, 240, 164, 50),
                                ),
                              ]),
                        ),
                        const SizedBox(
                            child: Text(
                          "Klik pada legenda untuk menonaktifkan/mengaktifkan series/kelompok data",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        )),
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
                              "Puncak ASFR terletak pada Wanita umur 25-29 tahun. Terdapat 136 kelahiran dari 1.000 perempuan umur 25-29 tahun.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Pola ASFR berbentuk U terbalik. Angka kelahiran yang tinggi berada pada masa-masa kelompok usia subur wanita yaitu pada rentang usia 20-34 tahun.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Berdasarkan generasi, kelahiran didominasi oleh perempuan generasi millennial (kisaran umur 26-41 tahun).",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(
                          height: 0.04 * screenHeight,
                        )
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

class _ChartData1 {
  _ChartData1(this.x, this.y);
  final String x;
  final double? y;
}

class _ChartData2 {
  _ChartData2(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}
