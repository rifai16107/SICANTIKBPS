// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryNakerKabkotUmk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-umk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotUmk.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

class ModelNakerKabkotUmk {
  final int id;
  final String wilayah;
  final String umk_n1;
  final String umk_n2;
  final String umk_n3;
  final String umk_n4;
  final String umk_n5;
  final String tahun;

  ModelNakerKabkotUmk(
      {required this.id,
      required this.wilayah,
      required this.umk_n1,
      required this.umk_n2,
      required this.umk_n3,
      required this.umk_n4,
      required this.umk_n5,
      required this.tahun});

  factory ModelNakerKabkotUmk.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotUmk(
      id: json['id'],
      wilayah: json['wilayah'],
      umk_n1: json['umk_n1'],
      umk_n2: json['umk_n2'],
      umk_n3: json['umk_n3'],
      umk_n4: json['umk_n4'],
      umk_n5: json['umk_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikKenaikanumkkabkot extends StatefulWidget {
  const GrafikKenaikanumkkabkot({Key? key}) : super(key: key);

  @override
  _GrafikKenaikanumkkabkotState createState() =>
      _GrafikKenaikanumkkabkotState();
}

class _GrafikKenaikanumkkabkotState extends State<GrafikKenaikanumkkabkot> {
  RepositoryNakerKabkotUmk repositorynaker = RepositoryNakerKabkotUmk();
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
      future: repositorynaker.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isinaker = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String wilayah1 = isinaker[index = 0].wilayah;
              String wilayah2 = isinaker[index = 1].wilayah;
              String wilayah3 = isinaker[index = 2].wilayah;
              String wilayah4 = isinaker[index = 3].wilayah;
              String wilayah5 = isinaker[index = 4].wilayah;
              String wilayah6 = isinaker[index = 5].wilayah;
              String wilayah7 = isinaker[index = 6].wilayah;
              String wilayah8 = isinaker[index = 7].wilayah;
              String wilayah9 = isinaker[index = 8].wilayah;
              String wilayah10 = isinaker[index = 9].wilayah;
              String wilayah11 = isinaker[index = 10].wilayah;
              String wilayah12 = isinaker[index = 11].wilayah;
              String wilayah13 = isinaker[index = 12].wilayah;
              String wilayah14 = isinaker[index = 13].wilayah;
              String wilayah15 = isinaker[index = 14].wilayah;
              String wilayah16 = isinaker[index = 15].wilayah;
              String wilayah17 = isinaker[index = 16].wilayah;
              String wilayah18 = isinaker[index = 17].wilayah;
              String wilayah19 = isinaker[index = 18].wilayah;
              String wilayah20 = isinaker[index = 19].wilayah;
              String wilayah21 = isinaker[index = 20].wilayah;
              String wilayah22 = isinaker[index = 21].wilayah;
              String wilayah23 = isinaker[index = 22].wilayah;
              String wilayah24 = isinaker[index = 23].wilayah;
              String wilayah25 = isinaker[index = 24].wilayah;
              String wilayah26 = isinaker[index = 25].wilayah;
              String wilayah27 = isinaker[index = 26].wilayah;
              String wilayah28 = isinaker[index = 27].wilayah;
              String wilayah29 = isinaker[index = 28].wilayah;
              String wilayah30 = isinaker[index = 29].wilayah;
              String wilayah31 = isinaker[index = 30].wilayah;
              String wilayah32 = isinaker[index = 31].wilayah;
              String wilayah33 = isinaker[index = 32].wilayah;
              String wilayah34 = isinaker[index = 33].wilayah;
              String wilayah35 = isinaker[index = 34].wilayah;

              double naikUmk1 = (double.parse(isinaker[index = 0].umk_n5) /
                          double.parse(isinaker[index = 0].umk_n4)) *
                      100 -
                  100;
              double naikUmk2 = (double.parse(isinaker[index = 1].umk_n5) /
                          double.parse(isinaker[index = 1].umk_n4)) *
                      100 -
                  100;
              double naikUmk3 = (double.parse(isinaker[index = 2].umk_n5) /
                          double.parse(isinaker[index = 2].umk_n4)) *
                      100 -
                  100;
              double naikUmk4 = (double.parse(isinaker[index = 3].umk_n5) /
                          double.parse(isinaker[index = 3].umk_n4)) *
                      100 -
                  100;
              double naikUmk5 = (double.parse(isinaker[index = 4].umk_n5) /
                          double.parse(isinaker[index = 4].umk_n4)) *
                      100 -
                  100;
              double naikUmk6 = (double.parse(isinaker[index = 5].umk_n5) /
                          double.parse(isinaker[index = 5].umk_n4)) *
                      100 -
                  100;
              double naikUmk7 = (double.parse(isinaker[index = 6].umk_n5) /
                          double.parse(isinaker[index = 6].umk_n4)) *
                      100 -
                  100;
              double naikUmk8 = (double.parse(isinaker[index = 7].umk_n5) /
                          double.parse(isinaker[index = 7].umk_n4)) *
                      100 -
                  100;
              double naikUmk9 = (double.parse(isinaker[index = 8].umk_n5) /
                          double.parse(isinaker[index = 8].umk_n4)) *
                      100 -
                  100;
              double naikUmk10 = (double.parse(isinaker[index = 9].umk_n5) /
                          double.parse(isinaker[index = 9].umk_n4)) *
                      100 -
                  100;
              double naikUmk11 = (double.parse(isinaker[index = 10].umk_n5) /
                          double.parse(isinaker[index = 10].umk_n4)) *
                      100 -
                  100;
              double naikUmk12 = (double.parse(isinaker[index = 11].umk_n5) /
                          double.parse(isinaker[index = 11].umk_n4)) *
                      100 -
                  100;
              double naikUmk13 = (double.parse(isinaker[index = 12].umk_n5) /
                          double.parse(isinaker[index = 12].umk_n4)) *
                      100 -
                  100;
              double naikUmk14 = (double.parse(isinaker[index = 13].umk_n5) /
                          double.parse(isinaker[index = 13].umk_n4)) *
                      100 -
                  100;
              double naikUmk15 = (double.parse(isinaker[index = 14].umk_n5) /
                          double.parse(isinaker[index = 14].umk_n4)) *
                      100 -
                  100;
              double naikUmk16 = (double.parse(isinaker[index = 15].umk_n5) /
                          double.parse(isinaker[index = 15].umk_n4)) *
                      100 -
                  100;
              double naikUmk17 = (double.parse(isinaker[index = 16].umk_n5) /
                          double.parse(isinaker[index = 16].umk_n4)) *
                      100 -
                  100;
              double naikUmk18 = (double.parse(isinaker[index = 17].umk_n5) /
                          double.parse(isinaker[index = 17].umk_n4)) *
                      100 -
                  100;
              double naikUmk19 = (double.parse(isinaker[index = 18].umk_n5) /
                          double.parse(isinaker[index = 18].umk_n4)) *
                      100 -
                  100;
              double naikUmk20 = (double.parse(isinaker[index = 19].umk_n5) /
                          double.parse(isinaker[index = 19].umk_n4)) *
                      100 -
                  100;
              double naikUmk21 = (double.parse(isinaker[index = 20].umk_n5) /
                          double.parse(isinaker[index = 20].umk_n4)) *
                      100 -
                  100;
              double naikUmk22 = (double.parse(isinaker[index = 21].umk_n5) /
                          double.parse(isinaker[index = 21].umk_n4)) *
                      100 -
                  100;
              double naikUmk23 = (double.parse(isinaker[index = 22].umk_n5) /
                          double.parse(isinaker[index = 22].umk_n4)) *
                      100 -
                  100;
              double naikUmk24 = (double.parse(isinaker[index = 23].umk_n5) /
                          double.parse(isinaker[index = 23].umk_n4)) *
                      100 -
                  100;
              double naikUmk25 = (double.parse(isinaker[index = 24].umk_n5) /
                          double.parse(isinaker[index = 24].umk_n4)) *
                      100 -
                  100;
              double naikUmk26 = (double.parse(isinaker[index = 25].umk_n5) /
                          double.parse(isinaker[index = 25].umk_n4)) *
                      100 -
                  100;
              double naikUmk27 = (double.parse(isinaker[index = 26].umk_n5) /
                          double.parse(isinaker[index = 26].umk_n4)) *
                      100 -
                  100;
              double naikUmk28 = (double.parse(isinaker[index = 27].umk_n5) /
                          double.parse(isinaker[index = 17].umk_n4)) *
                      100 -
                  100;
              double naikUmk29 = (double.parse(isinaker[index = 28].umk_n5) /
                          double.parse(isinaker[index = 28].umk_n4)) *
                      100 -
                  100;
              double naikUmk30 = (double.parse(isinaker[index = 29].umk_n5) /
                          double.parse(isinaker[index = 29].umk_n4)) *
                      100 -
                  100;
              double naikUmk31 = (double.parse(isinaker[index = 30].umk_n5) /
                          double.parse(isinaker[index = 30].umk_n4)) *
                      100 -
                  100;
              double naikUmk32 = (double.parse(isinaker[index = 31].umk_n5) /
                          double.parse(isinaker[index = 31].umk_n4)) *
                      100 -
                  100;
              double naikUmk33 = (double.parse(isinaker[index = 32].umk_n5) /
                          double.parse(isinaker[index = 32].umk_n4)) *
                      100 -
                  100;
              double naikUmk34 = (double.parse(isinaker[index = 33].umk_n5) /
                          double.parse(isinaker[index = 33].umk_n4)) *
                      100 -
                  100;
              double naikUmk35 = (double.parse(isinaker[index = 34].umk_n5) /
                          double.parse(isinaker[index = 34].umk_n4)) *
                      100 -
                  100;

              String thn5 = isinaker[index = 0].tahun.substring(20, 24);
              String thn4 = isinaker[index = 0].tahun.substring(15, 19);

              toString();
              data = [
                _ChartData(wilayah1, naikUmk1),
                _ChartData(wilayah2, naikUmk2),
                _ChartData(wilayah3, naikUmk3),
                _ChartData(wilayah4, naikUmk4),
                _ChartData(wilayah5, naikUmk5),
                _ChartData(wilayah6, naikUmk6),
                _ChartData(wilayah7, naikUmk7),
                _ChartData(wilayah8, naikUmk8),
                _ChartData(wilayah9, naikUmk9),
                _ChartData(wilayah10, naikUmk10),
                _ChartData(wilayah11, naikUmk11),
                _ChartData(wilayah12, naikUmk12),
                _ChartData(wilayah13, naikUmk13),
                _ChartData(wilayah14, naikUmk14),
                _ChartData(wilayah15, naikUmk15),
                _ChartData(wilayah16, naikUmk16),
                _ChartData(wilayah17, naikUmk17),
                _ChartData(wilayah18, naikUmk18),
                _ChartData(wilayah19, naikUmk19),
                _ChartData(wilayah20, naikUmk20),
                _ChartData(wilayah21, naikUmk21),
                _ChartData(wilayah22, naikUmk22),
                _ChartData(wilayah23, naikUmk23),
                _ChartData(wilayah24, naikUmk24),
                _ChartData(wilayah25, naikUmk25),
                _ChartData(wilayah26, naikUmk26),
                _ChartData(wilayah27, naikUmk27),
                _ChartData(wilayah28, naikUmk28),
                _ChartData(wilayah29, naikUmk29),
                _ChartData(wilayah30, naikUmk30),
                _ChartData(wilayah31, naikUmk31),
                _ChartData(wilayah32, naikUmk32),
                _ChartData(wilayah33, naikUmk33),
                _ChartData(wilayah34, naikUmk34),
                _ChartData(wilayah35, naikUmk35),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Kenaikan UMK Kabupaten/Kota di Jawa Tengah Tahun $thn4 - $thn5',
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
                            text: 'Kenaikan UMK (persen)',
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            )),

                        //numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        numberFormat: NumberFormat("###,###.##", "vi_VN"),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 12,
                        interval: 5),
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
                        name: 'Kenaikan UMK (persen)',
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
