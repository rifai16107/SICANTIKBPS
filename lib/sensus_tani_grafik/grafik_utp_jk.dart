// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniUtpJk {
  final int id;
  final String kecamatan;
  final String utp;
  final String utplk;
  final String utppr;
  final String tahun;

  const modelSensusTaniUtpJk({
    required this.id,
    required this.kecamatan,
    required this.utp,
    required this.utplk,
    required this.utppr,
    required this.tahun,
  });

  factory modelSensusTaniUtpJk.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniUtpJk(
      id: json['id'],
      kecamatan: json['kecamatan'],
      utp: json['utp'],
      utplk: json['utplk'],
      utppr: json['utppr'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniUtpJk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-utp';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
                (isisensustani) => modelSensusTaniUtpJk.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikUtpJk extends StatefulWidget {
  const GrafikUtpJk({Key? key}) : super(key: key);

  @override
  _GrafikUtpJkState createState() => _GrafikUtpJkState();
}

class _GrafikUtpJkState extends State<GrafikUtpJk> {
  RepositorySensusTaniUtpJk repositoryrtupjk = RepositorySensusTaniUtpJk();
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
      future: repositoryrtupjk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisensustani = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kecamatan1 = isisensustani[index = 0].kecamatan;
              String kecamatan2 = isisensustani[index = 1].kecamatan;
              String kecamatan3 = isisensustani[index = 2].kecamatan;
              String kecamatan4 = isisensustani[index = 3].kecamatan;
              String kecamatan5 = isisensustani[index = 4].kecamatan;
              String kecamatan6 = isisensustani[index = 5].kecamatan;
              String kecamatan7 = isisensustani[index = 6].kecamatan;
              String kecamatan8 = isisensustani[index = 7].kecamatan;
              String kecamatan9 = isisensustani[index = 8].kecamatan;
              String kecamatan10 = isisensustani[index = 9].kecamatan;
              String kecamatan11 = isisensustani[index = 10].kecamatan;
              String kecamatan12 = isisensustani[index = 11].kecamatan;
              String kecamatan13 = isisensustani[index = 12].kecamatan;
              String kecamatan14 = isisensustani[index = 13].kecamatan;
              String kecamatan15 = isisensustani[index = 14].kecamatan;
              String kecamatan16 = isisensustani[index = 15].kecamatan;
              String kecamatan17 = isisensustani[index = 16].kecamatan;
              String kecamatan18 = isisensustani[index = 17].kecamatan;
              String kecamatan19 = isisensustani[index = 18].kecamatan;
              String kecamatan20 = isisensustani[index = 19].kecamatan;
              String kecamatan21 = isisensustani[index = 20].kecamatan;
              String kecamatan22 = isisensustani[index = 21].kecamatan;
              String kecamatan23 = isisensustani[index = 22].kecamatan;
              String kecamatan24 = isisensustani[index = 23].kecamatan;

              double krt_lk1 = double.parse(isisensustani[index = 0].utplk);
              double krt_lk2 = double.parse(isisensustani[index = 1].utplk);
              double krt_lk3 = double.parse(isisensustani[index = 2].utplk);
              double krt_lk4 = double.parse(isisensustani[index = 3].utplk);
              double krt_lk5 = double.parse(isisensustani[index = 4].utplk);
              double krt_lk6 = double.parse(isisensustani[index = 5].utplk);
              double krt_lk7 = double.parse(isisensustani[index = 6].utplk);
              double krt_lk8 = double.parse(isisensustani[index = 7].utplk);
              double krt_lk9 = double.parse(isisensustani[index = 8].utplk);
              double krt_lk10 = double.parse(isisensustani[index = 9].utplk);
              double krt_lk11 = double.parse(isisensustani[index = 10].utplk);
              double krt_lk12 = double.parse(isisensustani[index = 11].utplk);
              double krt_lk13 = double.parse(isisensustani[index = 12].utplk);
              double krt_lk14 = double.parse(isisensustani[index = 13].utplk);
              double krt_lk15 = double.parse(isisensustani[index = 14].utplk);
              double krt_lk16 = double.parse(isisensustani[index = 15].utplk);
              double krt_lk17 = double.parse(isisensustani[index = 16].utplk);
              double krt_lk18 = double.parse(isisensustani[index = 17].utplk);
              double krt_lk19 = double.parse(isisensustani[index = 18].utplk);
              double krt_lk20 = double.parse(isisensustani[index = 19].utplk);
              double krt_lk21 = double.parse(isisensustani[index = 20].utplk);
              double krt_lk22 = double.parse(isisensustani[index = 21].utplk);
              double krt_lk23 = double.parse(isisensustani[index = 22].utplk);
              double krt_lk24 = double.parse(isisensustani[index = 23].utplk);

              double krt_pr1 = double.parse(isisensustani[index = 0].utppr);
              double krt_pr2 = double.parse(isisensustani[index = 1].utppr);
              double krt_pr3 = double.parse(isisensustani[index = 2].utppr);
              double krt_pr4 = double.parse(isisensustani[index = 3].utppr);
              double krt_pr5 = double.parse(isisensustani[index = 4].utppr);
              double krt_pr6 = double.parse(isisensustani[index = 5].utppr);
              double krt_pr7 = double.parse(isisensustani[index = 6].utppr);
              double krt_pr8 = double.parse(isisensustani[index = 7].utppr);
              double krt_pr9 = double.parse(isisensustani[index = 8].utppr);
              double krt_pr10 = double.parse(isisensustani[index = 9].utppr);
              double krt_pr11 = double.parse(isisensustani[index = 10].utppr);
              double krt_pr12 = double.parse(isisensustani[index = 11].utppr);
              double krt_pr13 = double.parse(isisensustani[index = 12].utppr);
              double krt_pr14 = double.parse(isisensustani[index = 13].utppr);
              double krt_pr15 = double.parse(isisensustani[index = 14].utppr);
              double krt_pr16 = double.parse(isisensustani[index = 15].utppr);
              double krt_pr17 = double.parse(isisensustani[index = 16].utppr);
              double krt_pr18 = double.parse(isisensustani[index = 17].utppr);
              double krt_pr19 = double.parse(isisensustani[index = 18].utppr);
              double krt_pr20 = double.parse(isisensustani[index = 19].utppr);
              double krt_pr21 = double.parse(isisensustani[index = 20].utppr);
              double krt_pr22 = double.parse(isisensustani[index = 21].utppr);
              double krt_pr23 = double.parse(isisensustani[index = 22].utppr);
              double krt_pr24 = double.parse(isisensustani[index = 23].utppr);

              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData(kecamatan1, krt_lk1, krt_pr1),
                _ChartData(kecamatan2, krt_lk2, krt_pr2),
                _ChartData(kecamatan3, krt_lk3, krt_pr3),
                _ChartData(kecamatan4, krt_lk4, krt_pr4),
                _ChartData(kecamatan5, krt_lk5, krt_pr5),
                _ChartData(kecamatan6, krt_lk6, krt_pr6),
                _ChartData(kecamatan7, krt_lk7, krt_pr7),
                _ChartData(kecamatan8, krt_lk8, krt_pr8),
                _ChartData(kecamatan9, krt_lk9, krt_pr9),
                _ChartData(kecamatan10, krt_lk10, krt_pr10),
                _ChartData(kecamatan11, krt_lk11, krt_pr11),
                _ChartData(kecamatan12, krt_lk12, krt_pr12),
                _ChartData(kecamatan13, krt_lk13, krt_pr13),
                _ChartData(kecamatan14, krt_lk14, krt_pr14),
                _ChartData(kecamatan15, krt_lk15, krt_pr15),
                _ChartData(kecamatan16, krt_lk16, krt_pr16),
                _ChartData(kecamatan17, krt_lk17, krt_pr17),
                _ChartData(kecamatan18, krt_lk18, krt_pr18),
                _ChartData(kecamatan19, krt_lk19, krt_pr19),
                _ChartData(kecamatan20, krt_lk20, krt_pr20),
                _ChartData(kecamatan21, krt_lk21, krt_pr21),
                _ChartData(kecamatan22, krt_lk22, krt_pr22),
                _ChartData(kecamatan23, krt_lk23, krt_pr23),
                _ChartData(kecamatan24, krt_lk24, krt_pr24),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Jumlah Pengelola UTP Menurut Jenis Kelamin di Kabupaten Cilacap Hasil Sensus Pertanian $tahun',
                        // Aligns the chart title to left
                        alignment: ChartAlignment.center,
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 10, 10, 10),
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
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
                        overflowMode: LegendItemOverflowMode.wrap,
                        position: LegendPosition.bottom),
                    primaryYAxis: NumericAxis(
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 22000,
                        interval: 5000),
                    zoomPanBehavior: ZoomPanBehavior(
                        enableDoubleTapZooming: true,
                        enablePinching: true,
                        // Enables the selection zooming
                        enableSelectionZooming: true),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      StackedBarSeries<_ChartData, String>(
                        width: 0.80,
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.middle,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Laki-Laki',
                        color: const Color.fromARGB(255, 24, 74, 240),
                      ),
                      StackedBarSeries<_ChartData, String>(
                        width: 0.80,
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y1,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.bottom,
                            textStyle: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            )),
                        name: 'Perempuan',
                        color: const Color.fromARGB(255, 53, 240, 53),
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
