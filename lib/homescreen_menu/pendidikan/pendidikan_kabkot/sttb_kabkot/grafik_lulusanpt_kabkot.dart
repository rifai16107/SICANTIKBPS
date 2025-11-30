// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryPendidikanKabkotSttb {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sttb';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotSttb.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotSttb {
  final int id;
  final String wilayah;
  final String sma_n5;
  final String pt_n5;
  final String tahun;

  ModelPendidikanKabkotSttb(
      {required this.id,
      required this.wilayah,
      required this.sma_n5,
      required this.pt_n5,
      required this.tahun});

  factory ModelPendidikanKabkotSttb.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotSttb(
      id: json['id'],
      wilayah: json['wilayah'],
      sma_n5: json['sma_n5'],
      pt_n5: json['pt_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikLulusanKabkotSMAPT extends StatefulWidget {
  const GrafikLulusanKabkotSMAPT({Key? key}) : super(key: key);

  @override
  _GrafikLulusanKabkotSMAPTState createState() =>
      _GrafikLulusanKabkotSMAPTState();
}

class _GrafikLulusanKabkotSMAPTState extends State<GrafikLulusanKabkotSMAPT> {
  RepositoryPendidikanKabkotSttb repositorypendidikan =
      RepositoryPendidikanKabkotSttb();
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

              double sma1 = double.parse(isipendidikan[index = 0].sma_n5);
              double sma2 = double.parse(isipendidikan[index = 1].sma_n5);
              double sma3 = double.parse(isipendidikan[index = 2].sma_n5);
              double sma4 = double.parse(isipendidikan[index = 3].sma_n5);
              double sma5 = double.parse(isipendidikan[index = 4].sma_n5);
              double sma6 = double.parse(isipendidikan[index = 5].sma_n5);
              double sma7 = double.parse(isipendidikan[index = 6].sma_n5);
              double sma8 = double.parse(isipendidikan[index = 7].sma_n5);
              double sma9 = double.parse(isipendidikan[index = 8].sma_n5);
              double sma10 = double.parse(isipendidikan[index = 9].sma_n5);
              double sma11 = double.parse(isipendidikan[index = 10].sma_n5);
              double sma12 = double.parse(isipendidikan[index = 11].sma_n5);
              double sma13 = double.parse(isipendidikan[index = 12].sma_n5);
              double sma14 = double.parse(isipendidikan[index = 13].sma_n5);
              double sma15 = double.parse(isipendidikan[index = 14].sma_n5);
              double sma16 = double.parse(isipendidikan[index = 15].sma_n5);
              double sma17 = double.parse(isipendidikan[index = 16].sma_n5);
              double sma18 = double.parse(isipendidikan[index = 17].sma_n5);
              double sma19 = double.parse(isipendidikan[index = 18].sma_n5);
              double sma20 = double.parse(isipendidikan[index = 19].sma_n5);
              double sma21 = double.parse(isipendidikan[index = 20].sma_n5);
              double sma22 = double.parse(isipendidikan[index = 21].sma_n5);
              double sma23 = double.parse(isipendidikan[index = 22].sma_n5);
              double sma24 = double.parse(isipendidikan[index = 23].sma_n5);
              double sma25 = double.parse(isipendidikan[index = 24].sma_n5);
              double sma26 = double.parse(isipendidikan[index = 25].sma_n5);
              double sma27 = double.parse(isipendidikan[index = 26].sma_n5);
              double sma28 = double.parse(isipendidikan[index = 27].sma_n5);
              double sma29 = double.parse(isipendidikan[index = 28].sma_n5);
              double sma30 = double.parse(isipendidikan[index = 29].sma_n5);
              double sma31 = double.parse(isipendidikan[index = 30].sma_n5);
              double sma32 = double.parse(isipendidikan[index = 31].sma_n5);
              double sma33 = double.parse(isipendidikan[index = 32].sma_n5);
              double sma34 = double.parse(isipendidikan[index = 33].sma_n5);
              double sma35 = double.parse(isipendidikan[index = 34].sma_n5);
              double sma36 = double.parse(isipendidikan[index = 35].sma_n5);

              double pt1 = double.parse(isipendidikan[index = 0].pt_n5);
              double pt2 = double.parse(isipendidikan[index = 1].pt_n5);
              double pt3 = double.parse(isipendidikan[index = 2].pt_n5);
              double pt4 = double.parse(isipendidikan[index = 3].pt_n5);
              double pt5 = double.parse(isipendidikan[index = 4].pt_n5);
              double pt6 = double.parse(isipendidikan[index = 5].pt_n5);
              double pt7 = double.parse(isipendidikan[index = 6].pt_n5);
              double pt8 = double.parse(isipendidikan[index = 7].pt_n5);
              double pt9 = double.parse(isipendidikan[index = 8].pt_n5);
              double pt10 = double.parse(isipendidikan[index = 9].pt_n5);
              double pt11 = double.parse(isipendidikan[index = 10].pt_n5);
              double pt12 = double.parse(isipendidikan[index = 11].pt_n5);
              double pt13 = double.parse(isipendidikan[index = 12].pt_n5);
              double pt14 = double.parse(isipendidikan[index = 13].pt_n5);
              double pt15 = double.parse(isipendidikan[index = 14].pt_n5);
              double pt16 = double.parse(isipendidikan[index = 15].pt_n5);
              double pt17 = double.parse(isipendidikan[index = 16].pt_n5);
              double pt18 = double.parse(isipendidikan[index = 17].pt_n5);
              double pt19 = double.parse(isipendidikan[index = 18].pt_n5);
              double pt20 = double.parse(isipendidikan[index = 19].pt_n5);
              double pt21 = double.parse(isipendidikan[index = 20].pt_n5);
              double pt22 = double.parse(isipendidikan[index = 21].pt_n5);
              double pt23 = double.parse(isipendidikan[index = 22].pt_n5);
              double pt24 = double.parse(isipendidikan[index = 23].pt_n5);
              double pt25 = double.parse(isipendidikan[index = 24].pt_n5);
              double pt26 = double.parse(isipendidikan[index = 25].pt_n5);
              double pt27 = double.parse(isipendidikan[index = 26].pt_n5);
              double pt28 = double.parse(isipendidikan[index = 27].pt_n5);
              double pt29 = double.parse(isipendidikan[index = 28].pt_n5);
              double pt30 = double.parse(isipendidikan[index = 29].pt_n5);
              double pt31 = double.parse(isipendidikan[index = 30].pt_n5);
              double pt32 = double.parse(isipendidikan[index = 31].pt_n5);
              double pt33 = double.parse(isipendidikan[index = 32].pt_n5);
              double pt34 = double.parse(isipendidikan[index = 33].pt_n5);
              double pt35 = double.parse(isipendidikan[index = 34].pt_n5);
              double pt36 = double.parse(isipendidikan[index = 35].pt_n5);

              String thn5 = isipendidikan[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(wilayah1, sma1, pt1),
                _ChartData(wilayah2, sma2, pt2),
                _ChartData(wilayah3, sma3, pt3),
                _ChartData(wilayah4, sma4, pt4),
                _ChartData(wilayah5, sma5, pt5),
                _ChartData(wilayah6, sma6, pt6),
                _ChartData(wilayah7, sma7, pt7),
                _ChartData(wilayah8, sma8, pt8),
                _ChartData(wilayah9, sma9, pt9),
                _ChartData(wilayah10, sma10, pt10),
                _ChartData(wilayah11, sma11, pt11),
                _ChartData(wilayah12, sma12, pt12),
                _ChartData(wilayah13, sma13, pt13),
                _ChartData(wilayah14, sma14, pt14),
                _ChartData(wilayah15, sma15, pt15),
                _ChartData(wilayah16, sma16, pt16),
                _ChartData(wilayah17, sma17, pt17),
                _ChartData(wilayah18, sma18, pt18),
                _ChartData(wilayah19, sma19, pt19),
                _ChartData(wilayah20, sma20, pt20),
                _ChartData(wilayah21, sma21, pt21),
                _ChartData(wilayah22, sma22, pt22),
                _ChartData(wilayah23, sma23, pt23),
                _ChartData(wilayah24, sma24, pt24),
                _ChartData(wilayah25, sma25, pt25),
                _ChartData(wilayah26, sma26, pt26),
                _ChartData(wilayah27, sma27, pt27),
                _ChartData(wilayah28, sma28, pt28),
                _ChartData(wilayah29, sma29, pt29),
                _ChartData(wilayah30, sma30, pt30),
                _ChartData(wilayah31, sma31, pt31),
                _ChartData(wilayah32, sma32, pt32),
                _ChartData(wilayah33, sma33, pt33),
                _ChartData(wilayah34, sma34, pt34),
                _ChartData(wilayah35, sma35, pt35),
                _ChartData(wilayah36, sma36, pt36)
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Persentase Penduduk Usia 15+ yang memiliki Ijazah SMA dan PT (Perguruan Tinggi) di Jawa Tengah Tahun $thn5',
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
                        position: LegendPosition.bottom),
                    primaryYAxis: NumericAxis(
                        title: AxisTitle(
                            text: 'Persentase Lulusan SMA/PT',
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
                        maximum: 80,
                        interval: 20),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      StackedBarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        //pointColorMapper: (_ChartData data, _) => data.color,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.ascending,
                        //sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.bottom,
                            textStyle: TextStyle(fontSize: 9, color: Colors.black)),
                        name: 'SMA/Sederajat',
                        color: const Color.fromARGB(255, 241, 115, 64),
                      ),
                      StackedBarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y1,
                        //pointColorMapper: (_ChartData data, _) => data.color,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.ascending,
                        //sortFieldValueMapper: (_ChartData data, _) => data.y1,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.auto,
                            textStyle: TextStyle(fontSize: 9, color: Colors.black)),
                        name: 'Perguruan Tinggi',
                        color: const Color.fromARGB(255, 211, 236, 97),
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
  _ChartData(this.x, this.y, this.y1);

  final String x;
  final double y;
  final double y1;
}
