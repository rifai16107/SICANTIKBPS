// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_ipm_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GrafikIpmKabkot extends StatefulWidget {
  const GrafikIpmKabkot({Key? key}) : super(key: key);

  @override
  _GrafikIpmKabkotState createState() => _GrafikIpmKabkotState();
}

class _GrafikIpmKabkotState extends State<GrafikIpmKabkot> {
  RepositoryIpmKabkot repositoryIpmKabkot = RepositoryIpmKabkot();
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
      future: repositoryIpmKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipmkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isiipmkabkot[index = 0].tahun;

              String kabkota1 = isiipmkabkot[index = 0].kab_kota;
              String kabkota2 = isiipmkabkot[index = 1].kab_kota;
              String kabkota3 = isiipmkabkot[index = 2].kab_kota;
              String kabkota4 = isiipmkabkot[index = 3].kab_kota;
              String kabkota5 = isiipmkabkot[index = 4].kab_kota;
              String kabkota6 = isiipmkabkot[index = 5].kab_kota;
              String kabkota7 = isiipmkabkot[index = 6].kab_kota;
              String kabkota8 = isiipmkabkot[index = 7].kab_kota;
              String kabkota9 = isiipmkabkot[index = 8].kab_kota;
              String kabkota10 = isiipmkabkot[index = 9].kab_kota;
              String kabkota11 = isiipmkabkot[index = 10].kab_kota;
              String kabkota12 = isiipmkabkot[index = 11].kab_kota;
              String kabkota13 = isiipmkabkot[index = 12].kab_kota;
              String kabkota14 = isiipmkabkot[index = 13].kab_kota;
              String kabkota15 = isiipmkabkot[index = 14].kab_kota;
              String kabkota16 = isiipmkabkot[index = 15].kab_kota;
              String kabkota17 = isiipmkabkot[index = 16].kab_kota;
              String kabkota18 = isiipmkabkot[index = 17].kab_kota;
              String kabkota19 = isiipmkabkot[index = 18].kab_kota;
              String kabkota20 = isiipmkabkot[index = 19].kab_kota;
              String kabkota21 = isiipmkabkot[index = 20].kab_kota;
              String kabkota22 = isiipmkabkot[index = 21].kab_kota;
              String kabkota23 = isiipmkabkot[index = 22].kab_kota;
              String kabkota24 = isiipmkabkot[index = 23].kab_kota;
              String kabkota25 = isiipmkabkot[index = 24].kab_kota;
              String kabkota26 = isiipmkabkot[index = 25].kab_kota;
              String kabkota27 = isiipmkabkot[index = 26].kab_kota;
              String kabkota28 = isiipmkabkot[index = 27].kab_kota;
              String kabkota29 = isiipmkabkot[index = 28].kab_kota;
              String kabkota30 = isiipmkabkot[index = 29].kab_kota;
              String kabkota31 = isiipmkabkot[index = 30].kab_kota;
              String kabkota32 = isiipmkabkot[index = 31].kab_kota;
              String kabkota33 = isiipmkabkot[index = 32].kab_kota;
              String kabkota34 = isiipmkabkot[index = 33].kab_kota;
              String kabkota35 = isiipmkabkot[index = 34].kab_kota;
              String kabkota36 = isiipmkabkot[index = 35].kab_kota;

