// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelRumahlantaiLF {
  final int id;
  final String wilayah;
  final String marmer_granit;
  final String keramik;
  final String parket_vinil_karpet_ubin;
  final String kayu_papan;
  final String semen_bata;
  final String tanah;
  final String lainnya;
  final String total;
  final String tahun;

  const modelRumahlantaiLF({
    required this.id,
    required this.wilayah,
    required this.marmer_granit,
    required this.keramik,
    required this.parket_vinil_karpet_ubin,
    required this.kayu_papan,
    required this.semen_bata,
    required this.tanah,
    required this.lainnya,
    required this.total,
    required this.tahun,
  });

  factory modelRumahlantaiLF.fromJson(Map<String, dynamic> json) {
    return modelRumahlantaiLF(
      id: json['id'],
      wilayah: json['wilayah'],
      marmer_granit: json['marmer_granit'],
      keramik: json['keramik'],
      parket_vinil_karpet_ubin: json['parket_vinil_karpet_ubin'],
      kayu_papan: json['kayu_papan'],
      semen_bata: json['semen_bata'],
      tanah: json['tanah'],
      lainnya: json['lainnya'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class RepositoryRumahlantaiLF {
  final _baseURL = 'https://bps-3301-asap.my.id/api/longform-rumahlantai';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isirumahlantailf) =>
                modelRumahlantaiLF.fromJson(isirumahlantailf))
            .toList();
      }
    } catch (isirumahlantailf) {
      // ignore: avoid_print
      print(isirumahlantailf.toString());
    }
  }
}

class GrafikRumahlantaiLF extends StatefulWidget {
  const GrafikRumahlantaiLF({Key? key}) : super(key: key);

  @override
  _GrafikRumahlantaiLFState createState() => _GrafikRumahlantaiLFState();
}

class _GrafikRumahlantaiLFState extends State<GrafikRumahlantaiLF> {
  RepositoryRumahlantaiLF repositoryrumahlantailf = RepositoryRumahlantaiLF();
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
      future: repositoryrumahlantailf.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isirumahlantailf = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String atap1 = "Marmer/Granit";
              String atap2 = "Keramik";
              String atap3 = "Parket/Vinil/Karpet/Ubin/Tegel/Teraso";
              String atap4 = "Kayu/Papan";
              String atap5 = "Semen/Bata Merah";
              String atap6 = "Tanah";
              String atap7 = "Lainnya";

              double total = double.parse(
                      isirumahlantailf[index = 0].marmer_granit) +
                  double.parse(isirumahlantailf[index = 0].keramik) +
                  double.parse(
                      isirumahlantailf[index = 0].parket_vinil_karpet_ubin) +
                  double.parse(isirumahlantailf[index = 0].kayu_papan) +
                  double.parse(isirumahlantailf[index = 0].semen_bata) +
                  double.parse(isirumahlantailf[index = 0].tanah) +
                  double.parse(isirumahlantailf[index = 0].lainnya);

              double marmer_granitC1 =
                  (double.parse(isirumahlantailf[index = 0].marmer_granit)) /
                      total *
                      100;
              double keramikC2 =
                  (double.parse(isirumahlantailf[index = 0].keramik)) /
                      total *
                      100;
              double parket_vinil_karpet_ubinC3 = (double.parse(
                      isirumahlantailf[index = 0].parket_vinil_karpet_ubin)) /
                  total *
                  100;
              double kayu_papanC4 =
                  (double.parse(isirumahlantailf[index = 0].kayu_papan)) /
                      total *
                      100;
              double semen_bataC5 =
                  (double.parse(isirumahlantailf[index = 0].semen_bata)) /
                      total *
                      100;
              double tanahC6 =
                  (double.parse(isirumahlantailf[index = 0].tanah)) /
                      total *
                      100;
              double lainnyaC7 =
                  (double.parse(isirumahlantailf[index = 0].lainnya)) /
                      total *
                      100;

              double marmer_granitClp1 =
                  double.parse(marmer_granitC1.toStringAsFixed(2));
              double keramikClp2 = double.parse(keramikC2.toStringAsFixed(2));
              double parket_vinil_karpet_ubinClp3 =
                  double.parse(parket_vinil_karpet_ubinC3.toStringAsFixed(2));
              double kayu_papanClp4 =
                  double.parse(kayu_papanC4.toStringAsFixed(2));
              double semen_bataClp5 =
                  double.parse(semen_bataC5.toStringAsFixed(2));
              double tanahClp6 = double.parse(tanahC6.toStringAsFixed(2));
              double lainnyaClp7 = double.parse(lainnyaC7.toStringAsFixed(2));

