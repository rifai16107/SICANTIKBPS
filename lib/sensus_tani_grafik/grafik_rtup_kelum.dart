// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniRtupKelum {
  final int id;
  final String kecamatan;
  final String rtup;
  final String krt15_24;
  final String krt25_34;
  final String krt35_44;
  final String krt45_54;
  final String krt55_64;
  final String krt65;
  final String tahun;

  const modelSensusTaniRtupKelum({
    required this.id,
    required this.kecamatan,
    required this.rtup,
    required this.krt15_24,
    required this.krt25_34,
    required this.krt35_44,
    required this.krt45_54,
    required this.krt55_64,
    required this.krt65,
    required this.tahun,
  });

  factory modelSensusTaniRtupKelum.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniRtupKelum(
      id: json['id'],
      kecamatan: json['kecamatan'],
      rtup: json['rtup'],
      krt15_24: json['krt15_24'],
      krt25_34: json['krt25_34'],
      krt35_44: json['krt35_44'],
      krt45_54: json['krt45_54'],
      krt55_64: json['krt55_64'],
      krt65: json['krt65'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniRtupKelum {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-rtup-kelum';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) =>
                modelSensusTaniRtupKelum.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikRtupKelum extends StatefulWidget {
  const GrafikRtupKelum({Key? key}) : super(key: key);

  @override
  _GrafikRtupKelumState createState() => _GrafikRtupKelumState();
}

class _GrafikRtupKelumState extends State<GrafikRtupKelum> {
  RepositorySensusTaniRtupKelum repositoryrtupkelum =
      RepositorySensusTaniRtupKelum();
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
      future: repositoryrtupkelum.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisensustani = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kelum1 = "15-24 Tahun";
              String kelum2 = "25-34 Tahun";
              String kelum3 = "35-44 Tahun";
              String kelum4 = "45-54 Tahun";
              String kelum5 = "55-64 Tahun";
              String kelum6 = "65 Tahun Ke Atas";

              double rtupKelum1 =
                  (double.parse(isisensustani[index = 24].krt15_24)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;
              double rtupKelum2 =
                  (double.parse(isisensustani[index = 24].krt25_34)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;
              double rtupKelum3 =
                  (double.parse(isisensustani[index = 24].krt35_44)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;
              double rtupKelum4 =
                  (double.parse(isisensustani[index = 24].krt45_54)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;
              double rtupKelum5 =
                  (double.parse(isisensustani[index = 24].krt55_64)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;
              double rtupKelum6 =
                  (double.parse(isisensustani[index = 24].krt65)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;

              double krtKelum1 = double.parse(rtupKelum1.toStringAsFixed(2));
              double krtKelum2 = double.parse(rtupKelum2.toStringAsFixed(2));
              double krtKelum3 = double.parse(rtupKelum3.toStringAsFixed(2));
              double krtKelum4 = double.parse(rtupKelum4.toStringAsFixed(2));
              double krtKelum5 = double.parse(rtupKelum5.toStringAsFixed(2));
              double krtKelum6 = double.parse(rtupKelum6.toStringAsFixed(2));

              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData(
                    kelum1, krtKelum1, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kelum2, krtKelum2, const Color.fromARGB(255, 70, 231, 236)),
                _ChartData(
                    kelum3, krtKelum3, const Color.fromARGB(255, 241, 64, 41)),
                _ChartData(
                    kelum4, krtKelum4, const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData(
                    kelum5, krtKelum5, const Color.fromARGB(255, 4, 117, 10)),
                _ChartData(
                    kelum6, krtKelum6, const Color.fromARGB(255, 39, 2, 30)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.80,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Kepala Rumah tangga RTUP Menurut Kelompok Umur Di Kabupaten Cilacap Hasil Sensus Pertanian $tahun',
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
                              text: 'Persentase KRT',
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
                          radius:'80%',
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
