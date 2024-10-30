// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniUtpKelum {
  final int id;
  final String kecamatan;
  final String utp;
  final String utp0_14;
  final String utp15_24;
  final String utp25_34;
  final String utp35_44;
  final String utp45_54;
  final String utp55_64;
  final String utp65;
  final String tahun;

  const modelSensusTaniUtpKelum({
    required this.id,
    required this.kecamatan,
    required this.utp,
    required this.utp0_14,
    required this.utp15_24,
    required this.utp25_34,
    required this.utp35_44,
    required this.utp45_54,
    required this.utp55_64,
    required this.utp65,
    required this.tahun,
  });

  factory modelSensusTaniUtpKelum.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniUtpKelum(
      id: json['id'],
      kecamatan: json['kecamatan'],
      utp: json['utp'],
      utp0_14: json['utp0_14'],
      utp15_24: json['utp15_24'],
      utp25_34: json['utp25_34'],
      utp35_44: json['utp35_44'],
      utp45_54: json['utp45_54'],
      utp55_64: json['utp55_64'],
      utp65: json['utp65'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniUtpKelum {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-utp';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) =>
                modelSensusTaniUtpKelum.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikUtpKelum extends StatefulWidget {
  const GrafikUtpKelum({Key? key}) : super(key: key);

  @override
  _GrafikUtpKelumState createState() => _GrafikUtpKelumState();
}

class _GrafikUtpKelumState extends State<GrafikUtpKelum> {
  RepositorySensusTaniUtpKelum repositoryutpkelum =
      RepositorySensusTaniUtpKelum();
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
      future: repositoryutpkelum.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisensustani = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kelum1 = "0-14 Tahun";
              String kelum2 = "15-24 Tahun";
              String kelum3 = "25-34 Tahun";
              String kelum4 = "35-44 Tahun";
              String kelum5 = "45-54 Tahun";
              String kelum6 = "55-64 Tahun";
              String kelum7 = "65 Tahun Ke Atas";

              double utpKelum0 =
                  (double.parse(isisensustani[index = 24].utp0_14)) /
                      (double.parse(isisensustani[index = 24].utp)) *
                      100;
              double utpKelum1 =
                  (double.parse(isisensustani[index = 24].utp15_24)) /
                      (double.parse(isisensustani[index = 24].utp)) *
                      100;
              double utpKelum2 =
                  (double.parse(isisensustani[index = 24].utp25_34)) /
                      (double.parse(isisensustani[index = 24].utp)) *
                      100;
              double utpKelum3 =
                  (double.parse(isisensustani[index = 24].utp35_44)) /
                      (double.parse(isisensustani[index = 24].utp)) *
                      100;
              double utpKelum4 =
                  (double.parse(isisensustani[index = 24].utp45_54)) /
                      (double.parse(isisensustani[index = 24].utp)) *
                      100;
              double utpKelum5 =
                  (double.parse(isisensustani[index = 24].utp55_64)) /
                      (double.parse(isisensustani[index = 24].utp)) *
                      100;
              double utpKelum6 =
                  (double.parse(isisensustani[index = 24].utp65)) /
                      (double.parse(isisensustani[index = 24].utp)) *
                      100;

              double krtKelum1 = double.parse(utpKelum0.toStringAsFixed(2));
              double krtKelum2 = double.parse(utpKelum1.toStringAsFixed(2));
              double krtKelum3 = double.parse(utpKelum2.toStringAsFixed(2));
              double krtKelum4 = double.parse(utpKelum3.toStringAsFixed(2));
              double krtKelum5 = double.parse(utpKelum4.toStringAsFixed(2));
              double krtKelum6 = double.parse(utpKelum5.toStringAsFixed(2));
              double krtKelum7 = double.parse(utpKelum6.toStringAsFixed(2));

              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData(
                    kelum1, krtKelum1, const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData(
                    kelum2, krtKelum2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kelum3, krtKelum3, const Color.fromARGB(255, 70, 231, 236)),
                _ChartData(
                    kelum4, krtKelum4, const Color.fromARGB(255, 241, 64, 41)),
                _ChartData(
                    kelum5, krtKelum5, const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData(
                    kelum6, krtKelum6, const Color.fromARGB(255, 4, 117, 10)),
                _ChartData(
                    kelum7, krtKelum7, const Color.fromARGB(255, 39, 2, 30)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.80,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Pengelola UTP Menurut Kelompok Umur Di Kabupaten Cilacap Hasil Sensus Pertanian $tahun',
                          // Aligns the chart title to left
                          alignment: ChartAlignment.center,
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 10, 10, 10),
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          )),
                      tooltipBehavior: tooltip,
                      legend: Legend(
                          isVisible: true,
                          itemPadding: 8,
                          overflowMode: LegendItemOverflowMode.wrap,
                          shouldAlwaysShowScrollbar: true,
                          position: LegendPosition.bottom,
                          textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 12, 12, 12),
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal),
                          // Legend title
                          title: LegendTitle(
                              text: 'Persentase Pengelola UTP',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 12, 12, 12),
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900))),
                      series: <CircularSeries>[
                        DoughnutSeries<_ChartData, String>(
                          dataSource: data,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          pointColorMapper: (_ChartData data, _) => data.color,
                          radius:'75%',
                          innerRadius: '35%',
                          dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.outside,
                              useSeriesColor: true,
                              connectorLineSettings: ConnectorLineSettings(
                                  // Type of the connector line
                                  type: ConnectorType.curve)),
                          //explode: true,
                          //explodeIndex: 1
                        ),
                      ]));
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
