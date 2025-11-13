// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelGiniKabkot {
  final int id;
  final String wilayah;
  final String gini2021;
  final String gini2022;
  final String gini2023;
  final String tahun;

  const modelGiniKabkot({
    required this.id,
    required this.wilayah,
    required this.gini2021,
    required this.gini2022,
    required this.gini2023,
    required this.tahun,
  });

  factory modelGiniKabkot.fromJson(Map<String, dynamic> json) {
    return modelGiniKabkot(
      id: json['id'],
      wilayah: json['wilayah'],
      gini2021: json['gini2021'],
      gini2022: json['gini2022'],
      gini2023: json['gini2023'],
      tahun: json['tahun'],
    );
  }
}

class RepositoryGiniKabkot {
  final _baseURL = 'https://bps-3301-asap.my.id/api/ketimpangan-gini';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiginikabkot) => modelGiniKabkot.fromJson(isiginikabkot))
            .toList();
      }
    } catch (isiginikabkot) {
      // ignore: avoid_print
      print(isiginikabkot.toString());
    }
  }
}

class GrafikGiniKabkot extends StatefulWidget {
  const GrafikGiniKabkot({Key? key}) : super(key: key);

  @override
  _GrafikGiniKabkotState createState() => _GrafikGiniKabkotState();
}

