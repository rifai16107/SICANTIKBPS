// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelGrafikSensusJatengWil {
  final int id;
  final String kabupaten;
  final String lk;
  final String pr;
  final String lkpr;
  final String tahun;

  const modelGrafikSensusJatengWil({
    required this.id,
    required this.kabupaten,
    required this.lk,
    required this.pr,
    required this.lkpr,
    required this.tahun,
  });

  factory modelGrafikSensusJatengWil.fromJson(Map<String, dynamic> json) {
    return modelGrafikSensusJatengWil(
      id: json['id'],
      kabupaten: json['kabupaten'],
      lk: json['lk'],
      pr: json['pr'],
      lkpr: json['lkpr'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusJatengWil {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-pddk-jateng-wil';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensuspddkwil) =>
                modelGrafikSensusJatengWil.fromJson(isisensuspddkwil))
            .toList();
      }
    } catch (isisensuspddkwil) {
      // ignore: avoid_print
      print(isisensuspddkwil.toString());
    }
  }
}

class GrafikSensusJatengWil extends StatefulWidget {
  const GrafikSensusJatengWil({Key? key}) : super(key: key);

  @override
  _GrafikSensusJatengWilState createState() => _GrafikSensusJatengWilState();
}

class _GrafikSensusJatengWilState extends State<GrafikSensusJatengWil> {
  RepositorySensusJatengWil repositorysensuspddk = RepositorySensusJatengWil();
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
      future: repositorysensuspddk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisensuspddkwil = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kabupaten1 = isisensuspddkwil[index = 0].kabupaten;
              String kabupaten2 = isisensuspddkwil[index = 1].kabupaten;
              String kabupaten3 = isisensuspddkwil[index = 2].kabupaten;
              String kabupaten4 = isisensuspddkwil[index = 3].kabupaten;
              String kabupaten5 = isisensuspddkwil[index = 4].kabupaten;
              String kabupaten6 = isisensuspddkwil[index = 5].kabupaten;
              String kabupaten7 = isisensuspddkwil[index = 6].kabupaten;
              String kabupaten8 = isisensuspddkwil[index = 7].kabupaten;
              String kabupaten9 = isisensuspddkwil[index = 8].kabupaten;
              String kabupaten10 = isisensuspddkwil[index = 9].kabupaten;
              String kabupaten11 = isisensuspddkwil[index = 10].kabupaten;
              String kabupaten12 = isisensuspddkwil[index = 11].kabupaten;
              String kabupaten13 = isisensuspddkwil[index = 12].kabupaten;
              String kabupaten14 = isisensuspddkwil[index = 13].kabupaten;
              String kabupaten15 = isisensuspddkwil[index = 14].kabupaten;
              String kabupaten16 = isisensuspddkwil[index = 15].kabupaten;
              String kabupaten17 = isisensuspddkwil[index = 16].kabupaten;
              String kabupaten18 = isisensuspddkwil[index = 17].kabupaten;
              String kabupaten19 = isisensuspddkwil[index = 18].kabupaten;
              String kabupaten20 = isisensuspddkwil[index = 19].kabupaten;
              String kabupaten21 = isisensuspddkwil[index = 20].kabupaten;
              String kabupaten22 = isisensuspddkwil[index = 21].kabupaten;
              String kabupaten23 = isisensuspddkwil[index = 22].kabupaten;
              String kabupaten24 = isisensuspddkwil[index = 23].kabupaten;
              String kabupaten25 = isisensuspddkwil[index = 24].kabupaten;
              String kabupaten26 = isisensuspddkwil[index = 25].kabupaten;
              String kabupaten27 = isisensuspddkwil[index = 26].kabupaten;
              String kabupaten28 = isisensuspddkwil[index = 27].kabupaten;
              String kabupaten29 = isisensuspddkwil[index = 28].kabupaten;
              String kabupaten30 = isisensuspddkwil[index = 29].kabupaten;
              String kabupaten31 = isisensuspddkwil[index = 30].kabupaten;
              String kabupaten32 = isisensuspddkwil[index = 31].kabupaten;
              String kabupaten33 = isisensuspddkwil[index = 32].kabupaten;
              String kabupaten34 = isisensuspddkwil[index = 33].kabupaten;
              String kabupaten35 = isisensuspddkwil[index = 34].kabupaten;

