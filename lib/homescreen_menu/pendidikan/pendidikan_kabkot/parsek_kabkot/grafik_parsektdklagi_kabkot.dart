// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryPendidikanKabkotParsektdklagi {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-parsek';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotParsektdklagi.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotParsektdklagi {
  final int id;
  final String wilayah;
  final String tidaklagi_n5;
  final String tahun;

  ModelPendidikanKabkotParsektdklagi(
      {required this.id,
      required this.wilayah,
      required this.tidaklagi_n5,
      required this.tahun});

  factory ModelPendidikanKabkotParsektdklagi.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotParsektdklagi(
      id: json['id'],
      wilayah: json['wilayah'],
      tidaklagi_n5: json['tidaklagi_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikPendidikanKabkotParsektdklagi extends StatefulWidget {
  const GrafikPendidikanKabkotParsektdklagi({Key? key}) : super(key: key);

  @override
  _GrafikPendidikanKabkotParsektdklagiState createState() =>
      _GrafikPendidikanKabkotParsektdklagiState();
}

class _GrafikPendidikanKabkotParsektdklagiState
    extends State<GrafikPendidikanKabkotParsektdklagi> {
  RepositoryPendidikanKabkotParsektdklagi repositorypendidikan =
      RepositoryPendidikanKabkotParsektdklagi();
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

              double tidaklagi_1 = double.parse(isipendidikan[index = 0].tidaklagi_n5);
              double tidaklagi_2 = double.parse(isipendidikan[index = 1].tidaklagi_n5);
              double tidaklagi_3 = double.parse(isipendidikan[index = 2].tidaklagi_n5);
              double tidaklagi_4 = double.parse(isipendidikan[index = 3].tidaklagi_n5);
              double tidaklagi_5 = double.parse(isipendidikan[index = 4].tidaklagi_n5);
              double tidaklagi_6 = double.parse(isipendidikan[index = 5].tidaklagi_n5);
              double tidaklagi_7 = double.parse(isipendidikan[index = 6].tidaklagi_n5);
              double tidaklagi_8 = double.parse(isipendidikan[index = 7].tidaklagi_n5);
              double tidaklagi_9 = double.parse(isipendidikan[index = 8].tidaklagi_n5);
              double tidaklagi_10 =
                  double.parse(isipendidikan[index = 9].tidaklagi_n5);
              double tidaklagi_11 =
                  double.parse(isipendidikan[index = 10].tidaklagi_n5);
              double tidaklagi_12 =
                  double.parse(isipendidikan[index = 11].tidaklagi_n5);
              double tidaklagi_13 =
                  double.parse(isipendidikan[index = 12].tidaklagi_n5);
              double tidaklagi_14 =
                  double.parse(isipendidikan[index = 13].tidaklagi_n5);
              double tidaklagi_15 =
                  double.parse(isipendidikan[index = 14].tidaklagi_n5);
              double tidaklagi_16 =
                  double.parse(isipendidikan[index = 15].tidaklagi_n5);
              double tidaklagi_17 =
                  double.parse(isipendidikan[index = 16].tidaklagi_n5);
              double tidaklagi_18 =
                  double.parse(isipendidikan[index = 17].tidaklagi_n5);
              double tidaklagi_19 =
                  double.parse(isipendidikan[index = 18].tidaklagi_n5);
              double tidaklagi_20 =
                  double.parse(isipendidikan[index = 19].tidaklagi_n5);
              double tidaklagi_21 =
                  double.parse(isipendidikan[index = 20].tidaklagi_n5);
              double tidaklagi_22 =
                  double.parse(isipendidikan[index = 21].tidaklagi_n5);
              double tidaklagi_23 =
                  double.parse(isipendidikan[index = 22].tidaklagi_n5);
              double tidaklagi_24 =
                  double.parse(isipendidikan[index = 23].tidaklagi_n5);
              double tidaklagi_25 =
                  double.parse(isipendidikan[index = 24].tidaklagi_n5);
              double tidaklagi_26 =
                  double.parse(isipendidikan[index = 25].tidaklagi_n5);
              double tidaklagi_27 =
                  double.parse(isipendidikan[index = 26].tidaklagi_n5);
              double tidaklagi_28 =
                  double.parse(isipendidikan[index = 27].tidaklagi_n5);
              double tidaklagi_29 =
                  double.parse(isipendidikan[index = 28].tidaklagi_n5);
              double tidaklagi_30 =
                  double.parse(isipendidikan[index = 29].tidaklagi_n5);
              double tidaklagi_31 =
                  double.parse(isipendidikan[index = 30].tidaklagi_n5);
              double tidaklagi_32 =
                  double.parse(isipendidikan[index = 31].tidaklagi_n5);
              double tidaklagi_33 =
                  double.parse(isipendidikan[index = 32].tidaklagi_n5);
              double tidaklagi_34 =
                  double.parse(isipendidikan[index = 33].tidaklagi_n5);
              double tidaklagi_35 =
                  double.parse(isipendidikan[index = 34].tidaklagi_n5);
              double tidaklagi_36 =
                  double.parse(isipendidikan[index = 35].tidaklagi_n5);

              String thn5 = isipendidikan[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(
                    wilayah1, tidaklagi_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(
                    wilayah2, tidaklagi_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah3, tidaklagi_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah4, tidaklagi_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah5, tidaklagi_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah6, tidaklagi_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah7, tidaklagi_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah8, tidaklagi_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah9, tidaklagi_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah10, tidaklagi_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah11, tidaklagi_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah12, tidaklagi_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah13, tidaklagi_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah14, tidaklagi_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah15, tidaklagi_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah16, tidaklagi_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah17, tidaklagi_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah18, tidaklagi_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah19, tidaklagi_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah20, tidaklagi_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah21, tidaklagi_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah22, tidaklagi_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah23, tidaklagi_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah24, tidaklagi_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah25, tidaklagi_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah26, tidaklagi_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah27, tidaklagi_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah28, tidaklagi_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah29, tidaklagi_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah30, tidaklagi_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah31, tidaklagi_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah32, tidaklagi_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah33, tidaklagi_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah34, tidaklagi_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    wilayah35, tidaklagi_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah36, tidaklagi_36,
                    const Color.fromARGB(255, 243, 53, 243))
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Persentase Penduduk Usia 5+ yang Berstatus Tidak Bersekolah Lagi Menurut Kabupaten/Kota di Jawa Tengah Tahun $thn5',
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
                            text: 'Tidak Bersekolah Lagi (persen)',
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
                        maximum: 100,
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
                        name: 'Tidak Bersekolah lagi (persen)',
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
