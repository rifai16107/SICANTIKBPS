// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelRumahmilikLF {
  final int id;
  final String wilayah;
  final String milik_sendiri;
  final String kontrak;
  final String bebas_sewa;
  final String lainnya;
  final String total;
  final String tahun;

  const modelRumahmilikLF({
    required this.id,
    required this.wilayah,
    required this.milik_sendiri,
    required this.kontrak,
    required this.bebas_sewa,
    required this.lainnya,
    required this.total,
    required this.tahun,
  });

  factory modelRumahmilikLF.fromJson(Map<String, dynamic> json) {
    return modelRumahmilikLF(
      id: json['id'],
      wilayah: json['wilayah'],
      milik_sendiri: json['milik_sendiri'],
      kontrak: json['kontrak'],
      bebas_sewa: json['bebas_sewa'],
      lainnya: json['lainnya'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class RepositoryRumahmilikLF {
  final _baseURL = 'https://bps-3301-asap.my.id/api/longform-rumahmilik';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isirumahmiliklf) =>
                modelRumahmilikLF.fromJson(isirumahmiliklf))
            .toList();
      }
    } catch (isirumahmiliklf) {
      // ignore: avoid_print
      print(isirumahmiliklf.toString());
    }
  }
}

class GrafikRumahmilikLF extends StatefulWidget {
  const GrafikRumahmilikLF({Key? key}) : super(key: key);

  @override
  _GrafikRumahmilikLFState createState() => _GrafikRumahmilikLFState();
}

class _GrafikRumahmilikLFState extends State<GrafikRumahmilikLF> {
  RepositoryRumahmilikLF repositoryrumahmiliklf = RepositoryRumahmilikLF();
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
      future: repositoryrumahmiliklf.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isirumahmiliklf = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String dinding1 = "Milik Sendiri";
              String dinding2 = "Kontrak/Sewa";
              String dinding3 = "Bebas Sewa";
              String dinding4 = "Lainnya";

              double total =
                  double.parse(isirumahmiliklf[index = 0].milik_sendiri) +
                      double.parse(isirumahmiliklf[index = 0].kontrak) +
                      double.parse(isirumahmiliklf[index = 0].bebas_sewa) +
                      double.parse(isirumahmiliklf[index = 0].lainnya);

              double milik_sendiriC1 =
                  (double.parse(isirumahmiliklf[index = 0].milik_sendiri)) /
                      total *
                      100;
              double kontrakC2 =
                  (double.parse(isirumahmiliklf[index = 0].kontrak)) /
                      total *
                      100;
              double bebas_sewaC3 =
                  (double.parse(isirumahmiliklf[index = 0].bebas_sewa)) /
                      total *
                      100;
              double lainnyaC4 =
                  (double.parse(isirumahmiliklf[index = 0].lainnya)) /
                      total *
                      100;

              double milik_sendiriClp1 =
                  double.parse(milik_sendiriC1.toStringAsFixed(2));
              double kontrakClp2 = double.parse(kontrakC2.toStringAsFixed(2));
              double bebas_sewaClp3 =
                  double.parse(bebas_sewaC3.toStringAsFixed(2));
              double lainnyaClp4 = double.parse(lainnyaC4.toStringAsFixed(2));

              double totaljateng =
                  double.parse(isirumahmiliklf[index = 35].milik_sendiri) +
                      double.parse(isirumahmiliklf[index = 35].kontrak) +
                      double.parse(isirumahmiliklf[index = 35].bebas_sewa) +
                      double.parse(isirumahmiliklf[index = 35].lainnya);

              double milik_sendiriJ1 =
                  (double.parse(isirumahmiliklf[index = 35].milik_sendiri)) /
                      totaljateng *
                      100;
              double kontrakJ2 =
                  (double.parse(isirumahmiliklf[index = 35].kontrak)) /
                      totaljateng *
                      100;
              double bebas_sewaJ3 =
                  (double.parse(isirumahmiliklf[index = 35].bebas_sewa)) /
                      totaljateng *
                      100;
              double lainnyaJ4 =
                  (double.parse(isirumahmiliklf[index = 35].lainnya)) /
                      totaljateng *
                      100;

              double milik_sendiriJtg1 =
                  double.parse(milik_sendiriJ1.toStringAsFixed(2));
              double kontrakJtg2 = double.parse(kontrakJ2.toStringAsFixed(2));
              double bebas_sewaJtg3 =
                  double.parse(bebas_sewaJ3.toStringAsFixed(2));
              double lainnyaJtg4 = double.parse(lainnyaJ4.toStringAsFixed(2));

              toString();
              data = [
                _ChartData(dinding1, milik_sendiriClp1,
                    const Color.fromARGB(217, 41, 77, 235)),
                _ChartData(dinding2, kontrakClp2,
                    const Color.fromARGB(255, 241, 245, 39)),
                _ChartData(dinding3, bebas_sewaClp3,
                    const Color.fromARGB(255, 21, 105, 4)),
                _ChartData(dinding4, lainnyaClp4,
                    const Color.fromARGB(255, 240, 57, 57)),
              ];

              data1 = [
                _ChartData1(dinding1, milik_sendiriJtg1,
                    const Color.fromARGB(217, 41, 77, 235)),
                _ChartData1(dinding2, kontrakJtg2,
                    const Color.fromARGB(255, 241, 245, 39)),
                _ChartData1(dinding3, bebas_sewaJtg3,
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
                                    'Persentase Rumah Tangga Menurut Status Kepemilikan Tanah dan Bangunan di Kabupaten Cilacap (Hasil Pendataan Long Form SP2020)',
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
                                    text: 'Status Kepemilikan',
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
                                    'Persentase Rumah Tangga Menurut Status Kepemilikan Tanah dan Bangunan di Provinsi Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                                    text: 'Status Kepemilikan',
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
