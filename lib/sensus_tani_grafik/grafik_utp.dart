// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniUtp {
  final int id;
  final String kecamatan;
  final String utp;
  final String pangan_utp;
  final String horti_utp;
  final String kebun_utp;
  final String ternak_utp;
  final String ikan_utp;
  final String hutan_utp;
  final String jasa_utp;
  final String tahun;

  const modelSensusTaniUtp({
    required this.id,
    required this.kecamatan,
    required this.utp,
    required this.pangan_utp,
    required this.horti_utp,
    required this.kebun_utp,
    required this.ternak_utp,
    required this.ikan_utp,
    required this.hutan_utp,
    required this.jasa_utp,
    required this.tahun,
  });

  factory modelSensusTaniUtp.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniUtp(
      id: json['id'],
      kecamatan: json['kecamatan'],
      utp: json['utp'],
      pangan_utp: json['pangan_utp'],
      horti_utp: json['horti_utp'],
      kebun_utp: json['kebun_utp'],
      ternak_utp: json['ternak_utp'],
      ikan_utp: json['ikan_utp'],
      hutan_utp: json['hutan_utp'],
      jasa_utp: json['jasa_utp'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniUtp {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-utp';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) => modelSensusTaniUtp.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikUtp extends StatefulWidget {
  const GrafikUtp({Key? key}) : super(key: key);

  @override
  _GrafikUtpState createState() => _GrafikUtpState();
}

class _GrafikUtpState extends State<GrafikUtp> {
  RepositorySensusTaniUtp repositoryutp = RepositorySensusTaniUtp();
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
      future: repositoryutp.getData(),
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

              double utp1 = double.parse(isisensustani[index = 0].utp);
              double utp2 = double.parse(isisensustani[index = 1].utp);
              double utp3 = double.parse(isisensustani[index = 2].utp);
              double utp4 = double.parse(isisensustani[index = 3].utp);
              double utp5 = double.parse(isisensustani[index = 4].utp);
              double utp6 = double.parse(isisensustani[index = 5].utp);
              double utp7 = double.parse(isisensustani[index = 6].utp);
              double utp8 = double.parse(isisensustani[index = 7].utp);
              double utp9 = double.parse(isisensustani[index = 8].utp);
              double utp10 = double.parse(isisensustani[index = 9].utp);
              double utp11 = double.parse(isisensustani[index = 10].utp);
              double utp12 = double.parse(isisensustani[index = 11].utp);
              double utp13 = double.parse(isisensustani[index = 12].utp);
              double utp14 = double.parse(isisensustani[index = 13].utp);
              double utp15 = double.parse(isisensustani[index = 14].utp);
              double utp16 = double.parse(isisensustani[index = 15].utp);
              double utp17 = double.parse(isisensustani[index = 16].utp);
              double utp18 = double.parse(isisensustani[index = 17].utp);
              double utp19 = double.parse(isisensustani[index = 18].utp);
              double utp20 = double.parse(isisensustani[index = 19].utp);
              double utp21 = double.parse(isisensustani[index = 20].utp);
              double utp22 = double.parse(isisensustani[index = 21].utp);
              double utp23 = double.parse(isisensustani[index = 22].utp);
              double utp24 = double.parse(isisensustani[index = 23].utp);

              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData(kecamatan1, utp1),
                _ChartData(kecamatan2, utp2),
                _ChartData(kecamatan3, utp3),
                _ChartData(kecamatan4, utp4),
                _ChartData(kecamatan5, utp5),
                _ChartData(kecamatan6, utp6),
                _ChartData(kecamatan7, utp7),
                _ChartData(kecamatan8, utp8),
                _ChartData(kecamatan9, utp9),
                _ChartData(kecamatan10, utp10),
                _ChartData(kecamatan11, utp11),
                _ChartData(kecamatan12, utp12),
                _ChartData(kecamatan13, utp13),
                _ChartData(kecamatan14, utp14),
                _ChartData(kecamatan15, utp15),
                _ChartData(kecamatan16, utp16),
                _ChartData(kecamatan17, utp17),
                _ChartData(kecamatan18, utp18),
                _ChartData(kecamatan19, utp19),
                _ChartData(kecamatan20, utp20),
                _ChartData(kecamatan21, utp21),
                _ChartData(kecamatan22, utp22),
                _ChartData(kecamatan23, utp23),
                _ChartData(kecamatan24, utp24),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Jumlah Usaha Pertanian Perorangan (UTP) Menurut Kecamatan Hasil Sensus Pertanian $tahun',
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
                          fontSize: 12,
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
                        name: 'Jumlah UTP (unit usaha)',
                        color: const Color.fromARGB(255, 12, 224, 58),
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
