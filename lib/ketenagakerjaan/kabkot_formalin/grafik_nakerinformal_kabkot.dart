// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryNakerKabkotFormalin {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-formalinformal';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotFormalin.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

class ModelNakerKabkotFormalin {
  final int id;
  final String wilayah;
  final String formal_n5;
  final String informal_n5;
  final String tahun;

  ModelNakerKabkotFormalin(
      {required this.id,
      required this.wilayah,
      required this.formal_n5,
      required this.informal_n5,
      required this.tahun});

  factory ModelNakerKabkotFormalin.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotFormalin(
      id: json['id'],
      wilayah: json['wilayah'],
      formal_n5: json['formal_n5'],
      informal_n5: json['informal_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikNakerinformalkabkot extends StatefulWidget {
  const GrafikNakerinformalkabkot({Key? key}) : super(key: key);

  @override
  _GrafikNakerinformalkabkotState createState() =>
      _GrafikNakerinformalkabkotState();
}

class _GrafikNakerinformalkabkotState extends State<GrafikNakerinformalkabkot> {
  RepositoryNakerKabkotFormalin repositorynaker =
      RepositoryNakerKabkotFormalin();
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
      future: repositorynaker.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isinaker = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String wilayah1 = isinaker[index = 0].wilayah;
              String wilayah2 = isinaker[index = 1].wilayah;
              String wilayah3 = isinaker[index = 2].wilayah;
              String wilayah4 = isinaker[index = 3].wilayah;
              String wilayah5 = isinaker[index = 4].wilayah;
              String wilayah6 = isinaker[index = 5].wilayah;
              String wilayah7 = isinaker[index = 6].wilayah;
              String wilayah8 = isinaker[index = 7].wilayah;
              String wilayah9 = isinaker[index = 8].wilayah;
              String wilayah10 = isinaker[index = 9].wilayah;
              String wilayah11 = isinaker[index = 10].wilayah;
              String wilayah12 = isinaker[index = 11].wilayah;
              String wilayah13 = isinaker[index = 12].wilayah;
              String wilayah14 = isinaker[index = 13].wilayah;
              String wilayah15 = isinaker[index = 14].wilayah;
              String wilayah16 = isinaker[index = 15].wilayah;
              String wilayah17 = isinaker[index = 16].wilayah;
              String wilayah18 = isinaker[index = 17].wilayah;
              String wilayah19 = isinaker[index = 18].wilayah;
              String wilayah20 = isinaker[index = 19].wilayah;
              String wilayah21 = isinaker[index = 20].wilayah;
              String wilayah22 = isinaker[index = 21].wilayah;
              String wilayah23 = isinaker[index = 22].wilayah;
              String wilayah24 = isinaker[index = 23].wilayah;
              String wilayah25 = isinaker[index = 24].wilayah;
              String wilayah26 = isinaker[index = 25].wilayah;
              String wilayah27 = isinaker[index = 26].wilayah;
              String wilayah28 = isinaker[index = 27].wilayah;
              String wilayah29 = isinaker[index = 28].wilayah;
              String wilayah30 = isinaker[index = 29].wilayah;
              String wilayah31 = isinaker[index = 30].wilayah;
              String wilayah32 = isinaker[index = 31].wilayah;
              String wilayah33 = isinaker[index = 32].wilayah;
              String wilayah34 = isinaker[index = 33].wilayah;
              String wilayah35 = isinaker[index = 34].wilayah;
              String wilayah36 = isinaker[index = 35].wilayah;

              double informal1 = double.parse(isinaker[index = 0].informal_n5);
              double informal2 = double.parse(isinaker[index = 1].informal_n5);
              double informal3 = double.parse(isinaker[index = 2].informal_n5);
              double informal4 = double.parse(isinaker[index = 3].informal_n5);
              double informal5 = double.parse(isinaker[index = 4].informal_n5);
              double informal6 = double.parse(isinaker[index = 5].informal_n5);
              double informal7 = double.parse(isinaker[index = 6].informal_n5);
              double informal8 = double.parse(isinaker[index = 7].informal_n5);
              double informal9 = double.parse(isinaker[index = 8].informal_n5);
              double informal10 = double.parse(isinaker[index = 9].informal_n5);
              double informal11 =
                  double.parse(isinaker[index = 10].informal_n5);
              double informal12 =
                  double.parse(isinaker[index = 11].informal_n5);
              double informal13 =
                  double.parse(isinaker[index = 12].informal_n5);
              double informal14 =
                  double.parse(isinaker[index = 13].informal_n5);
              double informal15 =
                  double.parse(isinaker[index = 14].informal_n5);
              double informal16 =
                  double.parse(isinaker[index = 15].informal_n5);
              double informal17 =
                  double.parse(isinaker[index = 16].informal_n5);
              double informal18 =
                  double.parse(isinaker[index = 17].informal_n5);
              double informal19 =
                  double.parse(isinaker[index = 18].informal_n5);
              double informal20 =
                  double.parse(isinaker[index = 19].informal_n5);
              double informal21 =
                  double.parse(isinaker[index = 20].informal_n5);
              double informal22 =
                  double.parse(isinaker[index = 21].informal_n5);
              double informal23 =
                  double.parse(isinaker[index = 22].informal_n5);
              double informal24 =
                  double.parse(isinaker[index = 23].informal_n5);
              double informal25 =
                  double.parse(isinaker[index = 24].informal_n5);
              double informal26 =
                  double.parse(isinaker[index = 25].informal_n5);
              double informal27 =
                  double.parse(isinaker[index = 26].informal_n5);
              double informal28 =
                  double.parse(isinaker[index = 27].informal_n5);
              double informal29 =
                  double.parse(isinaker[index = 28].informal_n5);
              double informal30 =
                  double.parse(isinaker[index = 29].informal_n5);
              double informal31 =
                  double.parse(isinaker[index = 30].informal_n5);
              double informal32 =
                  double.parse(isinaker[index = 31].informal_n5);
              double informal33 =
                  double.parse(isinaker[index = 32].informal_n5);
              double informal34 =
                  double.parse(isinaker[index = 33].informal_n5);
              double informal35 =
                  double.parse(isinaker[index = 34].informal_n5);
              double informal36 =
                  double.parse(isinaker[index = 35].informal_n5);

              String thn5 = isinaker[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(wilayah1, informal1),
                _ChartData(wilayah2, informal2),
                _ChartData(wilayah3, informal3),
                _ChartData(wilayah4, informal4),
                _ChartData(wilayah5, informal5),
                _ChartData(wilayah6, informal6),
                _ChartData(wilayah7, informal7),
                _ChartData(wilayah8, informal8),
                _ChartData(wilayah9, informal9),
                _ChartData(wilayah10, informal10),
                _ChartData(wilayah11, informal11),
                _ChartData(wilayah12, informal12),
                _ChartData(wilayah13, informal13),
                _ChartData(wilayah14, informal14),
                _ChartData(wilayah15, informal15),
                _ChartData(wilayah16, informal16),
                _ChartData(wilayah17, informal17),
                _ChartData(wilayah18, informal18),
                _ChartData(wilayah19, informal19),
                _ChartData(wilayah20, informal20),
                _ChartData(wilayah21, informal21),
                _ChartData(wilayah22, informal22),
                _ChartData(wilayah23, informal23),
                _ChartData(wilayah24, informal24),
                _ChartData(wilayah25, informal25),
                _ChartData(wilayah26, informal26),
                _ChartData(wilayah27, informal27),
                _ChartData(wilayah28, informal28),
                _ChartData(wilayah29, informal29),
                _ChartData(wilayah30, informal30),
                _ChartData(wilayah31, informal31),
                _ChartData(wilayah32, informal32),
                _ChartData(wilayah33, informal33),
                _ChartData(wilayah34, informal34),
                _ChartData(wilayah35, informal35),
                _ChartData(wilayah36, informal36),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Rata-Rata Upah Bersih Sebulan Pekerja Informal Kabupaten/Kota di Jawa Tengah Tahun $thn5',
                        // Aligns the chart title to left
                        alignment: ChartAlignment.center,
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 10, 10, 10),
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
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
                        position: LegendPosition.top),
                    primaryYAxis: NumericAxis(
                        title: AxisTitle(
                            text: 'Upah Bersih (000 Rp)',
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            )),
                        axisLabelFormatter: (AxisLabelRenderDetails args) {
                          if (args.value < 0) {
                            return ChartAxisLabel(
                                '${args.text}K', args.textStyle);
                          }
                          return ChartAxisLabel(
                              '${args.text}K', args.textStyle);
                          //return ChartAxisLabel(args.text, args.textStyle);
                        },
                        //numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        numberFormat: NumberFormat("###,###.##", "vi_VN"),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 5500,
                        interval: 1000),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,

                        // Sorting based on the specified field
                        sortingOrder: SortingOrder.ascending,
                        sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Upah Bersih (000 Rupiah)',
                        color: const Color.fromRGBO(9, 0, 136, 1),
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