class _GrafikGiniKabkotState extends State<GrafikGiniKabkot> {
  RepositoryGiniKabkot repositorygini = RepositoryGiniKabkot();
  int key = 0;
  late List<_ChartData> data;
  late TooltipBehavior tooltip;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return FutureBuilder(
      future: repositorygini.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiginikabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thn3 = isiginikabkot[index = 0].tahun.substring(10, 14);

              String wilayah1 = isiginikabkot[index = 0].wilayah.substring(6);
              String wilayah2 = isiginikabkot[index = 1].wilayah.substring(6);
              String wilayah3 = isiginikabkot[index = 2].wilayah.substring(6);
              String wilayah4 = isiginikabkot[index = 3].wilayah.substring(6);
              String wilayah5 = isiginikabkot[index = 4].wilayah.substring(6);
              String wilayah6 = isiginikabkot[index = 5].wilayah.substring(6);
              String wilayah7 = isiginikabkot[index = 6].wilayah.substring(6);
              String wilayah8 = isiginikabkot[index = 7].wilayah.substring(6);
              String wilayah9 = isiginikabkot[index = 8].wilayah.substring(6);
              String wilayah10 = isiginikabkot[index = 9].wilayah.substring(6);
              String wilayah11 = isiginikabkot[index = 10].wilayah.substring(6);
              String wilayah12 = isiginikabkot[index = 11].wilayah.substring(6);
              String wilayah13 = isiginikabkot[index = 12].wilayah.substring(6);
              String wilayah14 = isiginikabkot[index = 13].wilayah.substring(6);
              String wilayah15 = isiginikabkot[index = 14].wilayah.substring(6);
              String wilayah16 = isiginikabkot[index = 15].wilayah.substring(6);
              String wilayah17 = isiginikabkot[index = 16].wilayah.substring(6);
              String wilayah18 = isiginikabkot[index = 17].wilayah.substring(6);
              String wilayah19 = isiginikabkot[index = 18].wilayah.substring(6);
              String wilayah20 = isiginikabkot[index = 19].wilayah.substring(6);
              String wilayah21 = isiginikabkot[index = 20].wilayah.substring(6);
              String wilayah22 = isiginikabkot[index = 21].wilayah.substring(6);
              String wilayah23 = isiginikabkot[index = 22].wilayah.substring(6);
              String wilayah24 = isiginikabkot[index = 23].wilayah.substring(6);
              String wilayah25 = isiginikabkot[index = 24].wilayah.substring(6);
              String wilayah26 = isiginikabkot[index = 25].wilayah.substring(6);
              String wilayah27 = isiginikabkot[index = 26].wilayah.substring(6);
              String wilayah28 = isiginikabkot[index = 27].wilayah.substring(6);
              String wilayah29 = isiginikabkot[index = 28].wilayah.substring(6);
              String wilayah30 = isiginikabkot[index = 29].wilayah.substring(6);
              String wilayah31 = isiginikabkot[index = 30].wilayah.substring(6);
              String wilayah32 = isiginikabkot[index = 31].wilayah.substring(6);
              String wilayah33 = isiginikabkot[index = 32].wilayah.substring(6);
              String wilayah34 = isiginikabkot[index = 33].wilayah.substring(6);
              String wilayah35 = isiginikabkot[index = 34].wilayah.substring(6);
              String wilayah36 = isiginikabkot[index = 35].wilayah;

              double gini1 = double.parse(isiginikabkot[index = 0].gini2023);
              double gini2 = double.parse(isiginikabkot[index = 1].gini2023);
              double gini3 = double.parse(isiginikabkot[index = 2].gini2023);
              double gini4 = double.parse(isiginikabkot[index = 3].gini2023);
              double gini5 = double.parse(isiginikabkot[index = 4].gini2023);
              double gini6 = double.parse(isiginikabkot[index = 5].gini2023);
              double gini7 = double.parse(isiginikabkot[index = 6].gini2023);
              double gini8 = double.parse(isiginikabkot[index = 7].gini2023);
              double gini9 = double.parse(isiginikabkot[index = 8].gini2023);
              double gini10 = double.parse(isiginikabkot[index = 9].gini2023);
              double gini11 = double.parse(isiginikabkot[index = 10].gini2023);
              double gini12 = double.parse(isiginikabkot[index = 11].gini2023);
              double gini13 = double.parse(isiginikabkot[index = 12].gini2023);
              double gini14 = double.parse(isiginikabkot[index = 13].gini2023);
              double gini15 = double.parse(isiginikabkot[index = 14].gini2023);
              double gini16 = double.parse(isiginikabkot[index = 15].gini2023);
              double gini17 = double.parse(isiginikabkot[index = 16].gini2023);
              double gini18 = double.parse(isiginikabkot[index = 17].gini2023);
              double gini19 = double.parse(isiginikabkot[index = 18].gini2023);
              double gini20 = double.parse(isiginikabkot[index = 19].gini2023);
              double gini21 = double.parse(isiginikabkot[index = 20].gini2023);
              double gini22 = double.parse(isiginikabkot[index = 21].gini2023);
              double gini23 = double.parse(isiginikabkot[index = 22].gini2023);
              double gini24 = double.parse(isiginikabkot[index = 23].gini2023);
              double gini25 = double.parse(isiginikabkot[index = 24].gini2023);
              double gini26 = double.parse(isiginikabkot[index = 25].gini2023);
              double gini27 = double.parse(isiginikabkot[index = 26].gini2023);
              double gini28 = double.parse(isiginikabkot[index = 27].gini2023);
              double gini29 = double.parse(isiginikabkot[index = 28].gini2023);
              double gini30 = double.parse(isiginikabkot[index = 29].gini2023);
              double gini31 = double.parse(isiginikabkot[index = 30].gini2023);
              double gini32 = double.parse(isiginikabkot[index = 31].gini2023);
              double gini33 = double.parse(isiginikabkot[index = 32].gini2023);
              double gini34 = double.parse(isiginikabkot[index = 33].gini2023);
              double gini35 = double.parse(isiginikabkot[index = 34].gini2023);
              double gini36 = double.parse(isiginikabkot[index = 35].gini2023);

              //String tahun = isiginikabkota[index=0].tahun;

              toString();
              data = [
                _ChartData(
                    wilayah1, gini1, const Color.fromARGB(255, 238, 152, 40)),
                _ChartData(
                    wilayah2, gini2, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah3, gini3, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah4, gini4, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah5, gini5, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah6, gini6, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah7, gini7, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah8, gini8, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah9, gini9, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah10, gini10, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah11, gini11, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah12, gini12, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah13, gini13, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah14, gini14, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah15, gini15, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah16, gini16, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah17, gini17, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah18, gini18, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah19, gini19, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah20, gini20, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah21, gini21, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah22, gini22, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah23, gini23, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah24, gini24, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah25, gini25, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah26, gini26, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah27, gini27, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah28, gini28, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah29, gini29, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah30, gini30, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah31, gini31, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah32, gini32, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah33, gini33, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah34, gini34, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah35, gini35, const Color.fromARGB(255, 3, 95, 49)),
                _ChartData(
                    wilayah36, gini36, const Color.fromARGB(255, 236, 43, 236)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Gini Rasio Kabupaten Kota di Jawa Tengah Tahun $thn3',
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
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontFamily: 'Roboto',
                          fontSize: 11,
                          fontStyle: FontStyle.normal,
                        )),
                    legend: Legend(
                        // Visibility of legend
                        isVisible: true,
                        textStyle: const TextStyle(
                        fontSize: 11,
                        ),
                        toggleSeriesVisibility: true,
                        //overflowMode: LegendItemOverflowMode.wrap,
                        position: LegendPosition.top),
                    primaryYAxis: NumericAxis(
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 0.5,
                        interval: 0.1),
                    //zoomPanBehavior: ZoomPanBehavior(
                    //enableDoubleTapZooming: true,
                    //enablePinching: true,
                    // Enables the selection zooming
                    //enableSelectionZooming: true),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        pointColorMapper: (_ChartData data, _) => data.color,
                        // Sorting based on the specified field
                        sortingOrder: SortingOrder.descending,
                        sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.outer,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Gini Rasio',
                        color: const Color.fromARGB(255, 3, 95, 49),
                      ),
                    ]),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Database Error");
        }
        return const Center(
            child: CircularProgressIndicator(
          strokeWidth: 3,
        ));
      },
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);

  final String x;
  final double? y;
  final Color color;
}
