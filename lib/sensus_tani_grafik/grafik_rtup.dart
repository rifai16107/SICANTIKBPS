// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniRtup {
  final int id;
  final String kecamatan;
  final String rtup;
  final String pangan_rtup;
  final String horti_rtup;
  final String kebun_rtup;
  final String ternak_rtup;
  final String ikan_rtup;
  final String hutan_rtup;
  final String jasa_rtup;
  final String tahun;

  const modelSensusTaniRtup({
    required this.id,
    required this.kecamatan,
    required this.rtup,
    required this.pangan_rtup,
    required this.horti_rtup,
    required this.kebun_rtup,
    required this.ternak_rtup,
    required this.ikan_rtup,
    required this.hutan_rtup,
    required this.jasa_rtup,
    required this.tahun,
  });

  factory modelSensusTaniRtup.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniRtup(
      id: json['id'],
      kecamatan: json['kecamatan'],
      rtup: json['rtup'],
      pangan_rtup: json['pangan_rtup'],
      horti_rtup: json['horti_rtup'],
      kebun_rtup: json['kebun_rtup'],
      ternak_rtup: json['ternak_rtup'],
      ikan_rtup: json['ikan_rtup'],
      hutan_rtup: json['hutan_rtup'],
      jasa_rtup: json['jasa_rtup'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniRtup {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-rtup';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) => modelSensusTaniRtup.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikRtup extends StatefulWidget {
  const GrafikRtup({Key? key}) : super(key: key);

  @override
  _GrafikRtupState createState() => _GrafikRtupState();
}

class _GrafikRtupState extends State<GrafikRtup> {
  RepositorySensusTaniRtup repositoryrtup = RepositorySensusTaniRtup();
  int key = 0;
  late List<_ChartData> data;
  late TooltipBehavior tooltip;
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return FutureBuilder(
      future: repositoryrtup.getData(),
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

              double rtup1 = double.parse(isisensustani[index = 0].rtup);
              double rtup2 = double.parse(isisensustani[index = 1].rtup);
              double rtup3 = double.parse(isisensustani[index = 2].rtup);
              double rtup4 = double.parse(isisensustani[index = 3].rtup);
              double rtup5 = double.parse(isisensustani[index = 4].rtup);
              double rtup6 = double.parse(isisensustani[index = 5].rtup);
              double rtup7 = double.parse(isisensustani[index = 6].rtup);
              double rtup8 = double.parse(isisensustani[index = 7].rtup);
              double rtup9 = double.parse(isisensustani[index = 8].rtup);
              double rtup10 = double.parse(isisensustani[index = 9].rtup);
              double rtup11 = double.parse(isisensustani[index = 10].rtup);
              double rtup12 = double.parse(isisensustani[index = 11].rtup);
              double rtup13 = double.parse(isisensustani[index = 12].rtup);
              double rtup14 = double.parse(isisensustani[index = 13].rtup);
              double rtup15 = double.parse(isisensustani[index = 14].rtup);
              double rtup16 = double.parse(isisensustani[index = 15].rtup);
              double rtup17 = double.parse(isisensustani[index = 16].rtup);
              double rtup18 = double.parse(isisensustani[index = 17].rtup);
              double rtup19 = double.parse(isisensustani[index = 18].rtup);
              double rtup20 = double.parse(isisensustani[index = 19].rtup);
              double rtup21 = double.parse(isisensustani[index = 20].rtup);
              double rtup22 = double.parse(isisensustani[index = 21].rtup);
              double rtup23 = double.parse(isisensustani[index = 22].rtup);
              double rtup24 = double.parse(isisensustani[index = 23].rtup);

              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData(kecamatan1, rtup1),
                _ChartData(kecamatan2, rtup2),
                _ChartData(kecamatan3, rtup3),
                _ChartData(kecamatan4, rtup4),
                _ChartData(kecamatan5, rtup5),
                _ChartData(kecamatan6, rtup6),
                _ChartData(kecamatan7, rtup7),
                _ChartData(kecamatan8, rtup8),
                _ChartData(kecamatan9, rtup9),
                _ChartData(kecamatan10, rtup10),
                _ChartData(kecamatan11, rtup11),
                _ChartData(kecamatan12, rtup12),
                _ChartData(kecamatan13, rtup13),
                _ChartData(kecamatan14, rtup14),
                _ChartData(kecamatan15, rtup15),
                _ChartData(kecamatan16, rtup16),
                _ChartData(kecamatan17, rtup17),
                _ChartData(kecamatan18, rtup18),
                _ChartData(kecamatan19, rtup19),
                _ChartData(kecamatan20, rtup20),
                _ChartData(kecamatan21, rtup21),
                _ChartData(kecamatan22, rtup22),
                _ChartData(kecamatan23, rtup23),
                _ChartData(kecamatan24, rtup24),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text:
                        'Jumlah Rumah Tangga Usaha Pertanian (RTUP) Menurut Kecamatan Hasil Sensus Pertanian $tahun',
                    // Aligns the chart title to left
                    alignment: ChartAlignment.center,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontFamily: 'Roboto',
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  legend: Legend(
                    // Visibility of legend
                    isVisible: true,
                    textStyle: const TextStyle(fontSize: 12),
                    toggleSeriesVisibility: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                  ),
                  primaryYAxis: NumericAxis(
                    numberFormat: NumberFormat.decimalPattern('vi_VN'),
                    majorGridLines: const MajorGridLines(width: 1),
                    minimum: 0,
                    maximum: 22000,
                    interval: 5000,
                  ),
                  zoomPanBehavior: ZoomPanBehavior(
                    enableDoubleTapZooming: true,
                    enablePinching: true,
                    // Enables the selection zooming
                    enableSelectionZooming: true,
                  ),
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
                        textStyle: TextStyle(fontSize: 10),
                      ),
                      name: 'Jumlah RTUP (rumah tangga)',
                      color: const Color.fromARGB(255, 238, 195, 56),
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Database Error");
        }
        return const Center(child: CircularProgressIndicator(strokeWidth: 3));
      },
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
