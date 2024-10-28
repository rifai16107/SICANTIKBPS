// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_idg_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikIdgKabkot extends StatefulWidget {
  const GrafikIdgKabkot({Key? key}) : super(key: key);

  @override
  _GrafikIdgKabkotState createState() => _GrafikIdgKabkotState();
}

class _GrafikIdgKabkotState extends State<GrafikIdgKabkot> {
  RepositoryIdgKabkot repositoryIdgKabkot = RepositoryIdgKabkot();
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
      future: repositoryIdgKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiidgkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun = isiidgkabkot[index = 0].tahun.substring(20, 24);

              String kabkota1 = isiidgkabkot[index = 0].kab_kota;
              String kabkota2 = isiidgkabkot[index = 1].kab_kota;
              String kabkota3 = isiidgkabkot[index = 2].kab_kota;
              String kabkota4 = isiidgkabkot[index = 3].kab_kota;
              String kabkota5 = isiidgkabkot[index = 4].kab_kota;
              String kabkota6 = isiidgkabkot[index = 5].kab_kota;
              String kabkota7 = isiidgkabkot[index = 6].kab_kota;
              String kabkota8 = isiidgkabkot[index = 7].kab_kota;
              String kabkota9 = isiidgkabkot[index = 8].kab_kota;
              String kabkota10 = isiidgkabkot[index = 9].kab_kota;
              String kabkota11 = isiidgkabkot[index = 10].kab_kota;
              String kabkota12 = isiidgkabkot[index = 11].kab_kota;
              String kabkota13 = isiidgkabkot[index = 12].kab_kota;
              String kabkota14 = isiidgkabkot[index = 13].kab_kota;
              String kabkota15 = isiidgkabkot[index = 14].kab_kota;
              String kabkota16 = isiidgkabkot[index = 15].kab_kota;
              String kabkota17 = isiidgkabkot[index = 16].kab_kota;
              String kabkota18 = isiidgkabkot[index = 17].kab_kota;
              String kabkota19 = isiidgkabkot[index = 18].kab_kota;
              String kabkota20 = isiidgkabkot[index = 19].kab_kota;
              String kabkota21 = isiidgkabkot[index = 20].kab_kota;
              String kabkota22 = isiidgkabkot[index = 21].kab_kota;
              String kabkota23 = isiidgkabkot[index = 22].kab_kota;
              String kabkota24 = isiidgkabkot[index = 23].kab_kota;
              String kabkota25 = isiidgkabkot[index = 24].kab_kota;
              String kabkota26 = isiidgkabkot[index = 25].kab_kota;
              String kabkota27 = isiidgkabkot[index = 26].kab_kota;
              String kabkota28 = isiidgkabkot[index = 27].kab_kota;
              String kabkota29 = isiidgkabkot[index = 28].kab_kota;
              String kabkota30 = isiidgkabkot[index = 29].kab_kota;
              String kabkota31 = isiidgkabkot[index = 30].kab_kota;
              String kabkota32 = isiidgkabkot[index = 31].kab_kota;
              String kabkota33 = isiidgkabkot[index = 32].kab_kota;
              String kabkota34 = isiidgkabkot[index = 33].kab_kota;
              String kabkota35 = isiidgkabkot[index = 34].kab_kota;
              String kabkota36 = isiidgkabkot[index = 35].kab_kota;

              double idg_1 = double.parse(isiidgkabkot[index = 0].idg_n5);
              double idg_2 = double.parse(isiidgkabkot[index = 1].idg_n5);
              double idg_3 = double.parse(isiidgkabkot[index = 2].idg_n5);
              double idg_4 = double.parse(isiidgkabkot[index = 3].idg_n5);
              double idg_5 = double.parse(isiidgkabkot[index = 4].idg_n5);
              double idg_6 = double.parse(isiidgkabkot[index = 5].idg_n5);
              double idg_7 = double.parse(isiidgkabkot[index = 6].idg_n5);
              double idg_8 = double.parse(isiidgkabkot[index = 7].idg_n5);
              double idg_9 = double.parse(isiidgkabkot[index = 8].idg_n5);
              double idg_10 = double.parse(isiidgkabkot[index = 9].idg_n5);
              double idg_11 = double.parse(isiidgkabkot[index = 10].idg_n5);
              double idg_12 = double.parse(isiidgkabkot[index = 11].idg_n5);
              double idg_13 = double.parse(isiidgkabkot[index = 12].idg_n5);
              double idg_14 = double.parse(isiidgkabkot[index = 13].idg_n5);
              double idg_15 = double.parse(isiidgkabkot[index = 14].idg_n5);
              double idg_16 = double.parse(isiidgkabkot[index = 15].idg_n5);
              double idg_17 = double.parse(isiidgkabkot[index = 16].idg_n5);
              double idg_18 = double.parse(isiidgkabkot[index = 17].idg_n5);
              double idg_19 = double.parse(isiidgkabkot[index = 18].idg_n5);
              double idg_20 = double.parse(isiidgkabkot[index = 19].idg_n5);
              double idg_21 = double.parse(isiidgkabkot[index = 20].idg_n5);
              double idg_22 = double.parse(isiidgkabkot[index = 21].idg_n5);
              double idg_23 = double.parse(isiidgkabkot[index = 22].idg_n5);
              double idg_24 = double.parse(isiidgkabkot[index = 23].idg_n5);
              double idg_25 = double.parse(isiidgkabkot[index = 24].idg_n5);
              double idg_26 = double.parse(isiidgkabkot[index = 25].idg_n5);
              double idg_27 = double.parse(isiidgkabkot[index = 26].idg_n5);
              double idg_28 = double.parse(isiidgkabkot[index = 27].idg_n5);
              double idg_29 = double.parse(isiidgkabkot[index = 28].idg_n5);
              double idg_30 = double.parse(isiidgkabkot[index = 29].idg_n5);
              double idg_31 = double.parse(isiidgkabkot[index = 30].idg_n5);
              double idg_32 = double.parse(isiidgkabkot[index = 31].idg_n5);
              double idg_33 = double.parse(isiidgkabkot[index = 32].idg_n5);
              double idg_34 = double.parse(isiidgkabkot[index = 33].idg_n5);
              double idg_35 = double.parse(isiidgkabkot[index = 34].idg_n5);
              double idg_36 = double.parse(isiidgkabkot[index = 35].idg_n5);

              toString();
              data = [
                _ChartData(
                    kabkota1, idg_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, idg_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, idg_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, idg_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, idg_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, idg_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, idg_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, idg_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, idg_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, idg_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, idg_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, idg_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, idg_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, idg_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, idg_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, idg_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, idg_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, idg_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, idg_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, idg_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, idg_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, idg_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, idg_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, idg_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, idg_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, idg_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, idg_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, idg_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, idg_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, idg_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, idg_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, idg_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, idg_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, idg_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, idg_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, idg_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            '[IDG] Indeks Pemberdayaan Gender Kabupaten/Kota Di Jawa Tengah Tahun $tahun',
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
                            textStyle: TextStyle(fontSize: 9.5)),
                        name: 'Nilai IDG',
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
