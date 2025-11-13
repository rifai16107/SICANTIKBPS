// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: camel_case_types, non_constant_identifier_names

class RepositoryNakerKabkotUpah {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-upahburuh';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotUpah.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

class ModelNakerKabkotUpah {
  final int id;
  final String wilayah;
  final String lk_n5;
  final String pr_n5;
  final String lkpr_n5;
  final String tahun;

  ModelNakerKabkotUpah(
      {required this.id,
      required this.wilayah,
      required this.lk_n5,
      required this.pr_n5,
      required this.lkpr_n5,
      required this.tahun});

  factory ModelNakerKabkotUpah.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotUpah(
      id: json['id'],
      wilayah: json['wilayah'],
      lk_n5: json['lk_n5'],
      pr_n5: json['pr_n5'],
      lkpr_n5: json['lkpr_n5'],
      tahun: json['tahun'],
    );
  }
}

class GrafikUpahprkabkot extends StatefulWidget {
  const GrafikUpahprkabkot({Key? key}) : super(key: key);

  @override
  _GrafikUpahprkabkotState createState() => _GrafikUpahprkabkotState();
}

class _GrafikUpahprkabkotState extends State<GrafikUpahprkabkot> {
  RepositoryNakerKabkotUpah repositorynaker = RepositoryNakerKabkotUpah();
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

              double upah1 = double.parse(isinaker[index = 0].pr_n5) / 1000;
              double upah2 = double.parse(isinaker[index = 1].pr_n5) / 1000;
              double upah3 = double.parse(isinaker[index = 2].pr_n5) / 1000;
              double upah4 = double.parse(isinaker[index = 3].pr_n5) / 1000;
              double upah5 = double.parse(isinaker[index = 4].pr_n5) / 1000;
              double upah6 = double.parse(isinaker[index = 5].pr_n5) / 1000;
              double upah7 = double.parse(isinaker[index = 6].pr_n5) / 1000;
              double upah8 = double.parse(isinaker[index = 7].pr_n5) / 1000;
              double upah9 = double.parse(isinaker[index = 8].pr_n5) / 1000;
              double upah10 = double.parse(isinaker[index = 9].pr_n5) / 1000;
              double upah11 = double.parse(isinaker[index = 10].pr_n5) / 1000;
              double upah12 = double.parse(isinaker[index = 11].pr_n5) / 1000;
              double upah13 = double.parse(isinaker[index = 12].pr_n5) / 1000;
              double upah14 = double.parse(isinaker[index = 13].pr_n5) / 1000;
              double upah15 = double.parse(isinaker[index = 14].pr_n5) / 1000;
              double upah16 = double.parse(isinaker[index = 15].pr_n5) / 1000;
              double upah17 = double.parse(isinaker[index = 16].pr_n5) / 1000;
              double upah18 = double.parse(isinaker[index = 17].pr_n5) / 1000;
              double upah19 = double.parse(isinaker[index = 18].pr_n5) / 1000;
              double upah20 = double.parse(isinaker[index = 19].pr_n5) / 1000;
              double upah21 = double.parse(isinaker[index = 20].pr_n5) / 1000;
              double upah22 = double.parse(isinaker[index = 21].pr_n5) / 1000;
              double upah23 = double.parse(isinaker[index = 22].pr_n5) / 1000;
              double upah24 = double.parse(isinaker[index = 23].pr_n5) / 1000;
              double upah25 = double.parse(isinaker[index = 24].pr_n5) / 1000;
              double upah26 = double.parse(isinaker[index = 25].pr_n5) / 1000;
              double upah27 = double.parse(isinaker[index = 26].pr_n5) / 1000;
              double upah28 = double.parse(isinaker[index = 27].pr_n5) / 1000;
              double upah29 = double.parse(isinaker[index = 28].pr_n5) / 1000;
              double upah30 = double.parse(isinaker[index = 29].pr_n5) / 1000;
              double upah31 = double.parse(isinaker[index = 30].pr_n5) / 1000;
              double upah32 = double.parse(isinaker[index = 31].pr_n5) / 1000;
              double upah33 = double.parse(isinaker[index = 32].pr_n5) / 1000;
              double upah34 = double.parse(isinaker[index = 33].pr_n5) / 1000;
              double upah35 = double.parse(isinaker[index = 34].pr_n5) / 1000;
              double upah36 = double.parse(isinaker[index = 35].pr_n5) / 1000;

              String thn5 = isinaker[index = 0].tahun.substring(20, 24);

              toString();
              data = [
                _ChartData(wilayah1, upah1),
                _ChartData(wilayah2, upah2),
                _ChartData(wilayah3, upah3),
                _ChartData(wilayah4, upah4),
                _ChartData(wilayah5, upah5),
                _ChartData(wilayah6, upah6),
                _ChartData(wilayah7, upah7),
                _ChartData(wilayah8, upah8),
                _ChartData(wilayah9, upah9),
                _ChartData(wilayah10, upah10),
                _ChartData(wilayah11, upah11),
                _ChartData(wilayah12, upah12),
                _ChartData(wilayah13, upah13),
                _ChartData(wilayah14, upah14),
                _ChartData(wilayah15, upah15),
                _ChartData(wilayah16, upah16),
                _ChartData(wilayah17, upah17),
                _ChartData(wilayah18, upah18),
                _ChartData(wilayah19, upah19),
                _ChartData(wilayah20, upah20),
                _ChartData(wilayah21, upah21),
                _ChartData(wilayah22, upah22),
                _ChartData(wilayah23, upah23),
                _ChartData(wilayah24, upah24),
                _ChartData(wilayah25, upah25),
                _ChartData(wilayah26, upah26),
                _ChartData(wilayah27, upah27),
                _ChartData(wilayah28, upah28),
                _ChartData(wilayah29, upah29),
                _ChartData(wilayah30, upah30),
                _ChartData(wilayah31, upah31),
                _ChartData(wilayah32, upah32),
                _ChartData(wilayah33, upah33),
                _ChartData(wilayah34, upah34),
                _ChartData(wilayah35, upah35),
                _ChartData(wilayah36, upah36),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.9,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Rata-Rata Upah Buruh/Karyawan/Pegawai Perempuan Menurut Kabupaten/Kota di Jawa Tengah Tahun $thn5',
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
                            text: 'Rata-rata upah (000 Rp)',
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
                        name: 'Rata-rata upah (000 Rupiah)',
                        color: const Color.fromARGB(255, 206, 39, 228),
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
