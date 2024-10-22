// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelRumahatapLF {
  final int id;
  final String wilayah;
  final String beton;
  final String genteng;
  final String seng;
  final String asbes;
  final String bambu_kayu_sirap;
  final String lainnya;
  final String total;
  final String tahun;

  const modelRumahatapLF({
    required this.id,
    required this.wilayah,
    required this.beton,
    required this.genteng,
    required this.seng,
    required this.asbes,
    required this.bambu_kayu_sirap,
    required this.lainnya,
    required this.total,
    required this.tahun,
  });

  factory modelRumahatapLF.fromJson(Map<String, dynamic> json) {
    return modelRumahatapLF(
      id: json['id'],
      wilayah: json['wilayah'],
      beton: json['beton'],
      genteng: json['genteng'],
      seng: json['seng'],
      asbes: json['asbes'],
      bambu_kayu_sirap: json['bambu_kayu_sirap'],
      lainnya: json['lainnya'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class RepositoryRumahatapLF {
  final _baseURL = 'https://bps-3301-asap.my.id/api/longform-rumahatap';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isirumahataplf) => modelRumahatapLF.fromJson(isirumahataplf))
            .toList();
      }
    } catch (isirumahataplf) {
      // ignore: avoid_print
      print(isirumahataplf.toString());
    }
  }
}

class GrafikRumahatapLF extends StatefulWidget {
  const GrafikRumahatapLF({Key? key}) : super(key: key);

  @override
  _GrafikRumahatapLFState createState() => _GrafikRumahatapLFState();
}

class _GrafikRumahatapLFState extends State<GrafikRumahatapLF> {
  RepositoryRumahatapLF repositoryrumahataplf = RepositoryRumahatapLF();
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
      future: repositoryrumahataplf.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isirumahataplf = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String atap1 = "Beton";
              String atap2 = "Genteng";
              String atap3 = "Seng";
              String atap4 = "Asbes";
              String atap5 = "Bambu/Kayu/Sirap";
              String atap6 = "Lainnya";

              double total = double.parse(isirumahataplf[index = 0].beton) +
                  double.parse(isirumahataplf[index = 0].genteng) +
                  double.parse(isirumahataplf[index = 0].seng) +
                  double.parse(isirumahataplf[index = 0].asbes) +
                  double.parse(isirumahataplf[index = 0].bambu_kayu_sirap) +
                  double.parse(isirumahataplf[index = 0].lainnya);

              double betonC1 =
                  (double.parse(isirumahataplf[index = 0].beton)) / total * 100;
              double gentengC2 =
                  (double.parse(isirumahataplf[index = 0].genteng)) /
                      total *
                      100;
              double sengC3 =
                  (double.parse(isirumahataplf[index = 0].seng)) / total * 100;
              double asbesC4 =
                  (double.parse(isirumahataplf[index = 0].asbes)) / total * 100;
              double bambukayusirapC5 =
                  (double.parse(isirumahataplf[index = 0].bambu_kayu_sirap)) /
                      total *
                      100;
              double lainnyaC6 =
                  (double.parse(isirumahataplf[index = 0].lainnya)) /
                      total *
                      100;

              double betonClp1 = double.parse(betonC1.toStringAsFixed(2));
              double gentengClp2 = double.parse(gentengC2.toStringAsFixed(2));
              double sengClp3 = double.parse(sengC3.toStringAsFixed(2));
              double asbesClp4 = double.parse(asbesC4.toStringAsFixed(2));
              double bambukayusirapClp5 =
                  double.parse(bambukayusirapC5.toStringAsFixed(2));
              double lainnyaClp6 = double.parse(lainnyaC6.toStringAsFixed(2));

              double totaljateng = double.parse(
                      isirumahataplf[index = 35].beton) +
                  double.parse(isirumahataplf[index = 35].genteng) +
                  double.parse(isirumahataplf[index = 35].seng) +
                  double.parse(isirumahataplf[index = 35].asbes) +
                  double.parse(isirumahataplf[index = 35].bambu_kayu_sirap) +
                  double.parse(isirumahataplf[index = 35].lainnya);

              double betonJ1 =
                  (double.parse(isirumahataplf[index = 35].beton)) /
                      totaljateng *
                      100;
              double gentengJ2 =
                  (double.parse(isirumahataplf[index = 35].genteng)) /
                      totaljateng *
                      100;
              double sengJ3 = (double.parse(isirumahataplf[index = 35].seng)) /
                  totaljateng *
                  100;
              double asbesJ4 =
                  (double.parse(isirumahataplf[index = 35].asbes)) /
                      totaljateng *
                      100;
              double bambukayusirapJ5 =
                  (double.parse(isirumahataplf[index = 35].bambu_kayu_sirap)) /
                      totaljateng *
                      100;
              double lainnyaJ6 =
                  (double.parse(isirumahataplf[index = 35].lainnya)) /
                      totaljateng *
                      100;

              double betonJtg1 = double.parse(betonJ1.toStringAsFixed(2));
              double gentengJtg2 = double.parse(gentengJ2.toStringAsFixed(2));
              double sengJtg3 = double.parse(sengJ3.toStringAsFixed(2));
              double asbesJtg4 = double.parse(asbesJ4.toStringAsFixed(2));
              double bambukayusirapJtg5 =
                  double.parse(bambukayusirapJ5.toStringAsFixed(2));
              double lainnyaJtg6 = double.parse(lainnyaJ6.toStringAsFixed(2));

              toString();
              data = [
                _ChartData(
                    atap1, betonClp1, const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData(
                    atap2, gentengClp2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    atap3, sengClp3, const Color.fromARGB(255, 70, 231, 236)),
                _ChartData(
                    atap4, asbesClp4, const Color.fromARGB(255, 241, 41, 151)),
                _ChartData(atap5, bambukayusirapClp5,
                    const Color.fromARGB(255, 243, 240, 49)),
                _ChartData(
                    atap6, lainnyaClp6, const Color.fromARGB(255, 4, 117, 10)),
              ];

              data1 = [
                _ChartData1(
                    atap1, betonJtg1, const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData1(
                    atap2, gentengJtg2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData1(
                    atap3, sengJtg3, const Color.fromARGB(255, 70, 231, 236)),
                _ChartData1(
                    atap4, asbesJtg4, const Color.fromARGB(255, 241, 41, 151)),
                _ChartData1(atap5, bambukayusirapJtg5,
                    const Color.fromARGB(255, 243, 240, 49)),
                _ChartData1(
                    atap6, lainnyaJtg6, const Color.fromARGB(255, 4, 117, 10)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(children: [
                    //Grafik atap Cilacap
                    SizedBox(
                        height: screenHeight * 0.80,
                        width: screenWidth,
                        child: SfCircularChart(
                            title: ChartTitle(
                                text:
                                    'Persentase Rumah Tangga Menurut Jenis Atap Terluas di Kabupaten Cilacap (Hasil Pendataan Long Form SP2020)',
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
                                    text: 'Jenis Atap Terluas',
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
                                radius: '75%',
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

                    //Grafik atap jateng
                    SizedBox(
                        height: screenHeight * 0.80,
                        width: screenWidth,
                        child: SfCircularChart(
                            title: ChartTitle(
                                text:
                                    'Persentase Rumah Tangga Menurut Jenis Atap Terluas di Provinsi Jawa Tengah (Hasil Pendataan Long Form SP2020)',
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
                                    text: 'Jenis Atap Terluas',
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
                                radius: '75%',
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
