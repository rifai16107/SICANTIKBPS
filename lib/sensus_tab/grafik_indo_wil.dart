// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelGrafikSensusIndoWil {
  final int id;
  final String prov;
  final String lk;
  final String pr;
  final String lkpr;
  final String tahun;

  const modelGrafikSensusIndoWil({
    required this.id,
    required this.prov,
    required this.lk,
    required this.pr,
    required this.lkpr,
    required this.tahun,
  });

  factory modelGrafikSensusIndoWil.fromJson(Map<String, dynamic> json) {
    return modelGrafikSensusIndoWil(
      id: json['id'],
      prov: json['prov'],
      lk: json['lk'],
      pr: json['pr'],
      lkpr: json['lkpr'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusIndoWil {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-pddk-indo-wil';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensuspddkwil) =>
                modelGrafikSensusIndoWil.fromJson(isisensuspddkwil))
            .toList();
      }
    } catch (isisensuspddkwil) {
      // ignore: avoid_print
      print(isisensuspddkwil.toString());
    }
  }
}

class GrafikSensusIndoWil extends StatefulWidget {
  const GrafikSensusIndoWil({Key? key}) : super(key: key);

  @override
  _GrafikSensusIndoWilState createState() => _GrafikSensusIndoWilState();
}

class _GrafikSensusIndoWilState extends State<GrafikSensusIndoWil> {
  RepositorySensusIndoWil repositorysensuspddk = RepositorySensusIndoWil();
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
              String prov1 = isisensuspddkwil[index = 0].prov;
              String prov2 = isisensuspddkwil[index = 1].prov;
              String prov3 = isisensuspddkwil[index = 2].prov;
              String prov4 = isisensuspddkwil[index = 3].prov;
              String prov5 = isisensuspddkwil[index = 4].prov;
              String prov6 = isisensuspddkwil[index = 5].prov;
              String prov7 = isisensuspddkwil[index = 6].prov;
              String prov8 = isisensuspddkwil[index = 7].prov;
              String prov9 = isisensuspddkwil[index = 8].prov;
              String prov10 = isisensuspddkwil[index = 9].prov;
              String prov11 = isisensuspddkwil[index = 10].prov;
              String prov12 = isisensuspddkwil[index = 11].prov;
              String prov13 = isisensuspddkwil[index = 12].prov;
              String prov14 = isisensuspddkwil[index = 13].prov;
              String prov15 = isisensuspddkwil[index = 14].prov;
              String prov16 = isisensuspddkwil[index = 15].prov;
              String prov17 = isisensuspddkwil[index = 16].prov;
              String prov18 = isisensuspddkwil[index = 17].prov;
              String prov19 = isisensuspddkwil[index = 18].prov;
              String prov20 = isisensuspddkwil[index = 19].prov;
              String prov21 = isisensuspddkwil[index = 20].prov;
              String prov22 = isisensuspddkwil[index = 21].prov;
              String prov23 = isisensuspddkwil[index = 22].prov;
              String prov24 = isisensuspddkwil[index = 23].prov;
              String prov25 = isisensuspddkwil[index = 24].prov;
              String prov26 = isisensuspddkwil[index = 25].prov;
              String prov27 = isisensuspddkwil[index = 26].prov;
              String prov28 = isisensuspddkwil[index = 27].prov;
              String prov29 = isisensuspddkwil[index = 28].prov;
              String prov30 = isisensuspddkwil[index = 29].prov;
              String prov31 = isisensuspddkwil[index = 30].prov;
              String prov32 = isisensuspddkwil[index = 31].prov;
              String prov33 = isisensuspddkwil[index = 32].prov;
              String prov34 = isisensuspddkwil[index = 33].prov;

