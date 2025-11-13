// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
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
  final String tdk_blmsekolah_n5;
  final String tdk_tmtsd_n5;
  final String sd_n5;
  final String smp_n5;
  final String sma_n5;
  final String pt_n5;
  final String tahun;

  ModelPendidikanKabkotSttb(
      {required this.id,
      required this.wilayah,
      required this.tdk_blmsekolah_n5,
      required this.tdk_tmtsd_n5,
      required this.sd_n5,
      required this.smp_n5,
      required this.sma_n5,
      required this.pt_n5,
      required this.tahun});

  factory ModelPendidikanKabkotSttb.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotSttb(
      id: json['id'],
      wilayah: json['wilayah'],
      tdk_blmsekolah_n5: json['tdk_blmsekolah_n5'],
      tdk_tmtsd_n5: json['tdk_tmtsd_n5'],
      sd_n5: json['sd_n5'],
      smp_n5: json['smp_n5'],
      sma_n5: json['sma_n5'],
      pt_n5: json['pt_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikSttbKabkot extends StatefulWidget {
  const GrafikSttbKabkot({Key? key}) : super(key: key);

  @override
  _GrafikSttbKabkotState createState() => _GrafikSttbKabkotState();
}

class _GrafikSttbKabkotState extends State<GrafikSttbKabkot> {
  RepositoryPendidikanKabkotSttb repositorypendidikan =
      RepositoryPendidikanKabkotSttb();
  int key = 0;
  late List<_ChartData> data;
  late List<_ChartData1> data1;
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
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String pendidikan1 = "Tidak/Belum Pernah Sekolah";
              String pendidikan2 = "Tidak Tamat SD";
              String pendidikan3 = "SD/Sederajat";
              String pendidikan4 = "SMP/Sederajat";
              String pendidikan5 = "SMA/Sederajat";
              String pendidikan6 = "Perguruan Tinggi";

              double tdakBelumsekolahClp =
                  double.parse(isipendidikan[index = 0].tdk_blmsekolah_n5);
              double tdkTamatSDClp =
                  double.parse(isipendidikan[index = 0].tdk_tmtsd_n5);
              double sdClp = double.parse(isipendidikan[index = 0].sd_n5);
              double smpClp = double.parse(isipendidikan[index = 0].smp_n5);
              double smaClp = double.parse(isipendidikan[index = 0].sma_n5);
              double ptClp = double.parse(isipendidikan[index = 0].pt_n5);

              double tdakBelumsekolahJtg =
                  double.parse(isipendidikan[index = 35].tdk_blmsekolah_n5);
              double tdkTamatSDJtg =
                  double.parse(isipendidikan[index = 35].tdk_tmtsd_n5);
              double sdJtg = double.parse(isipendidikan[index = 35].sd_n5);
              double smpJtg = double.parse(isipendidikan[index = 35].smp_n5);
              double smaJtg = double.parse(isipendidikan[index = 35].sma_n5);
              double ptJtg = double.parse(isipendidikan[index = 35].pt_n5);

              toString();

              data = [
                _ChartData(pendidikan1, tdakBelumsekolahClp,
                    const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData(pendidikan2, tdkTamatSDClp,
                    const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(pendidikan3, sdClp,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData(pendidikan4, smpClp,
                    const Color.fromARGB(255, 241, 41, 151)),
                _ChartData(pendidikan5, smaClp,
                    const Color.fromARGB(255, 243, 240, 49)),
                _ChartData(
                    pendidikan6, ptClp, const Color.fromARGB(255, 4, 117, 10)),
              ];

              data1 = [
                _ChartData1(pendidikan1, tdakBelumsekolahJtg,
                    const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData1(pendidikan2, tdkTamatSDJtg,
                    const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData1(pendidikan3, sdJtg,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData1(pendidikan4, smpJtg,
                    const Color.fromARGB(255, 241, 41, 151)),
                _ChartData1(pendidikan5, smaJtg,
                    const Color.fromARGB(255, 243, 240, 49)),
                _ChartData1(
                    pendidikan6, ptJtg, const Color.fromARGB(255, 4, 117, 10)),
              ];

              tooltip = TooltipBehavior(enable: true);

              return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(children: [
                    //Grafik pendidikan Cilacap
                    SizedBox(
                        height: screenHeight * 0.80,
                        width: screenWidth,
                        child: SfCircularChart(
                            title: ChartTitle(
                                text:
                                    'Persentase Penduduk Usia 15+ Menurut Pendidikan Tertinggi yang Ditamatkan di Kabupaten Cilacap',
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
                                position: LegendPosition.bottom,
                                isVisible: true,
                                itemPadding: 5,
                                overflowMode: LegendItemOverflowMode.wrap,

                                // Legend title
                                title: LegendTitle(
                                    text: 'Pendidikan Tertinggi',
                                    textStyle: const TextStyle(
                                        color: Color.fromARGB(255, 12, 12, 12),
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w900))),
                            series: <CircularSeries>[
                              DoughnutSeries<_ChartData, String>(
                                dataSource: data,
                                xValueMapper: (_ChartData data, _) => data.x,
                                yValueMapper: (_ChartData data, _) => data.y,
                                pointColorMapper: (_ChartData data, _) =>
                                    data.color,
                                radius: '70%',
                                innerRadius: '35%',
                                dataLabelSettings: const DataLabelSettings(
                                    isVisible: true,
                                    labelPosition:
                                        ChartDataLabelPosition.outside,
                                    useSeriesColor: true,
                                    connectorLineSettings:
                                        ConnectorLineSettings(
                                            // Type of the connector line
                                            type: ConnectorType.curve)),
                                //explode: true,
                                //explodeIndex: 1
                              ),
                            ])),

                    Divider(
                      color: Colors.grey.shade400,
                      thickness: 2,
                    ),

                    //Grafik pendidikan jateng
                    SizedBox(
                        height: screenHeight * 0.80,
                        width: screenWidth,
                        child: SfCircularChart(
                            title: ChartTitle(
                                text:
                                    'Persentase Penduduk Usia 15+ Menurut Pendidikan Tertinggi yang Ditamatkan di Jawa Tengah',
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
                                position: LegendPosition.bottom,
                                isVisible: true,
                                itemPadding: 5,
                                overflowMode: LegendItemOverflowMode.wrap,

                                // Legend title
                                title: LegendTitle(
                                    text: 'Pendidikan Tertinggi',
                                    textStyle: const TextStyle(
                                        color: Color.fromARGB(255, 12, 12, 12),
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w900))),
                            series: <CircularSeries>[
                              DoughnutSeries<_ChartData1, String>(
                                dataSource: data1,
                                xValueMapper: (_ChartData1 data, _) => data.x,
                                yValueMapper: (_ChartData1 data, _) => data.y,
                                pointColorMapper: (_ChartData1 data, _) =>
                                    data.color,
                                radius: '70%',
                                innerRadius: '35%',
                                dataLabelSettings: const DataLabelSettings(
                                    isVisible: true,
                                    labelPosition:
                                        ChartDataLabelPosition.outside,
                                    useSeriesColor: true,
                                    connectorLineSettings:
                                        ConnectorLineSettings(
                                            // Type of the connector line
                                            type: ConnectorType.curve)),
                                //explode: true,
                                //explodeIndex: 1
                              ),
                            ]))
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

class _ChartData1 {
  _ChartData1(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