              double totaljateng = double.parse(
                      isirumahlantailf[index = 35].marmer_granit) +
                  double.parse(isirumahlantailf[index = 35].keramik) +
                  double.parse(
                      isirumahlantailf[index = 35].parket_vinil_karpet_ubin) +
                  double.parse(isirumahlantailf[index = 35].kayu_papan) +
                  double.parse(isirumahlantailf[index = 35].semen_bata) +
                  double.parse(isirumahlantailf[index = 35].tanah) +
                  double.parse(isirumahlantailf[index = 35].lainnya);

              double marmer_granitJ1 =
                  (double.parse(isirumahlantailf[index = 35].marmer_granit)) /
                      totaljateng *
                      100;
              double keramikJ2 =
                  (double.parse(isirumahlantailf[index = 35].keramik)) /
                      totaljateng *
                      100;
              double parket_vinil_karpet_ubinlJ3 = (double.parse(
                      isirumahlantailf[index = 35].parket_vinil_karpet_ubin)) /
                  totaljateng *
                  100;
              double kayu_papanJ4 =
                  (double.parse(isirumahlantailf[index = 35].kayu_papan)) /
                      totaljateng *
                      100;
              double semen_bataJ5 =
                  (double.parse(isirumahlantailf[index = 35].semen_bata)) /
                      totaljateng *
                      100;
              double tanahJ6 =
                  (double.parse(isirumahlantailf[index = 35].tanah)) /
                      totaljateng *
                      100;
              double lainnyaJ7 =
                  (double.parse(isirumahlantailf[index = 35].lainnya)) /
                      totaljateng *
                      100;

              double marmer_granitJtg1 =
                  double.parse(marmer_granitJ1.toStringAsFixed(2));
              double keramikJtg2 = double.parse(keramikJ2.toStringAsFixed(2));
              double parket_vinil_karpet_ubinJtg3 =
                  double.parse(parket_vinil_karpet_ubinlJ3.toStringAsFixed(2));
              double kayu_papanJtg4 =
                  double.parse(kayu_papanJ4.toStringAsFixed(2));
              double semen_bataJtg5 =
                  double.parse(semen_bataJ5.toStringAsFixed(2));
              double tanahJtg6 = double.parse(tanahJ6.toStringAsFixed(2));
              double lainnyaJtg7 = double.parse(lainnyaJ7.toStringAsFixed(2));

              toString();
              data = [
                _ChartData(atap1, marmer_granitClp1,
                    const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData(
                    atap2, keramikClp2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(atap3, parket_vinil_karpet_ubinClp3,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData(atap4, kayu_papanClp4,
                    const Color.fromARGB(255, 241, 41, 151)),
                _ChartData(atap5, semen_bataClp5,
                    const Color.fromARGB(255, 243, 240, 49)),
                _ChartData(
                    atap6, tanahClp6, const Color.fromARGB(255, 4, 117, 10)),
                _ChartData(
                    atap7, lainnyaClp7, const Color.fromARGB(255, 10, 10, 10)),
              ];

              data1 = [
                _ChartData1(atap1, marmer_granitJtg1,
                    const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData1(
                    atap2, keramikJtg2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData1(atap3, parket_vinil_karpet_ubinJtg3,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData1(atap4, kayu_papanJtg4,
                    const Color.fromARGB(255, 241, 41, 151)),
                _ChartData1(atap5, semen_bataJtg5,
                    const Color.fromARGB(255, 243, 240, 49)),
                _ChartData1(
                    atap6, tanahJtg6, const Color.fromARGB(255, 4, 117, 10)),
                _ChartData1(
                    atap7, lainnyaJtg7, const Color.fromARGB(255, 10, 10, 10)),
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
                                    'Persentase Rumah Tangga Menurut Jenis Lantai Terluas di Kabupaten Cilacap (Hasil Pendataan Long Form SP2020)',
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
                                    text: 'Jenis Lantai Terluas',
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
                                    'Persentase Rumah Tangga Menurut Jenis Lantai Terluas di Provinsi Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                                    text: 'Jenis Lantai Terluas',
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
