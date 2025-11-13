// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryPendidikanKabkotAmh1524 {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-amh';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotAmh1524.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotAmh1524 {
  final int id;
  final String wilayah;
  final String amh1524_n5;
  final String tahun;

  ModelPendidikanKabkotAmh1524(
      {required this.id,
      required this.wilayah,
      required this.amh1524_n5,
      required this.tahun});

  factory ModelPendidikanKabkotAmh1524.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotAmh1524(
      id: json['id'],
      wilayah: json['wilayah'],
      amh1524_n5: json['amh1524_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikPendidikanKabkotAmh1524 extends StatefulWidget {
  const GrafikPendidikanKabkotAmh1524({Key? key}) : super(key: key);

  @override
  _GrafikPendidikanKabkotAmh1524State createState() =>
      _GrafikPendidikanKabkotAmh1524State();
}

class _GrafikPendidikanKabkotAmh1524State
    extends State<GrafikPendidikanKabkotAmh1524> {
  RepositoryPendidikanKabkotAmh1524 repositorypendidikan =
      RepositoryPendidikanKabkotAmh1524();
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

              double amh1524_1 = double.parse(isipendidikan[index = 0].amh1524_n5);
              double amh1524_2 = double.parse(isipendidikan[index = 1].amh1524_n5);
              double amh1524_3 = double.parse(isipendidikan[index = 2].amh1524_n5);
              double amh1524_4 = double.parse(isipendidikan[index = 3].amh1524_n5);
              double amh1524_5 = double.parse(isipendidikan[index = 4].amh1524_n5);
              double amh1524_6 = double.parse(isipendidikan[index = 5].amh1524_n5);
              double amh1524_7 = double.parse(isipendidikan[index = 6].amh1524_n5);
              double amh1524_8 = double.parse(isipendidikan[index = 7].amh1524_n5);
              double amh1524_9 = double.parse(isipendidikan[index = 8].amh1524_n5);
              double amh1524_10 =
                  double.parse(isipendidikan[index = 9].amh1524_n5);
              double amh1524_11 =
                  double.parse(isipendidikan[index = 10].amh1524_n5);
              double amh1524_12 =
                  double.parse(isipendidikan[index = 11].amh1524_n5);
              double amh1524_13 =
                  double.parse(isipendidikan[index = 12].amh1524_n5);
              double amh1524_14 =
                  double.parse(isipendidikan[index = 13].amh1524_n5);
              double amh1524_15 =
                  double.parse(isipendidikan[index = 14].amh1524_n5);
              double amh1524_16 =
                  double.parse(isipendidikan[index = 15].amh1524_n5);
              double amh1524_17 =
                  double.parse(isipendidikan[index = 16].amh1524_n5);
              double amh1524_18 =
                  double.parse(isipendidikan[index = 17].amh1524_n5);
              double amh1524_19 =
                  double.parse(isipendidikan[index = 18].amh1524_n5);
              double amh1524_20 =
                  double.parse(isipendidikan[index = 19].amh1524_n5);
              double amh1524_21 =
                  double.parse(isipendidikan[index = 20].amh1524_n5);
              double amh1524_22 =
                  double.parse(isipendidikan[index = 21].amh1524_n5);
              double amh1524_23 =
                  double.parse(isipendidikan[index = 22].amh1524_n5);
              double amh1524_24 =
                  double.parse(isipendidikan[index = 23].amh1524_n5);
              double amh1524_25 =
                  double.parse(isipendidikan[index = 24].amh1524_n5);
              double amh1524_26 =
                  double.parse(isipendidikan[index = 25].amh1524_n5);
              double amh1524_27 =
                  double.parse(isipendidikan[index = 26].amh1524_n5);
              double amh1524_28 =
                  double.parse(isipendidikan[index = 27].amh1524_n5);
              double amh1524_29 =
                  double.parse(isipendidikan[index = 28].amh1524_n5);
              double amh1524_30 =
                  double.parse(isipendidikan[index = 29].amh1524_n5);
              double amh1524_31 =
                  double.parse(isipendidikan[index = 30].amh1524_n5);
              double amh1524_32 =
                  double.parse(isipendidikan[index = 31].amh1524_n5);
              double amh1524_33 =
                  double.parse(isipendidikan[index = 32].amh1524_n5);
              double amh1524_34 =
                  double.parse(isipendidikan[index = 33].amh1524_n5);
              double amh1524_35 =
                  double.parse(isipendidikan[index = 34].amh1524_n5);
              double amh1524_36 =
                  double.parse(isipendidikan[index = 35].amh1524_n5);

              String thn5 = isipendidikan[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(
                    wilayah1,amh1524_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(
                    wilayah2,amh1524_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah3,amh1524_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah4,amh1524_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah5,amh1524_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah6,amh1524_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah7,amh1524_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah8,amh1524_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah9,amh1524_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah10,amh1524_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah11,amh1524_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah12,amh1524_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah13,amh1524_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah14,amh1524_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah15,amh1524_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah16,amh1524_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah17,amh1524_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah18,amh1524_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah19,amh1524_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah20,amh1524_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah21,amh1524_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah22,amh1524_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah23,amh1524_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah24,amh1524_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah25,amh1524_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah26,amh1524_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah27,amh1524_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah28,amh1524_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah29,amh1524_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah30,amh1524_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah31,amh1524_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah32,amh1524_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah33,amh1524_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah34,amh1524_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah35,amh1524_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah36,amh1524_36,
                    const Color.fromARGB(255, 243, 53, 243))
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Angka Melek Huruf (AMH) Penduduk Usia 15-24 Tahun Menurut Kabupaten/Kota di Jawa Tengah Tahun $thn5',
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
                            text: 'AMH Usia 15-24 Tahun (persen)',
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
                        name: 'AMH Usia 15-24 Tahun (persen)',
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
