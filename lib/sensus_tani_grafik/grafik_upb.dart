// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names
class modelSensusTaniUpb {
  final int id;
  final String kecamatan;
  final String upb;
  final String pangan_upb;
  final String horti_upb;
  final String kebun_upb;
  final String ternak_upb;
  final String ikan_upb;
  final String hutan_upb;
  final String jasa_upb;
  final String tahun;

  const modelSensusTaniUpb({
    required this.id,
    required this.kecamatan,
    required this.upb,
    required this.pangan_upb,
    required this.horti_upb,
    required this.kebun_upb,
    required this.ternak_upb,
    required this.ikan_upb,
    required this.hutan_upb,
    required this.jasa_upb,
    required this.tahun,
  });

  factory modelSensusTaniUpb.fromJson(Map<String, dynamic> json) {
    return modelSensusTaniUpb(
      id: json['id'],
      kecamatan: json['kecamatan'],
      upb: json['upb'],
      pangan_upb: json['pangan_upb'],
      horti_upb: json['horti_upb'],
      kebun_upb: json['kebun_upb'],
      ternak_upb: json['ternak_upb'],
      ikan_upb: json['ikan_upb'],
      hutan_upb: json['hutan_upb'],
      jasa_upb: json['jasa_upb'],
      tahun: json['tahun'],
    );
  }
}

class RepositorySensusTaniUpb {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-upb-utl';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));
      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) => modelSensusTaniUpb.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}

class GrafikUpb extends StatefulWidget {
  const GrafikUpb({Key? key}) : super(key: key);

  @override
  _GrafikUpbState createState() => _GrafikUpbState();
}

class _GrafikUpbState extends State<GrafikUpb> {
  RepositorySensusTaniUpb repositoryupb = RepositorySensusTaniUpb();
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
      future: repositoryupb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isisensustani = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double kebun_upb =
                  double.parse(isisensustani[index = 24].kebun_upb);
              double ikan_upb =
                  double.parse(isisensustani[index = 24].ikan_upb);

              String tahun = isisensustani[index = 0].tahun;

              toString();
              data = [
                _ChartData("Pangan", 0),
                _ChartData("Hortikultura", 0),
                _ChartData("Perkebunan", kebun_upb),
                _ChartData("Peternakan", 0),
                _ChartData("Perikanan", ikan_upb),
                _ChartData("Kehutanan", 0),
                _ChartData("Jasa Pertanian", 0),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Jumlah Perusahaan Pertanian Berbadan Hukum (UPB) Menurut Subsektor di Kabupaten Cilacap (unit), $tahun',
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
                          fontSize: 12,
                        ),
                        toggleSeriesVisibility: true,
                        overflowMode: LegendItemOverflowMode.wrap,
                        position: LegendPosition.bottom),
                    primaryYAxis: NumericAxis(
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 10,
                        interval: 2),
                    zoomPanBehavior: ZoomPanBehavior(
                        enableDoubleTapZooming: true,
                        enablePinching: true,
                        // Enables the selection zooming
                        enableSelectionZooming: true),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.ascending,
                        //sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            labelAlignment: ChartDataLabelAlignment.outer,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Jumlah UPB (unit usaha)',
                        color: const Color.fromARGB(255, 12, 224, 58),
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
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