              double ipm_1 = double.parse(isiipmkabkot[index = 0].ipm_lfsp2020);
              double ipm_2 = double.parse(isiipmkabkot[index = 1].ipm_lfsp2020);
              double ipm_3 = double.parse(isiipmkabkot[index = 2].ipm_lfsp2020);
              double ipm_4 = double.parse(isiipmkabkot[index = 3].ipm_lfsp2020);
              double ipm_5 = double.parse(isiipmkabkot[index = 4].ipm_lfsp2020);
              double ipm_6 = double.parse(isiipmkabkot[index = 5].ipm_lfsp2020);
              double ipm_7 = double.parse(isiipmkabkot[index = 6].ipm_lfsp2020);
              double ipm_8 = double.parse(isiipmkabkot[index = 7].ipm_lfsp2020);
              double ipm_9 = double.parse(isiipmkabkot[index = 8].ipm_lfsp2020);
              double ipm_10 =
                  double.parse(isiipmkabkot[index = 9].ipm_lfsp2020);
              double ipm_11 =
                  double.parse(isiipmkabkot[index = 10].ipm_lfsp2020);
              double ipm_12 =
                  double.parse(isiipmkabkot[index = 11].ipm_lfsp2020);
              double ipm_13 =
                  double.parse(isiipmkabkot[index = 12].ipm_lfsp2020);
              double ipm_14 =
                  double.parse(isiipmkabkot[index = 13].ipm_lfsp2020);
              double ipm_15 =
                  double.parse(isiipmkabkot[index = 14].ipm_lfsp2020);
              double ipm_16 =
                  double.parse(isiipmkabkot[index = 15].ipm_lfsp2020);
              double ipm_17 =
                  double.parse(isiipmkabkot[index = 16].ipm_lfsp2020);
              double ipm_18 =
                  double.parse(isiipmkabkot[index = 17].ipm_lfsp2020);
              double ipm_19 =
                  double.parse(isiipmkabkot[index = 18].ipm_lfsp2020);
              double ipm_20 =
                  double.parse(isiipmkabkot[index = 19].ipm_lfsp2020);
              double ipm_21 =
                  double.parse(isiipmkabkot[index = 20].ipm_lfsp2020);
              double ipm_22 =
                  double.parse(isiipmkabkot[index = 21].ipm_lfsp2020);
              double ipm_23 =
                  double.parse(isiipmkabkot[index = 22].ipm_lfsp2020);
              double ipm_24 =
                  double.parse(isiipmkabkot[index = 23].ipm_lfsp2020);
              double ipm_25 =
                  double.parse(isiipmkabkot[index = 24].ipm_lfsp2020);
              double ipm_26 =
                  double.parse(isiipmkabkot[index = 25].ipm_lfsp2020);
              double ipm_27 =
                  double.parse(isiipmkabkot[index = 26].ipm_lfsp2020);
              double ipm_28 =
                  double.parse(isiipmkabkot[index = 27].ipm_lfsp2020);
              double ipm_29 =
                  double.parse(isiipmkabkot[index = 28].ipm_lfsp2020);
              double ipm_30 =
                  double.parse(isiipmkabkot[index = 29].ipm_lfsp2020);
              double ipm_31 =
                  double.parse(isiipmkabkot[index = 30].ipm_lfsp2020);
              double ipm_32 =
                  double.parse(isiipmkabkot[index = 31].ipm_lfsp2020);
              double ipm_33 =
                  double.parse(isiipmkabkot[index = 32].ipm_lfsp2020);
              double ipm_34 =
                  double.parse(isiipmkabkot[index = 33].ipm_lfsp2020);
              double ipm_35 =
                  double.parse(isiipmkabkot[index = 34].ipm_lfsp2020);
              double ipm_36 =
                  double.parse(isiipmkabkot[index = 35].ipm_lfsp2020);

              toString();
              data = [
                _ChartData(
                    kabkota1, ipm_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, ipm_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, ipm_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, ipm_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, ipm_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, ipm_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, ipm_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, ipm_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, ipm_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, ipm_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, ipm_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, ipm_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, ipm_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, ipm_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, ipm_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, ipm_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, ipm_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, ipm_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, ipm_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, ipm_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, ipm_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, ipm_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, ipm_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, ipm_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, ipm_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, ipm_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, ipm_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, ipm_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, ipm_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, ipm_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, ipm_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, ipm_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, ipm_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, ipm_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, ipm_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, ipm_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text: 'IPM Kabupaten/Kota Di Jawa Tengah Tahun $th1',
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
                          fontSize: 10,
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
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 100,
                        interval: 20),
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
                            textStyle: TextStyle(fontSize: 9)),
                        name: 'Nilai IPM',
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
          strokeWidth: 1,
        ));
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
