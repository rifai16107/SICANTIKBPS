// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_pdrb_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class GrafikPdrbadhkKabkot extends StatefulWidget {
  const GrafikPdrbadhkKabkot({Key? key}) : super(key: key);

  @override
  _GrafikPdrbadhkKabkotState createState() => _GrafikPdrbadhkKabkotState();
}

class _GrafikPdrbadhkKabkotState extends State<GrafikPdrbadhkKabkot> {
  RepositoryPdrbKabkot repositorypdrb = RepositoryPdrbKabkot();
  int key = 0;
  late List<_ChartData> data;
  late TooltipBehavior tooltip;

  double roundNumber(double value, int places) {
    num val = pow(10.0, places);
    return ((value * val).round().toDouble() / val);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return FutureBuilder(
      future: repositorypdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrbkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isipdrbkabkot[index = 0].tahun.substring(20, 24);

              String kabkota1 = isipdrbkabkot[index = 0].wilayah;
              String kabkota2 = isipdrbkabkot[index = 1].wilayah;
              String kabkota3 = isipdrbkabkot[index = 2].wilayah;
              String kabkota4 = isipdrbkabkot[index = 3].wilayah;
              String kabkota5 = isipdrbkabkot[index = 4].wilayah;
              String kabkota6 = isipdrbkabkot[index = 5].wilayah;
              String kabkota7 = isipdrbkabkot[index = 6].wilayah;
              String kabkota8 = isipdrbkabkot[index = 7].wilayah;
              String kabkota9 = isipdrbkabkot[index = 8].wilayah;
              String kabkota10 = isipdrbkabkot[index = 9].wilayah;
              String kabkota11 = isipdrbkabkot[index = 10].wilayah;
              String kabkota12 = isipdrbkabkot[index = 11].wilayah;
              String kabkota13 = isipdrbkabkot[index = 12].wilayah;
              String kabkota14 = isipdrbkabkot[index = 13].wilayah;
              String kabkota15 = isipdrbkabkot[index = 14].wilayah;
              String kabkota16 = isipdrbkabkot[index = 15].wilayah;
              String kabkota17 = isipdrbkabkot[index = 16].wilayah;
              String kabkota18 = isipdrbkabkot[index = 17].wilayah;
              String kabkota19 = isipdrbkabkot[index = 18].wilayah;
              String kabkota20 = isipdrbkabkot[index = 19].wilayah;
              String kabkota21 = isipdrbkabkot[index = 20].wilayah;
              String kabkota22 = isipdrbkabkot[index = 21].wilayah;
              String kabkota23 = isipdrbkabkot[index = 22].wilayah;
              String kabkota24 = isipdrbkabkot[index = 23].wilayah;
              String kabkota25 = isipdrbkabkot[index = 24].wilayah;
              String kabkota26 = isipdrbkabkot[index = 25].wilayah;
              String kabkota27 = isipdrbkabkot[index = 26].wilayah;
              String kabkota28 = isipdrbkabkot[index = 27].wilayah;
              String kabkota29 = isipdrbkabkot[index = 28].wilayah;
              String kabkota30 = isipdrbkabkot[index = 29].wilayah;
              String kabkota31 = isipdrbkabkot[index = 30].wilayah;
              String kabkota32 = isipdrbkabkot[index = 31].wilayah;
              String kabkota33 = isipdrbkabkot[index = 32].wilayah;
              String kabkota34 = isipdrbkabkot[index = 33].wilayah;
              String kabkota35 = isipdrbkabkot[index = 34].wilayah;

              double pdrb_1 = roundNumber(
                (double.parse(isipdrbkabkot[index = 0].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_2 = roundNumber(
                (double.parse(isipdrbkabkot[index = 1].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_3 = roundNumber(
                (double.parse(isipdrbkabkot[index = 2].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_4 = roundNumber(
                (double.parse(isipdrbkabkot[index = 3].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_5 = roundNumber(
                (double.parse(isipdrbkabkot[index = 4].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_6 = roundNumber(
                (double.parse(isipdrbkabkot[index = 5].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_7 = roundNumber(
                (double.parse(isipdrbkabkot[index = 6].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_8 = roundNumber(
                (double.parse(isipdrbkabkot[index = 7].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_9 = roundNumber(
                (double.parse(isipdrbkabkot[index = 8].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_10 = roundNumber(
                (double.parse(isipdrbkabkot[index = 9].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_11 = roundNumber(
                (double.parse(isipdrbkabkot[index = 10].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_12 = roundNumber(
                (double.parse(isipdrbkabkot[index = 11].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_13 = roundNumber(
                (double.parse(isipdrbkabkot[index = 12].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_14 = roundNumber(
                (double.parse(isipdrbkabkot[index = 13].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_15 = roundNumber(
                (double.parse(isipdrbkabkot[index = 14].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_16 = roundNumber(
                (double.parse(isipdrbkabkot[index = 15].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_17 = roundNumber(
                (double.parse(isipdrbkabkot[index = 16].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_18 = roundNumber(
                (double.parse(isipdrbkabkot[index = 17].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_19 = roundNumber(
                (double.parse(isipdrbkabkot[index = 18].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_20 = roundNumber(
                (double.parse(isipdrbkabkot[index = 19].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_21 = roundNumber(
                (double.parse(isipdrbkabkot[index = 20].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_22 = roundNumber(
                (double.parse(isipdrbkabkot[index = 21].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_23 = roundNumber(
                (double.parse(isipdrbkabkot[index = 22].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_24 = roundNumber(
                (double.parse(isipdrbkabkot[index = 23].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_25 = roundNumber(
                (double.parse(isipdrbkabkot[index = 24].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_26 = roundNumber(
                (double.parse(isipdrbkabkot[index = 25].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_27 = roundNumber(
                (double.parse(isipdrbkabkot[index = 26].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_28 = roundNumber(
                (double.parse(isipdrbkabkot[index = 27].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_29 = roundNumber(
                (double.parse(isipdrbkabkot[index = 28].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_30 = roundNumber(
                (double.parse(isipdrbkabkot[index = 29].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_31 = roundNumber(
                (double.parse(isipdrbkabkot[index = 30].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_32 = roundNumber(
                (double.parse(isipdrbkabkot[index = 31].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_33 = roundNumber(
                (double.parse(isipdrbkabkot[index = 32].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_34 = roundNumber(
                (double.parse(isipdrbkabkot[index = 33].pdrb_adhk5) / 1),
                2,
              );
              double pdrb_35 = roundNumber(
                (double.parse(isipdrbkabkot[index = 34].pdrb_adhk5) / 1),
                2,
              );

              toString();
              data = [
                _ChartData(
                  kabkota1,
                  pdrb_1,
                  const Color.fromARGB(255, 207, 154, 38),
                ),
                _ChartData(
                  kabkota2,
                  pdrb_2,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota3,
                  pdrb_3,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota4,
                  pdrb_4,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota5,
                  pdrb_5,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota6,
                  pdrb_6,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota7,
                  pdrb_7,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota8,
                  pdrb_8,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota9,
                  pdrb_9,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota10,
                  pdrb_10,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota11,
                  pdrb_11,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota12,
                  pdrb_12,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota13,
                  pdrb_13,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota14,
                  pdrb_14,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota15,
                  pdrb_15,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota16,
                  pdrb_16,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota17,
                  pdrb_17,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota18,
                  pdrb_18,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota19,
                  pdrb_19,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota20,
                  pdrb_20,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota21,
                  pdrb_21,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota22,
                  pdrb_22,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota23,
                  pdrb_23,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota24,
                  pdrb_24,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota25,
                  pdrb_25,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota26,
                  pdrb_26,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota27,
                  pdrb_27,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota28,
                  pdrb_28,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota29,
                  pdrb_29,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota30,
                  pdrb_30,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota31,
                  pdrb_31,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota32,
                  pdrb_32,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota33,
                  pdrb_33,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota34,
                  pdrb_34,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
                _ChartData(
                  kabkota35,
                  pdrb_35,
                  const Color.fromRGBO(9, 0, 136, 1),
                ),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                  //plotAreaBorderWidth: 0,
                  title: ChartTitle(
                    text:
                        'PDRB ADHK (Tahun 2010=100) Kabupaten/Kota\n'
                        'Di Jawa Tengah Tahun $th1 (Milyar Rupiah)',
                    // Aligns the chart title to left
                    alignment: ChartAlignment.center,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                  primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontFamily: 'Roboto',
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  legend: Legend(
                    // Visibility of legend
                    isVisible: true,
                    textStyle: const TextStyle(fontSize: 11),
                    toggleSeriesVisibility: true,
                    position: LegendPosition.top,
                  ),
                  primaryYAxis: NumericAxis(
                    title: AxisTitle(
                      text: '(Milyar Rupiah)',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                    numberFormat: NumberFormat.decimalPattern('vi_VN'),
                    majorGridLines: const MajorGridLines(width: 1),
                    minimum: 0,
                    maximum: 220000,
                    interval: 100000,
                  ),
                  tooltipBehavior: tooltip,
                  series: <CartesianSeries>[
                    BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      pointColorMapper: (_ChartData data, _) => data.color,
                      // Sorting based on the specified field
                      sortingOrder: SortingOrder.ascending,
                      sortFieldValueMapper: (_ChartData data, _) => data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 10),
                      ),
                      name: '(Nilai PDRB, Milyar Rp)',
                      color: const Color.fromRGBO(9, 0, 136, 1),
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Database Error");
        }
        return const Center(child: CircularProgressIndicator(strokeWidth: 1));
      },
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);

  final String x;
  final double? y;
  final Color color;
}
