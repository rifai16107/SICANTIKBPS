// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniUtl {
  final int id;
  final String kecamatan;
  final String utl;
  final String pangan_utl;
  final String horti_utl;
  final String kebun_utl;
  final String ternak_utl;
  final String ikan_utl;
  final String hutan_utl;
  final String jasa_utl;
  final String tahun;

  const modelSensusTaniUtl({
    required this.id,
    required this.kecamatan,
    required this.utl,
    required this.pangan_utl,
    required this.horti_utl,
    required this.kebun_utl,
    required this.ternak_utl,
    required this.ikan_utl,
    required this.hutan_utl,
    required this.jasa_utl,
    required this.tahun,
  });

  factory modelSensusTaniUtl.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniUtl(
      id: json['id'],
      kecamatan: json['kecamatan'],
      utl: json['utl'],
      pangan_utl: json['pangan_utl'],
      horti_utl: json['horti_utl'],
      kebun_utl: json['kebun_utl'],
      ternak_utl: json['ternak_utl'],
      ikan_utl: json['ikan_utl'],
      hutan_utl: json['hutan_utl'],
      jasa_utl: json['jasa_utl'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniUtl {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-upb-utl';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) => modelSensusTaniUtl.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikUtl extends StatefulWidget {
  const GrafikUtl({Key? key}) : super(key: key);

  @override
  _GrafikUtlState createState() => _GrafikUtlState();
}

class _GrafikUtlState extends State<GrafikUtl> {
  RepositorySensusTaniUtl repositoryutl = RepositorySensusTaniUtl();
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
      future: repositoryutl.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisensustani = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double pangan_utl =
                  double.parse(isisensustani[index = 24].pangan_utl);
              double horti_utl =
                  double.parse(isisensustani[index = 24].horti_utl);
              double kebun_utl =
                  double.parse(isisensustani[index = 24].kebun_utl);
              double ternak_utl =
                  double.parse(isisensustani[index = 24].ternak_utl);
              double ikan_utl =
                  double.parse(isisensustani[index = 24].ikan_utl);
              double hutan_utl =
                  double.parse(isisensustani[index = 24].hutan_utl);
              double jasa_utl =
                  double.parse(isisensustani[index = 24].jasa_utl);

              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData("Pangan", pangan_utl),
                _ChartData("Hortikultura", horti_utl),
                _ChartData("Perkebunan", kebun_utl),
                _ChartData("Peternakan", ternak_utl),
                _ChartData("Perikanan", ikan_utl),
                _ChartData("Kehutanan", hutan_utl),
                _ChartData("Jasa Pertanian", jasa_utl),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Jumlah Usaha Pertanian Lainnya (UTL) Menurut Subsektor Hasil Sensus Pertanian $tahun',
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
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 50,
                        interval: 10),
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
                        name: 'Jumlah UTL (unit usaha)',
                        color: const Color.fromARGB(255, 241, 81, 32),
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
