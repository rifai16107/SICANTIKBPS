// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniLahanGurem {
  final int id;
  final String kecamatan;
  final String pglahan_rtup;
  final String gurem_rtup;
  final String pglahan_utp;
  final String gurem_utp;
  final String pglahan_petani;
  final String gurem_petani;
  final String tahun;
 
  const modelSensusTaniLahanGurem({
    required this.id,
      required this.kecamatan,
      required this.pglahan_rtup,
      required this.gurem_rtup,
      required this.pglahan_utp,
      required this.gurem_utp,
      required this.pglahan_petani,
      required this.gurem_petani,
      required this.tahun,
    
  });

  factory modelSensusTaniLahanGurem.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniLahanGurem(
      id: json['id'],
      kecamatan: json['kecamatan'],
      pglahan_rtup: json['pglahan_rtup'],
      gurem_rtup: json['gurem_rtup'],
      pglahan_utp: json['pglahan_utp'],
      gurem_utp: json['gurem_utp'],
      pglahan_petani: json['pglahan_petani'],
      gurem_petani: json['gurem_petani'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniLahanGurem {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-lahan-gurem';
Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) => modelSensusTaniLahanGurem.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}


class GrafikGurem extends StatefulWidget {
  const GrafikGurem({Key? key}) : super(key: key);

  @override
  _GrafikGuremState createState() => _GrafikGuremState();
}

class _GrafikGuremState extends State<GrafikGurem> {
  RepositorySensusTaniLahanGurem repositorygurem = RepositorySensusTaniLahanGurem();
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
      future: repositorygurem.getData(),
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
              
              double gurem_petani1 = double.parse(isisensustani[index = 0].gurem_petani);
              double gurem_petani2 = double.parse(isisensustani[index = 1].gurem_petani);
              double gurem_petani3 = double.parse(isisensustani[index = 2].gurem_petani);
              double gurem_petani4 = double.parse(isisensustani[index = 3].gurem_petani);
              double gurem_petani5 = double.parse(isisensustani[index = 4].gurem_petani);
              double gurem_petani6 = double.parse(isisensustani[index = 5].gurem_petani);
              double gurem_petani7 = double.parse(isisensustani[index = 6].gurem_petani);
              double gurem_petani8 = double.parse(isisensustani[index = 7].gurem_petani);
              double gurem_petani9 = double.parse(isisensustani[index = 8].gurem_petani);
              double gurem_petani10 = double.parse(isisensustani[index = 9].gurem_petani);
              double gurem_petani11 = double.parse(isisensustani[index = 10].gurem_petani);
              double gurem_petani12 = double.parse(isisensustani[index = 11].gurem_petani);
              double gurem_petani13 = double.parse(isisensustani[index = 12].gurem_petani);
              double gurem_petani14 = double.parse(isisensustani[index = 13].gurem_petani);
              double gurem_petani15 = double.parse(isisensustani[index = 14].gurem_petani);
              double gurem_petani16 = double.parse(isisensustani[index = 15].gurem_petani);
              double gurem_petani17 = double.parse(isisensustani[index = 16].gurem_petani);
              double gurem_petani18 = double.parse(isisensustani[index = 17].gurem_petani);
              double gurem_petani19 = double.parse(isisensustani[index = 18].gurem_petani);
              double gurem_petani20 = double.parse(isisensustani[index = 19].gurem_petani);
              double gurem_petani21 = double.parse(isisensustani[index = 20].gurem_petani);
              double gurem_petani22 = double.parse(isisensustani[index = 21].gurem_petani);
              double gurem_petani23 = double.parse(isisensustani[index = 22].gurem_petani);
              double gurem_petani24 = double.parse(isisensustani[index = 23].gurem_petani);

              double pglahan_petani1 = double.parse(isisensustani[index = 0].pglahan_petani);
              double pglahan_petani2 = double.parse(isisensustani[index = 1].pglahan_petani);
              double pglahan_petani3 = double.parse(isisensustani[index = 2].pglahan_petani);
              double pglahan_petani4 = double.parse(isisensustani[index = 3].pglahan_petani);
              double pglahan_petani5 = double.parse(isisensustani[index = 4].pglahan_petani);
              double pglahan_petani6 = double.parse(isisensustani[index = 5].pglahan_petani);
              double pglahan_petani7 = double.parse(isisensustani[index = 6].pglahan_petani);
              double pglahan_petani8 = double.parse(isisensustani[index = 7].pglahan_petani);
              double pglahan_petani9 = double.parse(isisensustani[index = 8].pglahan_petani);
              double pglahan_petani10 = double.parse(isisensustani[index = 9].pglahan_petani);
              double pglahan_petani11 = double.parse(isisensustani[index = 10].pglahan_petani);
              double pglahan_petani12 = double.parse(isisensustani[index = 11].pglahan_petani);
              double pglahan_petani13 = double.parse(isisensustani[index = 12].pglahan_petani);
              double pglahan_petani14 = double.parse(isisensustani[index = 13].pglahan_petani);
              double pglahan_petani15 = double.parse(isisensustani[index = 14].pglahan_petani);
              double pglahan_petani16 = double.parse(isisensustani[index = 15].pglahan_petani);
              double pglahan_petani17 = double.parse(isisensustani[index = 16].pglahan_petani);
              double pglahan_petani18 = double.parse(isisensustani[index = 17].pglahan_petani);
              double pglahan_petani19 = double.parse(isisensustani[index = 18].pglahan_petani);
              double pglahan_petani20 = double.parse(isisensustani[index = 19].pglahan_petani);
              double pglahan_petani21 = double.parse(isisensustani[index = 20].pglahan_petani);
              double pglahan_petani22 = double.parse(isisensustani[index = 21].pglahan_petani);
              double pglahan_petani23 = double.parse(isisensustani[index = 22].pglahan_petani);
              double pglahan_petani24 = double.parse(isisensustani[index = 23].pglahan_petani);
           
              

              String tahun = isisensustani[index=0].tahun;

              toString();
              data = [
                _ChartData(kecamatan1, (pglahan_petani1-gurem_petani1), gurem_petani1),
                _ChartData(kecamatan2, (pglahan_petani2-gurem_petani2), gurem_petani2),
                _ChartData(kecamatan3, (pglahan_petani3-gurem_petani3), gurem_petani3),
                _ChartData(kecamatan4, (pglahan_petani4-gurem_petani4), gurem_petani4),
                _ChartData(kecamatan5, (pglahan_petani5-gurem_petani5), gurem_petani5),
                _ChartData(kecamatan6, (pglahan_petani6-gurem_petani6), gurem_petani6),
                _ChartData(kecamatan7, (pglahan_petani7-gurem_petani7), gurem_petani7),
                _ChartData(kecamatan8, (pglahan_petani8-gurem_petani8), gurem_petani8),
                _ChartData(kecamatan9, (pglahan_petani9-gurem_petani9), gurem_petani9),
                _ChartData(kecamatan10, (pglahan_petani10-gurem_petani10), gurem_petani10),
                _ChartData(kecamatan11, (pglahan_petani11-gurem_petani11), gurem_petani11),
                _ChartData(kecamatan12, (pglahan_petani12-gurem_petani12), gurem_petani12),
                _ChartData(kecamatan13, (pglahan_petani13-gurem_petani13), gurem_petani13),
                _ChartData(kecamatan14, (pglahan_petani14-gurem_petani14), gurem_petani14),
                _ChartData(kecamatan15, (pglahan_petani15-gurem_petani15), gurem_petani15),
                _ChartData(kecamatan16, (pglahan_petani16-gurem_petani16), gurem_petani16),
                _ChartData(kecamatan17, (pglahan_petani17-gurem_petani17), gurem_petani17),
                _ChartData(kecamatan18, (pglahan_petani18-gurem_petani18), gurem_petani18),
                _ChartData(kecamatan19, (pglahan_petani19-gurem_petani19), gurem_petani19),
                _ChartData(kecamatan20, (pglahan_petani20-gurem_petani20), gurem_petani20),
                _ChartData(kecamatan21, (pglahan_petani21-gurem_petani21), gurem_petani21),
                _ChartData(kecamatan22, (pglahan_petani22-gurem_petani22), gurem_petani22),
                _ChartData(kecamatan23, (pglahan_petani23-gurem_petani23), gurem_petani23),
                _ChartData(kecamatan24, (pglahan_petani24-gurem_petani24), gurem_petani24),
                
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight*1,
                width: screenWidth,
                child: SfCartesianChart(
                    //plotAreaBorderWidth: 3,
                    title: ChartTitle(
                        text: 'Jumlah Petani Pengguna Lahan (Gurem dan Bukan Gurem) Menurut Kecamatan Hasil Sensus Pertanian $tahun',
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
                        maximum: 22000,
                        interval: 5000),
                    zoomPanBehavior: ZoomPanBehavior(
                        enableDoubleTapZooming: true,
                        enablePinching: true,
                        // Enables the selection zooming
                        enableSelectionZooming: true),
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
                            textStyle: TextStyle(fontSize: 10,
                            color: Colors.black,)),
                        name: 'Petani Gurem',
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
                              fontSize: 10,
                              color: Colors.black,
                            )),
                        name: 'Bukan Petani Gurem',
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
  _ChartData(this.x, this.y1, this.y);

  final String x;
  final double y1;
  final double y;
  
}
