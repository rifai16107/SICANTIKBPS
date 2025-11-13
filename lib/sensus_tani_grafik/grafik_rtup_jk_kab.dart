// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniRtupJkKab {
  final int id;
  final String kecamatan;
  final String rtup;
  final String krt_lk;
  final String krt_pr;
  final String tahun;

  const modelSensusTaniRtupJkKab({
    required this.id,
    required this.kecamatan,
    required this.rtup,
    required this.krt_lk,
    required this.krt_pr,
    required this.tahun,
  });

  factory modelSensusTaniRtupJkKab.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniRtupJkKab(
      id: json['id'],
      kecamatan: json['kecamatan'],
      rtup: json['rtup'],
      krt_lk: json['krt_lk'],
      krt_pr: json['krt_pr'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniRtupJkKab {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-rtup-kelum';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) =>
                modelSensusTaniRtupJkKab.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikRtupJkKab extends StatefulWidget {
  const GrafikRtupJkKab({Key? key}) : super(key: key);

  @override
  _GrafikRtupJkKabState createState() => _GrafikRtupJkKabState();
}

class _GrafikRtupJkKabState extends State<GrafikRtupJkKab> {
  RepositorySensusTaniRtupJkKab repositoryrtupkelum =
      RepositorySensusTaniRtupJkKab();
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
              double krt_lkKab =
                  (double.parse(isisensustani[index = 24].krt_lk)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;
              double krt_prKab =
                  (double.parse(isisensustani[index = 24].krt_pr)) /
                      (double.parse(isisensustani[index = 24].rtup)) *
                      100;
              double krt_lk = double.parse(krt_lkKab.toStringAsFixed(2));
              double krt_pr = double.parse(krt_prKab.toStringAsFixed(2));
              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData("Laki-Laki", krt_lk,
                    const Color.fromARGB(255, 241, 64, 41)),
                _ChartData(
                    "Perempuan", krt_pr, const Color.fromRGBO(9, 0, 136, 1)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.9,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Kepala Rumah tangga RTUP Menurut Jenis Kelamin Hasil Sensus Pertanian $tahun',
                          // Aligns the chart title to left
                          alignment: ChartAlignment.center,
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 10, 10, 10),
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )),
                      tooltipBehavior: tooltip,
                      legend: Legend(
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap,
                          position: LegendPosition.bottom,
                          // Legend title
                          title: LegendTitle(
                              text: 'Jenis Kelamin',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 12, 12, 12),
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900))),
                      series: <CircularSeries>[
                        PieSeries<_ChartData, String>(
                            dataSource: data,
                            xValueMapper: (_ChartData data, _) => data.x,
                            yValueMapper: (_ChartData data, _) => data.y,
                            pointColorMapper: (_ChartData data, _) =>
                                data.color,
                            //innerRadius: '0%',
                            dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.inside,
                              useSeriesColor: true,
                              //connectorLineSettings: ConnectorLineSettings(
                              // Type of the connector line
                              //type: ConnectorType.curve)
                            ),
                            explode: true,
                            explodeIndex: 1),
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
