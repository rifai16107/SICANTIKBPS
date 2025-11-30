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
  final String apksd_n5;
  final String tahun;

  ModelPendidikanKabkotApmapk(
      {required this.id,
      required this.wilayah,
      required this.apksd_n5,
      required this.tahun});

  factory ModelPendidikanKabkotApmapk.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotApmapk(
      id: json['id'],
      wilayah: json['wilayah'],
      apksd_n5: json['apksd_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikPendidikanKabkotApksd extends StatefulWidget {
  const GrafikPendidikanKabkotApksd({Key? key}) : super(key: key);

  @override
  _GrafikPendidikanKabkotApksdState createState() =>
      _GrafikPendidikanKabkotApksdState();
}

class _GrafikPendidikanKabkotApksdState extends State<GrafikPendidikanKabkotApksd> {
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

              double apksd1 = double.parse(isipendidikan[index = 0].apksd_n5);
              double apksd2 = double.parse(isipendidikan[index = 1].apksd_n5);
              double apksd3 = double.parse(isipendidikan[index = 2].apksd_n5);
              double apksd4 = double.parse(isipendidikan[index = 3].apksd_n5);
              double apksd5 = double.parse(isipendidikan[index = 4].apksd_n5);
              double apksd6 = double.parse(isipendidikan[index = 5].apksd_n5);
              double apksd7 = double.parse(isipendidikan[index = 6].apksd_n5);
              double apksd8 = double.parse(isipendidikan[index = 7].apksd_n5);
              double apksd9 = double.parse(isipendidikan[index = 8].apksd_n5);
              double apksd10 = double.parse(isipendidikan[index = 9].apksd_n5);
              double apksd11 = double.parse(isipendidikan[index = 10].apksd_n5);
              double apksd12 = double.parse(isipendidikan[index = 11].apksd_n5);
              double apksd13 = double.parse(isipendidikan[index = 12].apksd_n5);
              double apksd14 = double.parse(isipendidikan[index = 13].apksd_n5);
              double apksd15 = double.parse(isipendidikan[index = 14].apksd_n5);
              double apksd16 = double.parse(isipendidikan[index = 15].apksd_n5);
              double apksd17 = double.parse(isipendidikan[index = 16].apksd_n5);
              double apksd18 = double.parse(isipendidikan[index = 17].apksd_n5);
              double apksd19 = double.parse(isipendidikan[index = 18].apksd_n5);
              double apksd20 = double.parse(isipendidikan[index = 19].apksd_n5);
              double apksd21 = double.parse(isipendidikan[index = 20].apksd_n5);
              double apksd22 = double.parse(isipendidikan[index = 21].apksd_n5);
              double apksd23 = double.parse(isipendidikan[index = 22].apksd_n5);
              double apksd24 = double.parse(isipendidikan[index = 23].apksd_n5);
              double apksd25 = double.parse(isipendidikan[index = 24].apksd_n5);
              double apksd26 = double.parse(isipendidikan[index = 25].apksd_n5);
              double apksd27 = double.parse(isipendidikan[index = 26].apksd_n5);
              double apksd28 = double.parse(isipendidikan[index = 27].apksd_n5);
              double apksd29 = double.parse(isipendidikan[index = 28].apksd_n5);
              double apksd30 = double.parse(isipendidikan[index = 29].apksd_n5);
              double apksd31 = double.parse(isipendidikan[index = 30].apksd_n5);
              double apksd32 = double.parse(isipendidikan[index = 31].apksd_n5);
              double apksd33 = double.parse(isipendidikan[index = 32].apksd_n5);
              double apksd34 = double.parse(isipendidikan[index = 33].apksd_n5);
              double apksd35 = double.parse(isipendidikan[index = 34].apksd_n5);
              double apksd36 = double.parse(isipendidikan[index = 35].apksd_n5);

              String thn5 = isipendidikan[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(wilayah1, apksd1,const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(wilayah2, apksd2,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah3, apksd3,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah4, apksd4,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah5, apksd5,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah6, apksd6,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah7, apksd7,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah8, apksd8,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah9, apksd9,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah10, apksd10,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah11, apksd11,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah12, apksd12,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah13, apksd13,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah14, apksd14,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah15, apksd15,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah16, apksd16,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah17, apksd17,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah18, apksd18,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah19, apksd19,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah20, apksd20,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah21, apksd21,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah22, apksd22,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah23, apksd23,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah24, apksd24,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah25, apksd25,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah26, apksd26,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah27, apksd27,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah28, apksd28,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah29, apksd29,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah30, apksd30,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah31, apksd31,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah32, apksd32,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah33, apksd33,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah34, apksd34,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah35, apksd35,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah36, apksd36,const Color.fromARGB(255, 243, 53, 243))
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight*0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Angka Partisipasi Kasar (APK) SD/sederajat di Kabupaten/Kota di Jawa Tengah Tahun $thn5',
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
                            text: 'APK SD (persen)',
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
                        name: 'APK SD (persen)',
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
