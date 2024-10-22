// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelRumahdindingLF {
  final int id;
  final String wilayah;
  final String tembok;
  final String plesteran_anyaman_bambu;
  final String kayu_papan;
  final String lainnya;
  final String total;
  final String tahun;

  const modelRumahdindingLF({
    required this.id,
    required this.wilayah,
    required this.tembok,
    required this.plesteran_anyaman_bambu,
    required this.kayu_papan,
    required this.lainnya,
    required this.total,
    required this.tahun,
  });

  factory modelRumahdindingLF.fromJson(Map<String, dynamic> json) {
    return modelRumahdindingLF(
      id: json['id'],
      wilayah: json['wilayah'],
      tembok: json['tembok'],
      plesteran_anyaman_bambu: json['plesteran_anyaman_bambu'],
      kayu_papan: json['kayu_papan'],
      lainnya: json['lainnya'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class RepositoryRumahdindingLF {
  final _baseURL = 'https://bps-3301-asap.my.id/api/longform-rumahdinding';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isirumahdindinglf) =>
                modelRumahdindingLF.fromJson(isirumahdindinglf))
            .toList();
      }
    } catch (isirumahdindinglf) {
      // ignore: avoid_print
      print(isirumahdindinglf.toString());
    }
  }
}

class GrafikRumahdindingLF extends StatefulWidget {
  const GrafikRumahdindingLF({Key? key}) : super(key: key);

  @override
  _GrafikRumahdindingLFState createState() => _GrafikRumahdindingLFState();
}

class _GrafikRumahdindingLFState extends State<GrafikRumahdindingLF> {
  RepositoryRumahdindingLF repositoryrumahdindinglf =
      RepositoryRumahdindingLF();
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
      future: repositoryrumahdindinglf.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isirumahdindinglf = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String dinding1 = "Tembok";
              String dinding2 = "Plesteran anayaman bambu/Kawat";
              String dinding3 = "Kayu/Papan/Batang Kayu";
              String dinding4 = "Lainnya";

              double total = double.parse(isirumahdindinglf[index = 0].tembok) +
                  double.parse(
                      isirumahdindinglf[index = 0].plesteran_anyaman_bambu) +
                  double.parse(isirumahdindinglf[index = 0].kayu_papan) +
                  double.parse(isirumahdindinglf[index = 0].lainnya);

              double tembokC1 =
                  (double.parse(isirumahdindinglf[index = 0].tembok)) /
                      total *
                      100;
              double plesteran_anyaman_bambuC2 = (double.parse(
                      isirumahdindinglf[index = 0].plesteran_anyaman_bambu)) /
                  total *
                  100;
              double kayu_papanC3 =
                  (double.parse(isirumahdindinglf[index = 0].kayu_papan)) /
                      total *
                      100;
              double lainnyaC4 =
                  (double.parse(isirumahdindinglf[index = 0].lainnya)) /
                      total *
                      100;

              double tembokClp1 = double.parse(tembokC1.toStringAsFixed(2));
              double plesteran_anyaman_bambuClp2 =
                  double.parse(plesteran_anyaman_bambuC2.toStringAsFixed(2));
              double kayu_papanClp3 =
                  double.parse(kayu_papanC3.toStringAsFixed(2));
              double lainnyaClp4 = double.parse(lainnyaC4.toStringAsFixed(2));

              double totaljateng = double.parse(
                      isirumahdindinglf[index = 35].tembok) +
                  double.parse(
                      isirumahdindinglf[index = 35].plesteran_anyaman_bambu) +
                  double.parse(isirumahdindinglf[index = 35].kayu_papan) +
                  double.parse(isirumahdindinglf[index = 35].lainnya);

              double tembokJ1 =
                  (double.parse(isirumahdindinglf[index = 35].tembok)) /
                      totaljateng *
                      100;
              double plesteran_anyaman_bambuJ2 = (double.parse(
                      isirumahdindinglf[index = 35].plesteran_anyaman_bambu)) /
                  totaljateng *
                  100;
              double kayu_papanJ3 =
                  (double.parse(isirumahdindinglf[index = 35].kayu_papan)) /
                      totaljateng *
                      100;
              double lainnyaJ4 =
                  (double.parse(isirumahdindinglf[index = 35].lainnya)) /
                      totaljateng *
                      100;

              double tembokJtg1 = double.parse(tembokJ1.toStringAsFixed(2));
              double plesteran_anyaman_bambuJtg2 =
                  double.parse(plesteran_anyaman_bambuJ2.toStringAsFixed(2));
              double kayu_papanJtg3 =
                  double.parse(kayu_papanJ3.toStringAsFixed(2));
              double lainnyaJtg4 = double.parse(lainnyaJ4.toStringAsFixed(2));

              toString();
              data = [
                _ChartData(dinding1, tembokClp1,
                    const Color.fromARGB(217, 41, 77, 235)),
                _ChartData(dinding2, plesteran_anyaman_bambuClp2,
                    const Color.fromARGB(255, 241, 245, 39)),
                _ChartData(dinding3, kayu_papanClp3,
                    const Color.fromARGB(255, 21, 105, 4)),
                _ChartData(dinding4, lainnyaClp4,
                    const Color.fromARGB(255, 240, 57, 57)),
              ];

              data1 = [
                _ChartData1(dinding1, tembokJtg1,
                    const Color.fromARGB(217, 41, 77, 235)),
                _ChartData1(dinding2, plesteran_anyaman_bambuJtg2,
                    const Color.fromARGB(255, 241, 245, 39)),
                _ChartData1(dinding3, kayu_papanJtg3,
                    const Color.fromARGB(255, 21, 105, 4)),
                _ChartData1(dinding4, lainnyaJtg4,
                    const Color.fromARGB(255, 240, 57, 57)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(children: [
                    //Grafik lantai  Cilacap
                    SizedBox(
                        height: screenHeight * 0.80,
                        width: screenWidth,
                        child: SfCircularChart(
                            title: ChartTitle(
                                text:
                                    'Persentase Rumah Tangga Menurut Jenis Dinding Terluas di Kabupaten Cilacap (Hasil Pendataan Long Form SP2020)',
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
                                itemPadding: 8,
                                overflowMode: LegendItemOverflowMode.wrap,
                                shouldAlwaysShowScrollbar: true,
                                //offset: const Offset(10, 20),
                                // Legend title
                                title: LegendTitle(
                                    text: 'Jenis Dinding Terluas',
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
                                innerRadius: '30%',
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

                    //Grafik lantai jateng
                    SizedBox(
                        height: screenHeight * 0.80,
                        width: screenWidth,
                        child: SfCircularChart(
                            title: ChartTitle(
                                text:
                                    'Persentase Rumah Tangga Menurut Jenis Dinding Terluas di Provinsi Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                                itemPadding: 8,
                                overflowMode: LegendItemOverflowMode.wrap,

                                // Legend title
                                title: LegendTitle(
                                    text: 'Jenis Dinding Terluas',
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
                                innerRadius: '30%',
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
