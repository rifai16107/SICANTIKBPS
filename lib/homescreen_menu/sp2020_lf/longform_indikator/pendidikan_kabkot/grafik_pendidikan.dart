// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelPendidikanLF {
  final int id;
  final String wilayah;
  final String tdk_blm_sekolah;
  final String tdk_blm_tamat_sd;
  final String sd_sederajat;
  final String smp_sederajat;
  final String sma_sederajat;
  final String d1d2d3;
  final String d4s1;
  final String profesi;
  final String s2s3;
  final String total;
  final String tahun;

  const modelPendidikanLF({
    required this.id,
    required this.wilayah,
    required this.tdk_blm_sekolah,
    required this.tdk_blm_tamat_sd,
    required this.sd_sederajat,
    required this.smp_sederajat,
    required this.sma_sederajat,
    required this.d1d2d3,
    required this.d4s1,
    required this.profesi,
    required this.s2s3,
    required this.total,
    required this.tahun,
  });

  factory modelPendidikanLF.fromJson(Map<String, dynamic> json) {
    return modelPendidikanLF(
      id: json['id'],
      wilayah: json['wilayah'],
      tdk_blm_sekolah: json['tdk_blm_sekolah'],
      tdk_blm_tamat_sd: json['tdk_blm_tamat_sd'],
      sd_sederajat: json['sd_sederajat'],
      smp_sederajat: json['smp_sederajat'],
      sma_sederajat: json['sma_sederajat'],
      d1d2d3: json['d1d2d3'],
      d4s1: json['d4s1'],
      profesi: json['profesi'],
      s2s3: json['s2s3'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class RepositoryPendidikanLF {
  final _baseURL = 'https://bps-3301-asap.my.id/api/longform-pendidikan';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikanlf) =>
                modelPendidikanLF.fromJson(isipendidikanlf))
            .toList();
      }
    } catch (isipendidikanlf) {
      // ignore: avoid_print
      print(isipendidikanlf.toString());
    }
  }
}

class GrafikPendidikanLF extends StatefulWidget {
  const GrafikPendidikanLF({Key? key}) : super(key: key);

  @override
  _GrafikPendidikanLFState createState() => _GrafikPendidikanLFState();
}

class _GrafikPendidikanLFState extends State<GrafikPendidikanLF> {
  RepositoryPendidikanLF repositorypendidikanlf = RepositoryPendidikanLF();
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
      future: repositorypendidikanlf.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipendidikanlf = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String pddkn1 = "Tdk/Belum Sekolah";
              String pddkn2 = "Tdk/Belum Tamat SD";
              String pddkn3 = "SD sederajat";
              String pddkn4 = "SMP sederajat";
              String pddkn5 = "SMA sederajat";
              String pddkn6 = "D1/D2/D3";
              String pddkn7 = "DIV/S1";
              String pddkn8 = "Profesi";
              String pddkn9 = "S2/S3";

              double pddknC1 = (double.parse(isipendidikanlf[index = 0].tdk_blm_sekolah))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC2 = (double.parse(isipendidikanlf[index = 0].tdk_blm_tamat_sd))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC3 = (double.parse(isipendidikanlf[index = 0].sd_sederajat))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC4 = (double.parse(isipendidikanlf[index = 0].smp_sederajat))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC5 = (double.parse(isipendidikanlf[index = 0].sma_sederajat))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC6 = (double.parse(isipendidikanlf[index = 0].d1d2d3))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC7 = (double.parse(isipendidikanlf[index = 0].d4s1))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC8 = (double.parse(isipendidikanlf[index = 0].profesi))/(double.parse(isipendidikanlf[index = 0].total))*100;
              double pddknC9 = (double.parse(isipendidikanlf[index = 0].s2s3))/(double.parse(isipendidikanlf[index = 0].total))*100;

              double pddknClp1 = double.parse(pddknC1.toStringAsFixed(2));
              double pddknClp2 = double.parse(pddknC2.toStringAsFixed(2));
              double pddknClp3 = double.parse(pddknC3.toStringAsFixed(2));
              double pddknClp4 = double.parse(pddknC4.toStringAsFixed(2));
              double pddknClp5 = double.parse(pddknC5.toStringAsFixed(2));
              double pddknClp6 = double.parse(pddknC6.toStringAsFixed(2));
              double pddknClp7 = double.parse(pddknC7.toStringAsFixed(2));
              double pddknClp8 = double.parse(pddknC8.toStringAsFixed(2));
              double pddknClp9 = double.parse(pddknC9.toStringAsFixed(2));

