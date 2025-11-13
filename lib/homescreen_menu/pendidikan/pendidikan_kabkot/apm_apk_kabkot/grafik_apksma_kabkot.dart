// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryPendidikanKabkotApmapk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-apmapk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) => ModelPendidikanKabkotApmapk.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotApmapk {
  final int id;
  final String wilayah;
  final String apksma_n5;
  final String tahun;

  ModelPendidikanKabkotApmapk(
      {required this.id,
      required this.wilayah,
      required this.apksma_n5,
      required this.tahun});

  factory ModelPendidikanKabkotApmapk.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotApmapk(
      id: json['id'],
      wilayah: json['wilayah'],
      apksma_n5: json['apksma_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikPendidikanKabkotApksma extends StatefulWidget {
  const GrafikPendidikanKabkotApksma({Key? key}) : super(key: key);

  @override
  _GrafikPendidikanKabkotApksmaState createState() =>
      _GrafikPendidikanKabkotApksmaState();
}

class _GrafikPendidikanKabkotApksmaState extends State<GrafikPendidikanKabkotApksma> {
  RepositoryPendidikanKabkotApmapk repositorypendidikan =
      RepositoryPendidikanKabkotApmapk();
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

              double apksma1 = double.parse(isipendidikan[index = 0].apksma_n5);
              double apksma2 = double.parse(isipendidikan[index = 1].apksma_n5);
              double apksma3 = double.parse(isipendidikan[index = 2].apksma_n5);
              double apksma4 = double.parse(isipendidikan[index = 3].apksma_n5);
              double apksma5 = double.parse(isipendidikan[index = 4].apksma_n5);
              double apksma6 = double.parse(isipendidikan[index = 5].apksma_n5);
              double apksma7 = double.parse(isipendidikan[index = 6].apksma_n5);
              double apksma8 = double.parse(isipendidikan[index = 7].apksma_n5);
              double apksma9 = double.parse(isipendidikan[index = 8].apksma_n5);
              double apksma10 = double.parse(isipendidikan[index = 9].apksma_n5);
              double apksma11 = double.parse(isipendidikan[index = 10].apksma_n5);
              double apksma12 = double.parse(isipendidikan[index = 11].apksma_n5);
              double apksma13 = double.parse(isipendidikan[index = 12].apksma_n5);
              double apksma14 = double.parse(isipendidikan[index = 13].apksma_n5);
              double apksma15 = double.parse(isipendidikan[index = 14].apksma_n5);
              double apksma16 = double.parse(isipendidikan[index = 15].apksma_n5);
              double apksma17 = double.parse(isipendidikan[index = 16].apksma_n5);
              double apksma18 = double.parse(isipendidikan[index = 17].apksma_n5);
              double apksma19 = double.parse(isipendidikan[index = 18].apksma_n5);
              double apksma20 = double.parse(isipendidikan[index = 19].apksma_n5);
              double apksma21 = double.parse(isipendidikan[index = 20].apksma_n5);
              double apksma22 = double.parse(isipendidikan[index = 21].apksma_n5);
              double apksma23 = double.parse(isipendidikan[index = 22].apksma_n5);
              double apksma24 = double.parse(isipendidikan[index = 23].apksma_n5);
              double apksma25 = double.parse(isipendidikan[index = 24].apksma_n5);
              double apksma26 = double.parse(isipendidikan[index = 25].apksma_n5);
              double apksma27 = double.parse(isipendidikan[index = 26].apksma_n5);
              double apksma28 = double.parse(isipendidikan[index = 27].apksma_n5);
              double apksma29 = double.parse(isipendidikan[index = 28].apksma_n5);
              double apksma30 = double.parse(isipendidikan[index = 29].apksma_n5);
              double apksma31 = double.parse(isipendidikan[index = 30].apksma_n5);
              double apksma32 = double.parse(isipendidikan[index = 31].apksma_n5);
              double apksma33 = double.parse(isipendidikan[index = 32].apksma_n5);
              double apksma34 = double.parse(isipendidikan[index = 33].apksma_n5);
              double apksma35 = double.parse(isipendidikan[index = 34].apksma_n5);
              double apksma36 = double.parse(isipendidikan[index = 35].apksma_n5);

              String thn5 = isipendidikan[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(wilayah1, apksma1,const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(wilayah2, apksma2,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah3, apksma3,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah4, apksma4,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah5, apksma5,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah6, apksma6,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah7, apksma7,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah8, apksma8,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah9, apksma9,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah10, apksma10,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah11, apksma11,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah12, apksma12,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah13, apksma13,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah14, apksma14,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah15, apksma15,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah16, apksma16,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah17, apksma17,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah18, apksma18,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah19, apksma19,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah20, apksma20,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah21, apksma21,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah22, apksma22,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah23, apksma23,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah24, apksma24,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah25, apksma25,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah26, apksma26,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah27, apksma27,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah28, apksma28,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah29, apksma29,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah30, apksma30,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah31, apksma31,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah32, apksma32,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah33, apksma33,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah34, apksma34,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah35, apksma35,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah36, apksma36,const Color.fromARGB(255, 243, 53, 243))
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Angka Partisipasi Kasar (APK) SMA/sederajat di Kabupaten/Kota di Jawa Tengah Tahun $thn5',
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
                            text: 'APK SMA (persen)',
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
                        name: 'APK SMA (persen)',
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
