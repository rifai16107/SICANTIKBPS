// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_longform.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class BangunanCilacap extends StatefulWidget {
  const BangunanCilacap({Key? key}) : super(key: key);

  @override
  State<BangunanCilacap> createState() => _BangunanCilacapState();
}

RepositoryLongform repositorylongform = RepositoryLongform();

class _BangunanCilacapState extends State<BangunanCilacap> {
  late List<_ChartData> data;
  late TooltipBehavior tooltip;

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
          'KETAHANAN BANGUNAN',
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
                double tahanBangunanlfClp = double.parse(
                  isilongform[index = 60].clp,
                );
                double tahanAtaplfClp = double.parse(
                  isilongform[index = 61].clp,
                );
                double tahanDindinglfClp = double.parse(
                  isilongform[index = 62].clp,
                );
                double tahanLantailfClp = double.parse(
                  isilongform[index = 63].clp,
                );

                double tahanBangunanlfJateng = double.parse(
                  isilongform[index = 60].jateng,
                );
                double tahanAtaplfJateng = double.parse(
                  isilongform[index = 61].jateng,
                );
                double tahanDindinglfJateng = double.parse(
                  isilongform[index = 62].jateng,
                );
                double tahanLantailfJateng = double.parse(
                  isilongform[index = 63].jateng,
                );

                //Grafik Ketahanan Bangunan Clp dan Jateng
                data = [
                  _ChartData(
                    "Cilacap",
                    tahanAtaplfClp,
                    tahanDindinglfClp,
                    tahanLantailfClp,
                    tahanBangunanlfClp,
                  ),
                  _ChartData(
                    "Jawa Tengah",
                    tahanAtaplfJateng,
                    tahanDindinglfJateng,
                    tahanLantailfJateng,
                    tahanBangunanlfJateng,
                  ),
                ];

                tooltip = TooltipBehavior(enable: true);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        child: const Text(
                          "Persentase Ketahanan Bangunan Tempat Tinggal di Kabupaten Cilacap dan Jawa Tengah Menurut Komponen Bangunan Hasil Long Form SP2020",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
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
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    color: Colors.green,
                                    child: const Text(
                                      "Komponen Bangunan",
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
                                      right: 0,
                                      top: 15,
                                      bottom: 15,
                                    ),
                                    color: Colors.green,
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
                                      right: 5,
                                      top: 15,
                                      bottom: 15,
                                    ),
                                    color: Colors.green,
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
                              height: screenHeight * 0.11,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "Persentase bangunan yang atapnya memenuhi syarat ketahanan bangunan",
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
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(tahanAtaplfClp, 2),
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
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(tahanAtaplfJateng, 2),
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
                              height: screenHeight * 0.11,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: const Text(
                                        "Persentase bangunan yang dindingnya memenuhi syarat ketahanan bangunan",
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
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(tahanDindinglfClp, 2),
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
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          tahanDindinglfJateng,
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
                              height: screenHeight * 0.11,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: const Text(
                                        "Persentase bangunan yang lantainya memenuhi syarat ketahanan bangunan",
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
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(tahanLantailfClp, 2),
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
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          tahanLantailfJateng,
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
                              height: screenHeight * 0.11,
                              color: Colors.green,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: const Text(
                                        "Persentase bangunan tempat tinggal memenuhi syarat ketahanan bangunan",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(tahanBangunanlfClp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(
                                          tahanBangunanlfJateng,
                                          2,
                                        ),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Divider(height: 15, color: Colors.transparent),

                      //Grafik ketahanan bangunan
                      SizedBox(
                        height: screenHeight * 0.75,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Persentase Bangunan Tempat Tinggal yang komponen bangunannya memenuhi syarat ketahanan tempat tinggal Hasil Long Form SP2020',
                            // Aligns the chart title to left
                            alignment: ChartAlignment.center,
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          legend: Legend(
                            // Visibility of legend
                            padding: 4,
                            itemPadding: 5,
                            overflowMode: LegendItemOverflowMode.wrap,
                            textStyle: const TextStyle(fontSize: 10.5),
                            isVisible: true,
                            position: LegendPosition.bottom,
                          ),
                          primaryYAxis: NumericAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                            numberFormat: NumberFormat.decimalPattern('vi_VN'),
                            minimum: 0,
                            maximum: 120,
                            interval: 20,
                          ),
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
                                labelAlignment: ChartDataLabelAlignment.outer,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              name:
                                  'Bangunan yg atapnya memenuhi syarat ketahanan bangunan',
                              color: const Color.fromARGB(255, 53, 224, 210),
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
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              name:
                                  'Bangunan yg dindingnya memenuhi syarat ketahanan bangunan',
                              color: const Color.fromARGB(255, 170, 240, 80),
                            ),
                            ColumnSeries<_ChartData, String>(
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
                              name:
                                  'Bangunan yg lantainya memenuhi syarat ketahanan bangunan',
                              color: const Color.fromARGB(255, 40, 88, 248),
                            ),
                            ColumnSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y3,
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
                              name:
                                  'Bangunan tempat tinggal yg memenuhi syarat ketahanan bangunan',
                              color: const Color.fromARGB(255, 243, 44, 37),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        child: Text(
                          "Klik pada legenda untuk menonaktifkan/mengaktifkan series/kelompok data",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(6, 47, 230, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 0.01 * screenHeight),
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
                          "Salah satu komponen penentu rumah layak huni adalah ketahanan bangunan, yang dilihat dari bahan bangunan utama atap, dinding, dan lantai rumah terluas.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Bahan bangunan utama atap, dinding, dan lantai rumah terluas yang memenuhi syarat ketahanan bangunan, yaitu:",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Bahan bangunan atap berupa adalah beton, genteng, kayu/sirap, atau seng.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Bahan bangunan dinding berupa tembok, plesteran anyaman bambu/kawat, kayu/papan, atau batang kayu.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Bahan bangunan lantai berupa marmer/granit, keramik, parket/vinil/karpet, ubin/tegel/teraso, kayu/papan, atau semen/bata merah.",
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
  _ChartData(this.x, this.y, this.y1, this.y2, this.y3);
  final String x;
  final double? y;
  final double? y1;
  final double? y2;
  final double? y3;
}
