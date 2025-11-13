// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniUrbanMilenial {
  final int id;
  final String kecamatan;
  final String petani;
  final String milen19_tekno;
  final String milen1939_tekno;
  final String milen1939_nontekno;
  final String milen39_tekno;
  final String petani_milenial;
  final String urban_rtup;
  final String urban_utp;
  final String tahun;
 
  const modelSensusTaniUrbanMilenial({
    required this.id,
    required this.kecamatan,
    required this.petani,
    required this.milen19_tekno,
    required this.milen1939_tekno,
    required this.milen1939_nontekno,
    required this.milen39_tekno,
    required this.petani_milenial,
    required this.urban_rtup,
    required this.urban_utp,
    required this.tahun,
    
  });

  factory modelSensusTaniUrbanMilenial.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniUrbanMilenial(
      id: json['id'],
      kecamatan: json['kecamatan'],
      petani: json['petani'],
      milen19_tekno: json['milen19_tekno'],
      milen1939_tekno: json['milen1939_tekno'],
      milen1939_nontekno: json['milen1939_nontekno'],
      milen39_tekno: json['milen39_tekno'],
      petani_milenial: json['petani_milenial'],
      urban_rtup: json['urban_rtup'],
      urban_utp: json['urban_utp'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniUrbanMilenial {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-urban-milenial';
Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) => modelSensusTaniUrbanMilenial.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}


class GrafikUrbanMilenial extends StatefulWidget {
  const GrafikUrbanMilenial({Key? key}) : super(key: key);

  @override
  _GrafikUrbanMilenialState createState() => _GrafikUrbanMilenialState();
}

class _GrafikUrbanMilenialState extends State<GrafikUrbanMilenial> {
  RepositorySensusTaniUrbanMilenial repositoryurbanmilenial = RepositorySensusTaniUrbanMilenial();
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
      future: repositoryurbanmilenial.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisensustani = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              
              String kecamatan1 = isisensustani[index = 0].kecamatan;
              String kecamatan2 = isisensustani[index = 1].kecamatan;
              String kecamatan3 = isisensustani[index = 2].kecamatan;
              String kecamatan4 = isisensustani[index = 3].kecamatan;
              String kecamatan5 = isisensustani[index = 4].kecamatan;
              String kecamatan6 = isisensustani[index = 5].kecamatan;
              String kecamatan7 = isisensustani[index = 6].kecamatan;
              String kecamatan8 = isisensustani[index = 7].kecamatan;
              String kecamatan9 = isisensustani[index = 8].kecamatan;
              String kecamatan10 = isisensustani[index = 9].kecamatan;
              String kecamatan11 = isisensustani[index = 10].kecamatan;
              String kecamatan12 = isisensustani[index = 11].kecamatan;
              String kecamatan13 = isisensustani[index = 12].kecamatan;
              String kecamatan14 = isisensustani[index = 13].kecamatan;
              String kecamatan15 = isisensustani[index = 14].kecamatan;
              String kecamatan16 = isisensustani[index = 15].kecamatan;
              String kecamatan17 = isisensustani[index = 16].kecamatan;
              String kecamatan18 = isisensustani[index = 17].kecamatan;
              String kecamatan19 = isisensustani[index = 18].kecamatan;
              String kecamatan20 = isisensustani[index = 19].kecamatan;
              String kecamatan21 = isisensustani[index = 20].kecamatan;
              String kecamatan22 = isisensustani[index = 21].kecamatan;
              String kecamatan23 = isisensustani[index = 22].kecamatan;
              String kecamatan24 = isisensustani[index = 23].kecamatan;
              
              double milen1939_tekno1 = double.parse(isisensustani[index = 0].milen1939_tekno);
              double milen1939_tekno2 = double.parse(isisensustani[index = 1].milen1939_tekno);
              double milen1939_tekno3 = double.parse(isisensustani[index = 2].milen1939_tekno);
              double milen1939_tekno4 = double.parse(isisensustani[index = 3].milen1939_tekno);
              double milen1939_tekno5 = double.parse(isisensustani[index = 4].milen1939_tekno);
              double milen1939_tekno6 = double.parse(isisensustani[index = 5].milen1939_tekno);
              double milen1939_tekno7 = double.parse(isisensustani[index = 6].milen1939_tekno);
              double milen1939_tekno8 = double.parse(isisensustani[index = 7].milen1939_tekno);
              double milen1939_tekno9 = double.parse(isisensustani[index = 8].milen1939_tekno);
              double milen1939_tekno10 = double.parse(isisensustani[index = 9].milen1939_tekno);
              double milen1939_tekno11 = double.parse(isisensustani[index = 10].milen1939_tekno);
              double milen1939_tekno12 = double.parse(isisensustani[index = 11].milen1939_tekno);
              double milen1939_tekno13 = double.parse(isisensustani[index = 12].milen1939_tekno);
              double milen1939_tekno14 = double.parse(isisensustani[index = 13].milen1939_tekno);
              double milen1939_tekno15 = double.parse(isisensustani[index = 14].milen1939_tekno);
              double milen1939_tekno16 = double.parse(isisensustani[index = 15].milen1939_tekno);
              double milen1939_tekno17 = double.parse(isisensustani[index = 16].milen1939_tekno);
              double milen1939_tekno18 = double.parse(isisensustani[index = 17].milen1939_tekno);
              double milen1939_tekno19 = double.parse(isisensustani[index = 18].milen1939_tekno);
              double milen1939_tekno20 = double.parse(isisensustani[index = 19].milen1939_tekno);
              double milen1939_tekno21 = double.parse(isisensustani[index = 20].milen1939_tekno);
              double milen1939_tekno22 = double.parse(isisensustani[index = 21].milen1939_tekno);
              double milen1939_tekno23 = double.parse(isisensustani[index = 22].milen1939_tekno);
              double milen1939_tekno24 = double.parse(isisensustani[index = 23].milen1939_tekno);

              double milen1939_nontekno1 = double.parse(isisensustani[index = 0].milen1939_nontekno);
              double milen1939_nontekno2 = double.parse(isisensustani[index = 1].milen1939_nontekno);
              double milen1939_nontekno3 = double.parse(isisensustani[index = 2].milen1939_nontekno);
              double milen1939_nontekno4 = double.parse(isisensustani[index = 3].milen1939_nontekno);
              double milen1939_nontekno5 = double.parse(isisensustani[index = 4].milen1939_nontekno);
              double milen1939_nontekno6 = double.parse(isisensustani[index = 5].milen1939_nontekno);
              double milen1939_nontekno7 = double.parse(isisensustani[index = 6].milen1939_nontekno);
              double milen1939_nontekno8 = double.parse(isisensustani[index = 7].milen1939_nontekno);
              double milen1939_nontekno9 = double.parse(isisensustani[index = 8].milen1939_nontekno);
              double milen1939_nontekno10 = double.parse(isisensustani[index = 9].milen1939_nontekno);
              double milen1939_nontekno11 = double.parse(isisensustani[index = 10].milen1939_nontekno);
              double milen1939_nontekno12 = double.parse(isisensustani[index = 11].milen1939_nontekno);
              double milen1939_nontekno13 = double.parse(isisensustani[index = 12].milen1939_nontekno);
              double milen1939_nontekno14 = double.parse(isisensustani[index = 13].milen1939_nontekno);
              double milen1939_nontekno15 = double.parse(isisensustani[index = 14].milen1939_nontekno);
              double milen1939_nontekno16 = double.parse(isisensustani[index = 15].milen1939_nontekno);
              double milen1939_nontekno17 = double.parse(isisensustani[index = 16].milen1939_nontekno);
              double milen1939_nontekno18 = double.parse(isisensustani[index = 17].milen1939_nontekno);
              double milen1939_nontekno19 = double.parse(isisensustani[index = 18].milen1939_nontekno);
              double milen1939_nontekno20 = double.parse(isisensustani[index = 19].milen1939_nontekno);
              double milen1939_nontekno21 = double.parse(isisensustani[index = 20].milen1939_nontekno);
              double milen1939_nontekno22 = double.parse(isisensustani[index = 21].milen1939_nontekno);
              double milen1939_nontekno23 = double.parse(isisensustani[index = 22].milen1939_nontekno);
              double milen1939_nontekno24 = double.parse(isisensustani[index = 23].milen1939_nontekno);
           
              

              String tahun = isisensustani[index=0].tahun;

              toString();
              data = [
                _ChartData(kecamatan1, milen1939_tekno1, milen1939_nontekno1),
                _ChartData(kecamatan2, milen1939_tekno2, milen1939_nontekno2),
                _ChartData(kecamatan3, milen1939_tekno3, milen1939_nontekno3),
                _ChartData(kecamatan4, milen1939_tekno4, milen1939_nontekno4),
                _ChartData(kecamatan5, milen1939_tekno5, milen1939_nontekno5),
                _ChartData(kecamatan6, milen1939_tekno6, milen1939_nontekno6),
                _ChartData(kecamatan7, milen1939_tekno7, milen1939_nontekno7),
                _ChartData(kecamatan8, milen1939_tekno8, milen1939_nontekno8),
                _ChartData(kecamatan9, milen1939_tekno9, milen1939_nontekno9),
                _ChartData(kecamatan10, milen1939_tekno10, milen1939_nontekno10),
                _ChartData(kecamatan11, milen1939_tekno11, milen1939_nontekno11),
                _ChartData(kecamatan12, milen1939_tekno12, milen1939_nontekno12), 
                _ChartData(kecamatan13, milen1939_tekno13, milen1939_nontekno13),
                _ChartData(kecamatan14, milen1939_tekno14, milen1939_nontekno14),
                _ChartData(kecamatan15, milen1939_tekno15, milen1939_nontekno15),
                _ChartData(kecamatan16, milen1939_tekno16, milen1939_nontekno16),
                _ChartData(kecamatan17, milen1939_tekno17, milen1939_nontekno17),
                _ChartData(kecamatan18, milen1939_tekno18, milen1939_nontekno18),
                _ChartData(kecamatan19, milen1939_tekno19, milen1939_nontekno19),
                _ChartData(kecamatan20, milen1939_tekno20, milen1939_nontekno20),
                _ChartData(kecamatan21, milen1939_tekno21, milen1939_nontekno21),
                _ChartData(kecamatan22, milen1939_tekno22, milen1939_nontekno22),
                _ChartData(kecamatan23, milen1939_tekno23, milen1939_nontekno23),
                _ChartData(kecamatan24, milen1939_tekno24, milen1939_nontekno24),
                
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight*0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text: 'Jumlah Petani Milenial Usia 19-39 Tahun Menurut Kecamatan dan Penggunaan Teknologi Hasil Sensus Pertanian $tahun',
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
                        padding:5,
                        isVisible: true,
                        textStyle: const TextStyle(
                          fontSize: 11,
                        ),
                        toggleSeriesVisibility: true,
                        overflowMode: LegendItemOverflowMode.wrap,
                        position: LegendPosition.bottom),
                    primaryYAxis: NumericAxis(
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 2900,
                        interval: 500),
                       //zoomPanBehavior: ZoomPanBehavior(
                        //enableDoubleTapZooming: true,
                        //enablePinching: true,
                        // Enables the selection zooming
                        //enableSelectionZooming: true),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      StackedBarSeries<_ChartData, String>(
                        width: 0.80,
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.middle,
                            textStyle: TextStyle(fontSize: 9,
                            color: Colors.black,)),
                        name: 'Menggunakan Teknologi',
                        color: const Color.fromARGB(255, 235, 223, 119),
                      ),
                      StackedBarSeries<_ChartData, String>(
                        width: 0.80,
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y1,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.bottom,
                            textStyle: TextStyle(
                              fontSize: 9,
                              color: Colors.black,
                            )),
                        name: 'Tidak Menggunakan Teknologi',
                        color: const Color.fromARGB(255, 31, 233, 64),
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
  _ChartData(this.x, this.y, this.y1);

  final String x;
  final double y;
  final double y1;
  
}
