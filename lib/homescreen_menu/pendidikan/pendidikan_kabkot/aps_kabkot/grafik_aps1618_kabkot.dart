// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryPendidikanKabkotApsek {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-apsek';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotApsek.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotApsek {
  final int id;
  final String wilayah;
  final String aps1618_n5;
  final String tahun;

  ModelPendidikanKabkotApsek(
      {required this.id,
      required this.wilayah,
      required this.aps1618_n5,
      required this.tahun});

  factory ModelPendidikanKabkotApsek.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotApsek(
      id: json['id'],
      wilayah: json['wilayah'],
      aps1618_n5: json['aps1618_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikPendidikanKabkotAps1618 extends StatefulWidget {
  const GrafikPendidikanKabkotAps1618({Key? key}) : super(key: key);

  @override
  _GrafikPendidikanKabkotAps1618State createState() =>
      _GrafikPendidikanKabkotAps1618State();
}

class _GrafikPendidikanKabkotAps1618State
    extends State<GrafikPendidikanKabkotAps1618> {
  RepositoryPendidikanKabkotApsek repositorypendidikan =
      RepositoryPendidikanKabkotApsek();
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
      future: repositorypendidikan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipendidikan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String wilayah1 = isipendidikan[index = 0].wilayah;
              String wilayah2 = isipendidikan[index = 1].wilayah;
              String wilayah3 = isipendidikan[index = 2].wilayah;
              String wilayah4 = isipendidikan[index = 3].wilayah;
              String wilayah5 = isipendidikan[index = 4].wilayah;
              String wilayah6 = isipendidikan[index = 5].wilayah;
              String wilayah7 = isipendidikan[index = 6].wilayah;
              String wilayah8 = isipendidikan[index = 7].wilayah;
              String wilayah9 = isipendidikan[index = 8].wilayah;
              String wilayah10 = isipendidikan[index = 9].wilayah;
              String wilayah11 = isipendidikan[index = 10].wilayah;
              String wilayah12 = isipendidikan[index = 11].wilayah;
              String wilayah13 = isipendidikan[index = 12].wilayah;
              String wilayah14 = isipendidikan[index = 13].wilayah;
              String wilayah15 = isipendidikan[index = 14].wilayah;
              String wilayah16 = isipendidikan[index = 15].wilayah;
              String wilayah17 = isipendidikan[index = 16].wilayah;
              String wilayah18 = isipendidikan[index = 17].wilayah;
              String wilayah19 = isipendidikan[index = 18].wilayah;
              String wilayah20 = isipendidikan[index = 19].wilayah;
              String wilayah21 = isipendidikan[index = 20].wilayah;
              String wilayah22 = isipendidikan[index = 21].wilayah;
              String wilayah23 = isipendidikan[index = 22].wilayah;
              String wilayah24 = isipendidikan[index = 23].wilayah;
              String wilayah25 = isipendidikan[index = 24].wilayah;
              String wilayah26 = isipendidikan[index = 25].wilayah;
              String wilayah27 = isipendidikan[index = 26].wilayah;
              String wilayah28 = isipendidikan[index = 27].wilayah;
              String wilayah29 = isipendidikan[index = 28].wilayah;
              String wilayah30 = isipendidikan[index = 29].wilayah;
              String wilayah31 = isipendidikan[index = 30].wilayah;
              String wilayah32 = isipendidikan[index = 31].wilayah;
              String wilayah33 = isipendidikan[index = 32].wilayah;
              String wilayah34 = isipendidikan[index = 33].wilayah;
              String wilayah35 = isipendidikan[index = 34].wilayah;
              String wilayah36 = isipendidikan[index = 35].wilayah;

              double aps1618_1 =
                  double.parse(isipendidikan[index = 0].aps1618_n5);
              double aps1618_2 =
                  double.parse(isipendidikan[index = 1].aps1618_n5);
              double aps1618_3 =
                  double.parse(isipendidikan[index = 2].aps1618_n5);
              double aps1618_4 =
                  double.parse(isipendidikan[index = 3].aps1618_n5);
              double aps1618_5 =
                  double.parse(isipendidikan[index = 4].aps1618_n5);
              double aps1618_6 =
                  double.parse(isipendidikan[index = 5].aps1618_n5);
              double aps1618_7 =
                  double.parse(isipendidikan[index = 6].aps1618_n5);
              double aps1618_8 =
                  double.parse(isipendidikan[index = 7].aps1618_n5);
              double aps1618_9 =
                  double.parse(isipendidikan[index = 8].aps1618_n5);
              double aps1618_10 =
                  double.parse(isipendidikan[index = 9].aps1618_n5);
              double aps1618_11 =
                  double.parse(isipendidikan[index = 10].aps1618_n5);
              double aps1618_12 =
                  double.parse(isipendidikan[index = 11].aps1618_n5);
              double aps1618_13 =
                  double.parse(isipendidikan[index = 12].aps1618_n5);
              double aps1618_14 =
                  double.parse(isipendidikan[index = 13].aps1618_n5);
              double aps1618_15 =
                  double.parse(isipendidikan[index = 14].aps1618_n5);
              double aps1618_16 =
                  double.parse(isipendidikan[index = 15].aps1618_n5);
              double aps1618_17 =
                  double.parse(isipendidikan[index = 16].aps1618_n5);
              double aps1618_18 =
                  double.parse(isipendidikan[index = 17].aps1618_n5);
              double aps1618_19 =
                  double.parse(isipendidikan[index = 18].aps1618_n5);
              double aps1618_20 =
                  double.parse(isipendidikan[index = 19].aps1618_n5);
              double aps1618_21 =
                  double.parse(isipendidikan[index = 20].aps1618_n5);
              double aps1618_22 =
                  double.parse(isipendidikan[index = 21].aps1618_n5);
              double aps1618_23 =
                  double.parse(isipendidikan[index = 22].aps1618_n5);
              double aps1618_24 =
                  double.parse(isipendidikan[index = 23].aps1618_n5);
              double aps1618_25 =
                  double.parse(isipendidikan[index = 24].aps1618_n5);
              double aps1618_26 =
                  double.parse(isipendidikan[index = 25].aps1618_n5);
              double aps1618_27 =
                  double.parse(isipendidikan[index = 26].aps1618_n5);
              double aps1618_28 =
                  double.parse(isipendidikan[index = 27].aps1618_n5);
              double aps1618_29 =
                  double.parse(isipendidikan[index = 28].aps1618_n5);
              double aps1618_30 =
                  double.parse(isipendidikan[index = 29].aps1618_n5);
              double aps1618_31 =
                  double.parse(isipendidikan[index = 30].aps1618_n5);
              double aps1618_32 =
                  double.parse(isipendidikan[index = 31].aps1618_n5);
              double aps1618_33 =
                  double.parse(isipendidikan[index = 32].aps1618_n5);
              double aps1618_34 =
                  double.parse(isipendidikan[index = 33].aps1618_n5);
              double aps1618_35 =
                  double.parse(isipendidikan[index = 34].aps1618_n5);
              double aps1618_36 =
                  double.parse(isipendidikan[index = 35].aps1618_n5);

              String thn5 = isipendidikan[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(wilayah1, aps1618_1,
                    const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(
                    wilayah2, aps1618_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah3, aps1618_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah4, aps1618_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah5, aps1618_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah6, aps1618_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah7, aps1618_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah8, aps1618_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah9, aps1618_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah10, aps1618_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah11, aps1618_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah12, aps1618_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah13, aps1618_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah14, aps1618_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah15, aps1618_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah16, aps1618_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah17, aps1618_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah18, aps1618_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah19, aps1618_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah20, aps1618_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah21, aps1618_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah22, aps1618_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah23, aps1618_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah24, aps1618_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah25, aps1618_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah26, aps1618_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah27, aps1618_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah28, aps1618_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah29, aps1618_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah30, aps1618_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah31, aps1618_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah32, aps1618_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah33, aps1618_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah34, aps1618_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah35, aps1618_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah36, aps1618_36,
                    const Color.fromARGB(255, 243, 53, 243))
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Angka Partisipasi Sekolah (APS) Usia 16-18 Tahun Menurut Kabupaten/Kota di Jawa Tengah Tahun $thn5',
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
                        isVisible: false,
                        textStyle: const TextStyle(
                          fontSize: 11,
                        ),
                        toggleSeriesVisibility: true,
                        position: LegendPosition.top),
                    primaryYAxis: NumericAxis(
                        title: AxisTitle(
                            text: 'APS 16-18 Tahun (persen)',
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
                        maximum: 130,
                        interval: 20),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        pointColorMapper: (_ChartData data, _) => data.color,
                        // Sorting based on the specified field
                        sortingOrder: SortingOrder.ascending,
                        sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.outer,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'APS 16-18 Tahun (persen)',
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
  _ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
