// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelGrafikSensusCilacapWil {
  final int id;
  final String kecamatan;
  final String lk;
  final String pr;
  final String lkpr;
  final String tahun;

  const modelGrafikSensusCilacapWil({
    required this.id,
    required this.kecamatan,
    required this.lk,
    required this.pr,
    required this.lkpr,
    required this.tahun,
  });

  factory modelGrafikSensusCilacapWil.fromJson(Map<String, dynamic> json) {
    return modelGrafikSensusCilacapWil(
      id: json['id'],
      kecamatan: json['kecamatan'],
      lk: json['lk'],
      pr: json['pr'],
      lkpr: json['lkpr'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusCilacapWil {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-pddk-cilacap-wil';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensuspddkwil) =>
                modelGrafikSensusCilacapWil.fromJson(isisensuspddkwil))
            .toList();
      }
    } catch (isisensuspddkwil) {
      // ignore: avoid_print
      print(isisensuspddkwil.toString());
    }
  }
}

class GrafikSensusCilacapWil extends StatefulWidget {
  const GrafikSensusCilacapWil({Key? key}) : super(key: key);

  @override
  _GrafikSensusCilacapWilState createState() => _GrafikSensusCilacapWilState();
}

class _GrafikSensusCilacapWilState extends State<GrafikSensusCilacapWil> {
  RepositorySensusCilacapWil repositorysensuspddk =
      RepositorySensusCilacapWil();
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
              String kecamatan1 = isisensuspddkwil[index = 0].kecamatan;
              String kecamatan2 = isisensuspddkwil[index = 1].kecamatan;
              String kecamatan3 = isisensuspddkwil[index = 2].kecamatan;
              String kecamatan4 = isisensuspddkwil[index = 3].kecamatan;
              String kecamatan5 = isisensuspddkwil[index = 4].kecamatan;
              String kecamatan6 = isisensuspddkwil[index = 5].kecamatan;
              String kecamatan7 = isisensuspddkwil[index = 6].kecamatan;
              String kecamatan8 = isisensuspddkwil[index = 7].kecamatan;
              String kecamatan9 = isisensuspddkwil[index = 8].kecamatan;
              String kecamatan10 = isisensuspddkwil[index = 9].kecamatan;
              String kecamatan11 = isisensuspddkwil[index = 10].kecamatan;
              String kecamatan12 = isisensuspddkwil[index = 11].kecamatan;
              String kecamatan13 = isisensuspddkwil[index = 12].kecamatan;
              String kecamatan14 = isisensuspddkwil[index = 13].kecamatan;
              String kecamatan15 = isisensuspddkwil[index = 14].kecamatan;
              String kecamatan16 = isisensuspddkwil[index = 15].kecamatan;
              String kecamatan17 = isisensuspddkwil[index = 16].kecamatan;
              String kecamatan18 = isisensuspddkwil[index = 17].kecamatan;
              String kecamatan19 = isisensuspddkwil[index = 18].kecamatan;
              String kecamatan20 = isisensuspddkwil[index = 19].kecamatan;
              String kecamatan21 = isisensuspddkwil[index = 20].kecamatan;
              String kecamatan22 = isisensuspddkwil[index = 21].kecamatan;
              String kecamatan23 = isisensuspddkwil[index = 22].kecamatan;
              String kecamatan24 = isisensuspddkwil[index = 23].kecamatan;

              double lkpr1 = double.parse(isisensuspddkwil[index = 0].lkpr);
              double lkpr2 = double.parse(isisensuspddkwil[index = 1].lkpr);
              double lkpr3 = double.parse(isisensuspddkwil[index = 2].lkpr);
              double lkpr4 = double.parse(isisensuspddkwil[index = 3].lkpr);
              double lkpr5 = double.parse(isisensuspddkwil[index = 4].lkpr);
              double lkpr6 = double.parse(isisensuspddkwil[index = 5].lkpr);
              double lkpr7 = double.parse(isisensuspddkwil[index = 6].lkpr);
              double lkpr8 = double.parse(isisensuspddkwil[index = 7].lkpr);
              double lkpr9 = double.parse(isisensuspddkwil[index = 8].lkpr);
              double lkpr10 = double.parse(isisensuspddkwil[index = 9].lkpr);
              double lkpr11 = double.parse(isisensuspddkwil[index = 10].lkpr);
              double lkpr12 = double.parse(isisensuspddkwil[index = 11].lkpr);
              double lkpr13 = double.parse(isisensuspddkwil[index = 12].lkpr);
              double lkpr14 = double.parse(isisensuspddkwil[index = 13].lkpr);
              double lkpr15 = double.parse(isisensuspddkwil[index = 14].lkpr);
              double lkpr16 = double.parse(isisensuspddkwil[index = 15].lkpr);
              double lkpr17 = double.parse(isisensuspddkwil[index = 16].lkpr);
              double lkpr18 = double.parse(isisensuspddkwil[index = 17].lkpr);
              double lkpr19 = double.parse(isisensuspddkwil[index = 18].lkpr);
              double lkpr20 = double.parse(isisensuspddkwil[index = 19].lkpr);
              double lkpr21 = double.parse(isisensuspddkwil[index = 20].lkpr);
              double lkpr22 = double.parse(isisensuspddkwil[index = 21].lkpr);
              double lkpr23 = double.parse(isisensuspddkwil[index = 22].lkpr);
              double lkpr24 = double.parse(isisensuspddkwil[index = 23].lkpr);

              //String tahun = isisensuspddkwil[index=0].tahun;

              toString();
              data = [
                _ChartData(kecamatan1, lkpr1),
                _ChartData(kecamatan2, lkpr2),
                _ChartData(kecamatan3, lkpr3),
                _ChartData(kecamatan4, lkpr4),
                _ChartData(kecamatan5, lkpr5),
                _ChartData(kecamatan6, lkpr6),
                _ChartData(kecamatan7, lkpr7),
                _ChartData(kecamatan8, lkpr8),
                _ChartData(kecamatan9, lkpr9),
                _ChartData(kecamatan10, lkpr10),
                _ChartData(kecamatan11, lkpr11),
                _ChartData(kecamatan12, lkpr12),
                _ChartData(kecamatan13, lkpr13),
                _ChartData(kecamatan14, lkpr14),
                _ChartData(kecamatan15, lkpr15),
                _ChartData(kecamatan16, lkpr16),
                _ChartData(kecamatan17, lkpr17),
                _ChartData(kecamatan18, lkpr18),
                _ChartData(kecamatan19, lkpr19),
                _ChartData(kecamatan20, lkpr20),
                _ChartData(kecamatan21, lkpr21),
                _ChartData(kecamatan22, lkpr22),
                _ChartData(kecamatan23, lkpr23),
                _ChartData(kecamatan24, lkpr24),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Penduduk Kabupaten Cilacap Menurut Kecamatan Hasil Sensus Penduduk 2020',
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
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 210000,
                        interval: 50000),
                    zoomPanBehavior: ZoomPanBehavior(
                        enableDoubleTapZooming: true,
                        enablePinching: true,
                        // Enables the selection zooming
                        enableSelectionZooming: true),
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
                            labelAlignment: ChartDataLabelAlignment.outer,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Jumlah Penduduk (jiwa)',
                        color: const Color.fromARGB(255, 45, 49, 240),
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
