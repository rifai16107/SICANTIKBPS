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
  final String apmsd_n5;
  final String tahun;

  ModelPendidikanKabkotApmapk(
      {required this.id,
      required this.wilayah,
      required this.apmsd_n5,
      required this.tahun});

  factory ModelPendidikanKabkotApmapk.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotApmapk(
      id: json['id'],
      wilayah: json['wilayah'],
      apmsd_n5: json['apmsd_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikPendidikanKabkotApmsd extends StatefulWidget {
  const GrafikPendidikanKabkotApmsd({Key? key}) : super(key: key);

  @override
  _GrafikPendidikanKabkotApmsdState createState() =>
      _GrafikPendidikanKabkotApmsdState();
}

class _GrafikPendidikanKabkotApmsdState extends State<GrafikPendidikanKabkotApmsd> {
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

              double apmsd1 = double.parse(isipendidikan[index = 0].apmsd_n5);
              double apmsd2 = double.parse(isipendidikan[index = 1].apmsd_n5);
              double apmsd3 = double.parse(isipendidikan[index = 2].apmsd_n5);
              double apmsd4 = double.parse(isipendidikan[index = 3].apmsd_n5);
              double apmsd5 = double.parse(isipendidikan[index = 4].apmsd_n5);
              double apmsd6 = double.parse(isipendidikan[index = 5].apmsd_n5);
              double apmsd7 = double.parse(isipendidikan[index = 6].apmsd_n5);
              double apmsd8 = double.parse(isipendidikan[index = 7].apmsd_n5);
              double apmsd9 = double.parse(isipendidikan[index = 8].apmsd_n5);
              double apmsd10 = double.parse(isipendidikan[index = 9].apmsd_n5);
              double apmsd11 = double.parse(isipendidikan[index = 10].apmsd_n5);
              double apmsd12 = double.parse(isipendidikan[index = 11].apmsd_n5);
              double apmsd13 = double.parse(isipendidikan[index = 12].apmsd_n5);
              double apmsd14 = double.parse(isipendidikan[index = 13].apmsd_n5);
              double apmsd15 = double.parse(isipendidikan[index = 14].apmsd_n5);
              double apmsd16 = double.parse(isipendidikan[index = 15].apmsd_n5);
              double apmsd17 = double.parse(isipendidikan[index = 16].apmsd_n5);
              double apmsd18 = double.parse(isipendidikan[index = 17].apmsd_n5);
              double apmsd19 = double.parse(isipendidikan[index = 18].apmsd_n5);
              double apmsd20 = double.parse(isipendidikan[index = 19].apmsd_n5);
              double apmsd21 = double.parse(isipendidikan[index = 20].apmsd_n5);
              double apmsd22 = double.parse(isipendidikan[index = 21].apmsd_n5);
              double apmsd23 = double.parse(isipendidikan[index = 22].apmsd_n5);
              double apmsd24 = double.parse(isipendidikan[index = 23].apmsd_n5);
              double apmsd25 = double.parse(isipendidikan[index = 24].apmsd_n5);
              double apmsd26 = double.parse(isipendidikan[index = 25].apmsd_n5);
              double apmsd27 = double.parse(isipendidikan[index = 26].apmsd_n5);
              double apmsd28 = double.parse(isipendidikan[index = 27].apmsd_n5);
              double apmsd29 = double.parse(isipendidikan[index = 28].apmsd_n5);
              double apmsd30 = double.parse(isipendidikan[index = 29].apmsd_n5);
              double apmsd31 = double.parse(isipendidikan[index = 30].apmsd_n5);
              double apmsd32 = double.parse(isipendidikan[index = 31].apmsd_n5);
              double apmsd33 = double.parse(isipendidikan[index = 32].apmsd_n5);
              double apmsd34 = double.parse(isipendidikan[index = 33].apmsd_n5);
              double apmsd35 = double.parse(isipendidikan[index = 34].apmsd_n5);
              double apmsd36 = double.parse(isipendidikan[index = 35].apmsd_n5);

              String thn5 = isipendidikan[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(wilayah1, apmsd1,const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(wilayah2, apmsd2,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah3, apmsd3,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah4, apmsd4,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah5, apmsd5,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah6, apmsd6,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah7, apmsd7,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah8, apmsd8,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah9, apmsd9,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah10, apmsd10,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah11, apmsd11,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah12, apmsd12,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah13, apmsd13,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah14, apmsd14,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah15, apmsd15,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah16, apmsd16,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah17, apmsd17,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah18, apmsd18,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah19, apmsd19,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah20, apmsd20,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah21, apmsd21,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah22, apmsd22,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah23, apmsd23,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah24, apmsd24,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah25, apmsd25,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah26, apmsd26,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah27, apmsd27,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah28, apmsd28,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah29, apmsd29,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah30, apmsd30,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah31, apmsd31,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah32, apmsd32,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah33, apmsd33,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah34, apmsd34,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah35, apmsd35,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(wilayah36, apmsd36,const Color.fromARGB(255, 243, 53, 243))
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Angka Partisipasi Murni (APM) SD/sederajat di Kabupaten/Kota di Jawa Tengah Tahun $thn5',
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
                            text: 'APM SD (persen)',
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
                        maximum: 120,
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
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'APM SD (persen)',
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