              double pddknJ1 = (double.parse(isipendidikanlf[index = 35].tdk_blm_sekolah))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ2 = (double.parse(isipendidikanlf[index = 35].tdk_blm_tamat_sd))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ3 = (double.parse(isipendidikanlf[index = 35].sd_sederajat))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ4 = (double.parse(isipendidikanlf[index = 35].smp_sederajat))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ5 = (double.parse(isipendidikanlf[index = 35].sma_sederajat))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ6 = (double.parse(isipendidikanlf[index = 35].d1d2d3))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ7 = (double.parse(isipendidikanlf[index = 35].d4s1))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ8 = (double.parse(isipendidikanlf[index = 35].profesi))/(double.parse(isipendidikanlf[index = 35].total))*100;
              double pddknJ9 = (double.parse(isipendidikanlf[index = 35].s2s3))/(double.parse(isipendidikanlf[index = 35].total))*100;

              double pddknJtg1 = double.parse(pddknJ1.toStringAsFixed(2));
              double pddknJtg2 = double.parse(pddknJ2.toStringAsFixed(2));
              double pddknJtg3 = double.parse(pddknJ3.toStringAsFixed(2));
              double pddknJtg4 = double.parse(pddknJ4.toStringAsFixed(2));
              double pddknJtg5 = double.parse(pddknJ5.toStringAsFixed(2));
              double pddknJtg6 = double.parse(pddknJ6.toStringAsFixed(2));
              double pddknJtg7 = double.parse(pddknJ7.toStringAsFixed(2));
              double pddknJtg8 = double.parse(pddknJ8.toStringAsFixed(2));
              double pddknJtg9 = double.parse(pddknJ9.toStringAsFixed(2));
              

              toString();
              data = [
                _ChartData(pddkn1, pddknClp1,const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData(pddkn2, pddknClp2,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(pddkn3, pddknClp3,const Color.fromARGB(255, 70, 231, 236)),
                _ChartData(pddkn4, pddknClp4,const Color.fromARGB(255, 241, 41, 151)),
                _ChartData(pddkn5, pddknClp5,const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData(pddkn6, pddknClp6,const Color.fromARGB(255, 4, 117, 10)),
                _ChartData(pddkn7, pddknClp7,const Color.fromARGB(255, 39, 2, 30)),
                _ChartData(pddkn8, pddknClp8,const Color.fromARGB(255, 224, 222, 224)),
                _ChartData(pddkn9, pddknClp9,const Color.fromARGB(255, 241, 21, 40)),   
              ];

              data1 = [
                _ChartData1(pddkn1, pddknJtg1,const Color.fromRGBO(255, 117, 39, 39)),
                _ChartData1(pddkn2, pddknJtg2,const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData1(pddkn3, pddknJtg3,const Color.fromARGB(255, 70, 231, 236)),
                _ChartData1(pddkn4, pddknJtg4,const Color.fromARGB(255, 241, 41, 151)),
                _ChartData1(pddkn5, pddknJtg5,const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData1(pddkn6, pddknJtg6,const Color.fromARGB(255, 4, 117, 10)),
                _ChartData1(pddkn7, pddknJtg7,const Color.fromARGB(255, 39, 2, 30)),
                _ChartData1(pddkn8, pddknJtg8,const Color.fromARGB(255, 224, 222, 224)),
                _ChartData1(pddkn9, pddknJtg9,const Color.fromARGB(255, 241, 21, 40)),   
              ];
              tooltip = TooltipBehavior(enable: true);

              return Container(
                  padding: const EdgeInsets.all(2),
               child: Column(
                   children: [        
                
                //Grafik Pedidikan 5+ Cilacap
                SizedBox(  
                  height: screenHeight * 0.75,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Penduduk Usia 5+ Menurut Pendidikan Di Kabupaten Cilacap (Hasil Long Form SP2020)',
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
                              text: 'Tingkat Pendidikan',
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
                          pointColorMapper: (_ChartData data, _) => data.color,
                          radius:'70%',
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
                      ])),
                  
                  Divider(
                                color: Colors.grey.shade400,
                                thickness: 2,
                  ),
                  

                  //Grafik pendidikan 5+ jateng
                  SizedBox(  
                  height: screenHeight * 0.75,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Penduduk Usia 5+ Menurut Pendidikan Di Jawa Tengah  (Hasil Long Form SP2020)',
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
                              text: 'Tingkat Pendidikan',
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
                          pointColorMapper: (_ChartData1 data, _) => data.color,
                          radius:'70%',
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
                      ])),  
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