              double lkpr1 =
                  double.parse(isisensuspddkwil[index = 0].lkpr) / 1000;
              double lkpr2 =
                  double.parse(isisensuspddkwil[index = 1].lkpr) / 1000;
              double lkpr3 =
                  double.parse(isisensuspddkwil[index = 2].lkpr) / 1000;
              double lkpr4 =
                  double.parse(isisensuspddkwil[index = 3].lkpr) / 1000;
              double lkpr5 =
                  double.parse(isisensuspddkwil[index = 4].lkpr) / 1000;
              double lkpr6 =
                  double.parse(isisensuspddkwil[index = 5].lkpr) / 1000;
              double lkpr7 =
                  double.parse(isisensuspddkwil[index = 6].lkpr) / 1000;
              double lkpr8 =
                  double.parse(isisensuspddkwil[index = 7].lkpr) / 1000;
              double lkpr9 =
                  double.parse(isisensuspddkwil[index = 8].lkpr) / 1000;
              double lkpr10 =
                  double.parse(isisensuspddkwil[index = 9].lkpr) / 1000;
              double lkpr11 =
                  double.parse(isisensuspddkwil[index = 10].lkpr) / 1000;
              double lkpr12 =
                  double.parse(isisensuspddkwil[index = 11].lkpr) / 1000;
              double lkpr13 =
                  double.parse(isisensuspddkwil[index = 12].lkpr) / 1000;
              double lkpr14 =
                  double.parse(isisensuspddkwil[index = 13].lkpr) / 1000;
              double lkpr15 =
                  double.parse(isisensuspddkwil[index = 14].lkpr) / 1000;
              double lkpr16 =
                  double.parse(isisensuspddkwil[index = 15].lkpr) / 1000;
              double lkpr17 =
                  double.parse(isisensuspddkwil[index = 16].lkpr) / 1000;
              double lkpr18 =
                  double.parse(isisensuspddkwil[index = 17].lkpr) / 1000;
              double lkpr19 =
                  double.parse(isisensuspddkwil[index = 18].lkpr) / 1000;
              double lkpr20 =
                  double.parse(isisensuspddkwil[index = 19].lkpr) / 1000;
              double lkpr21 =
                  double.parse(isisensuspddkwil[index = 20].lkpr) / 1000;
              double lkpr22 =
                  double.parse(isisensuspddkwil[index = 21].lkpr) / 1000;
              double lkpr23 =
                  double.parse(isisensuspddkwil[index = 22].lkpr) / 1000;
              double lkpr24 =
                  double.parse(isisensuspddkwil[index = 23].lkpr) / 1000;
              double lkpr25 =
                  double.parse(isisensuspddkwil[index = 24].lkpr) / 1000;
              double lkpr26 =
                  double.parse(isisensuspddkwil[index = 25].lkpr) / 1000;
              double lkpr27 =
                  double.parse(isisensuspddkwil[index = 26].lkpr) / 1000;
              double lkpr28 =
                  double.parse(isisensuspddkwil[index = 27].lkpr) / 1000;
              double lkpr29 =
                  double.parse(isisensuspddkwil[index = 28].lkpr) / 1000;
              double lkpr30 =
                  double.parse(isisensuspddkwil[index = 29].lkpr) / 1000;
              double lkpr31 =
                  double.parse(isisensuspddkwil[index = 30].lkpr) / 1000;
              double lkpr32 =
                  double.parse(isisensuspddkwil[index = 31].lkpr) / 1000;
              double lkpr33 =
                  double.parse(isisensuspddkwil[index = 32].lkpr) / 1000;
              double lkpr34 =
                  double.parse(isisensuspddkwil[index = 33].lkpr) / 1000;
              double lkpr35 =
                  double.parse(isisensuspddkwil[index = 34].lkpr) / 1000;

              //String tahun = isisensuspddkwil[index=0].tahun;

              toString();
              data = [
                _ChartData(kabupaten1, lkpr1),
                _ChartData(kabupaten2, lkpr2),
                _ChartData(kabupaten3, lkpr3),
                _ChartData(kabupaten4, lkpr4),
                _ChartData(kabupaten5, lkpr5),
                _ChartData(kabupaten6, lkpr6),
                _ChartData(kabupaten7, lkpr7),
                _ChartData(kabupaten8, lkpr8),
                _ChartData(kabupaten9, lkpr9),
                _ChartData(kabupaten10, lkpr10),
                _ChartData(kabupaten11, lkpr11),
                _ChartData(kabupaten12, lkpr12),
                _ChartData(kabupaten13, lkpr13),
                _ChartData(kabupaten14, lkpr14),
                _ChartData(kabupaten15, lkpr15),
                _ChartData(kabupaten16, lkpr16),
                _ChartData(kabupaten17, lkpr17),
                _ChartData(kabupaten18, lkpr18),
                _ChartData(kabupaten19, lkpr19),
                _ChartData(kabupaten20, lkpr20),
                _ChartData(kabupaten21, lkpr21),
                _ChartData(kabupaten22, lkpr22),
                _ChartData(kabupaten23, lkpr23),
                _ChartData(kabupaten24, lkpr24),
                _ChartData(kabupaten25, lkpr25),
                _ChartData(kabupaten26, lkpr26),
                _ChartData(kabupaten27, lkpr27),
                _ChartData(kabupaten28, lkpr28),
                _ChartData(kabupaten29, lkpr29),
                _ChartData(kabupaten30, lkpr30),
                _ChartData(kabupaten31, lkpr31),
                _ChartData(kabupaten32, lkpr32),
                _ChartData(kabupaten33, lkpr33),
                _ChartData(kabupaten34, lkpr34),
                _ChartData(kabupaten35, lkpr35),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Penduduk Jawa Tengah Menurut Kabupaten/Kota Hasil Sensus Penduduk Tahun 2020',
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
                        position: LegendPosition.top),
                    primaryYAxis: NumericAxis(
                        title: AxisTitle(
                            text: 'Jumlah Penduduk',
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            )),
                        axisLabelFormatter: (AxisLabelRenderDetails args) {
                          if (args.value < 0) {
                            return ChartAxisLabel(
                                '${args.text}K', args.textStyle);
                          }
                          return ChartAxisLabel(
                              '${args.text}K', args.textStyle);
                          //return ChartAxisLabel(args.text, args.textStyle);
                        },
                        //numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        numberFormat: NumberFormat("###,###.##", "vi_VN"),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 2800,
                        interval: 500),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,

                        // Sorting based on the specified field
                        sortingOrder: SortingOrder.ascending,
                        sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Jumlah Penduduk (Ribuan Jiwa)',
                        color: const Color.fromRGBO(9, 0, 136, 1),
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
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