              double lkpr1 =
                  double.parse(isisensuspddkwil[index = 0].lkpr) / 1000000;
              double lkpr2 =
                  double.parse(isisensuspddkwil[index = 1].lkpr) / 1000000;
              double lkpr3 =
                  double.parse(isisensuspddkwil[index = 2].lkpr) / 1000000;
              double lkpr4 =
                  double.parse(isisensuspddkwil[index = 3].lkpr) / 1000000;
              double lkpr5 =
                  double.parse(isisensuspddkwil[index = 4].lkpr) / 1000000;
              double lkpr6 =
                  double.parse(isisensuspddkwil[index = 5].lkpr) / 1000000;
              double lkpr7 =
                  double.parse(isisensuspddkwil[index = 6].lkpr) / 1000000;
              double lkpr8 =
                  double.parse(isisensuspddkwil[index = 7].lkpr) / 1000000;
              double lkpr9 =
                  double.parse(isisensuspddkwil[index = 8].lkpr) / 1000000;
              double lkpr10 =
                  double.parse(isisensuspddkwil[index = 9].lkpr) / 1000000;
              double lkpr11 =
                  double.parse(isisensuspddkwil[index = 10].lkpr) / 1000000;
              double lkpr12 =
                  double.parse(isisensuspddkwil[index = 11].lkpr) / 1000000;
              double lkpr13 =
                  double.parse(isisensuspddkwil[index = 12].lkpr) / 1000000;
              double lkpr14 =
                  double.parse(isisensuspddkwil[index = 13].lkpr) / 1000000;
              double lkpr15 =
                  double.parse(isisensuspddkwil[index = 14].lkpr) / 1000000;
              double lkpr16 =
                  double.parse(isisensuspddkwil[index = 15].lkpr) / 1000000;
              double lkpr17 =
                  double.parse(isisensuspddkwil[index = 16].lkpr) / 1000000;
              double lkpr18 =
                  double.parse(isisensuspddkwil[index = 17].lkpr) / 1000000;
              double lkpr19 =
                  double.parse(isisensuspddkwil[index = 18].lkpr) / 1000000;
              double lkpr20 =
                  double.parse(isisensuspddkwil[index = 19].lkpr) / 1000000;
              double lkpr21 =
                  double.parse(isisensuspddkwil[index = 20].lkpr) / 1000000;
              double lkpr22 =
                  double.parse(isisensuspddkwil[index = 21].lkpr) / 1000000;
              double lkpr23 =
                  double.parse(isisensuspddkwil[index = 22].lkpr) / 1000000;
              double lkpr24 =
                  double.parse(isisensuspddkwil[index = 23].lkpr) / 1000000;
              double lkpr25 =
                  double.parse(isisensuspddkwil[index = 24].lkpr) / 1000000;
              double lkpr26 =
                  double.parse(isisensuspddkwil[index = 25].lkpr) / 1000000;
              double lkpr27 =
                  double.parse(isisensuspddkwil[index = 26].lkpr) / 1000000;
              double lkpr28 =
                  double.parse(isisensuspddkwil[index = 27].lkpr) / 1000000;
              double lkpr29 =
                  double.parse(isisensuspddkwil[index = 28].lkpr) / 1000000;
              double lkpr30 =
                  double.parse(isisensuspddkwil[index = 29].lkpr) / 1000000;
              double lkpr31 =
                  double.parse(isisensuspddkwil[index = 30].lkpr) / 1000000;
              double lkpr32 =
                  double.parse(isisensuspddkwil[index = 31].lkpr) / 1000000;
              double lkpr33 =
                  double.parse(isisensuspddkwil[index = 32].lkpr) / 1000000;
              double lkpr34 =
                  double.parse(isisensuspddkwil[index = 33].lkpr) / 1000000;

              //String tahun = isisensuspddkwil[index=0].tahun;

              toString();
              data = [
                _ChartData(prov1, lkpr1),
                _ChartData(prov2, lkpr2),
                _ChartData(prov3, lkpr3),
                _ChartData(prov4, lkpr4),
                _ChartData(prov5, lkpr5),
                _ChartData(prov6, lkpr6),
                _ChartData(prov7, lkpr7),
                _ChartData(prov8, lkpr8),
                _ChartData(prov9, lkpr9),
                _ChartData(prov10, lkpr10),
                _ChartData(prov11, lkpr11),
                _ChartData(prov12, lkpr12),
                _ChartData(prov13, lkpr13),
                _ChartData(prov14, lkpr14),
                _ChartData(prov15, lkpr15),
                _ChartData(prov16, lkpr16),
                _ChartData(prov17, lkpr17),
                _ChartData(prov18, lkpr18),
                _ChartData(prov19, lkpr19),
                _ChartData(prov20, lkpr20),
                _ChartData(prov21, lkpr21),
                _ChartData(prov22, lkpr22),
                _ChartData(prov23, lkpr23),
                _ChartData(prov24, lkpr24),
                _ChartData(prov25, lkpr25),
                _ChartData(prov26, lkpr26),
                _ChartData(prov27, lkpr27),
                _ChartData(prov28, lkpr28),
                _ChartData(prov29, lkpr29),
                _ChartData(prov30, lkpr30),
                _ChartData(prov31, lkpr31),
                _ChartData(prov32, lkpr32),
                _ChartData(prov33, lkpr33),
                _ChartData(prov34, lkpr34),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Penduduk Indonesia Menurut Provinsi Hasil Sensus Penduduk Tahun 2020',
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
                                '${args.text}M', args.textStyle);
                          }
                          return ChartAxisLabel(
                              '${args.text}M', args.textStyle);
                          //return ChartAxisLabel(args.text, args.textStyle);
                        },
                        //numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        numberFormat: NumberFormat("###,###.###", "vi_VN"),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 52,
                        interval: 10),
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
                        name: 'Jumlah Penduduk (Juta Jiwa)',
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
