// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_ipg_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikIpgKabkot extends StatefulWidget {
  const GrafikIpgKabkot({Key? key}) : super(key: key);

  @override
  _GrafikIpgKabkotState createState() => _GrafikIpgKabkotState();
}

class _GrafikIpgKabkotState extends State<GrafikIpgKabkot> {
  RepositoryIpgKabkot repositoryIpgKabkot = RepositoryIpgKabkot();
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
      future: repositoryIpgKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipgkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun = isiipgkabkot[index = 0].tahun.substring(20, 24);

              String kabkota1 = isiipgkabkot[index = 0].kab_kota;
              String kabkota2 = isiipgkabkot[index = 1].kab_kota;
              String kabkota3 = isiipgkabkot[index = 2].kab_kota;
              String kabkota4 = isiipgkabkot[index = 3].kab_kota;
              String kabkota5 = isiipgkabkot[index = 4].kab_kota;
              String kabkota6 = isiipgkabkot[index = 5].kab_kota;
              String kabkota7 = isiipgkabkot[index = 6].kab_kota;
              String kabkota8 = isiipgkabkot[index = 7].kab_kota;
              String kabkota9 = isiipgkabkot[index = 8].kab_kota;
              String kabkota10 = isiipgkabkot[index = 9].kab_kota;
              String kabkota11 = isiipgkabkot[index = 10].kab_kota;
              String kabkota12 = isiipgkabkot[index = 11].kab_kota;
              String kabkota13 = isiipgkabkot[index = 12].kab_kota;
              String kabkota14 = isiipgkabkot[index = 13].kab_kota;
              String kabkota15 = isiipgkabkot[index = 14].kab_kota;
              String kabkota16 = isiipgkabkot[index = 15].kab_kota;
              String kabkota17 = isiipgkabkot[index = 16].kab_kota;
              String kabkota18 = isiipgkabkot[index = 17].kab_kota;
              String kabkota19 = isiipgkabkot[index = 18].kab_kota;
              String kabkota20 = isiipgkabkot[index = 19].kab_kota;
              String kabkota21 = isiipgkabkot[index = 20].kab_kota;
              String kabkota22 = isiipgkabkot[index = 21].kab_kota;
              String kabkota23 = isiipgkabkot[index = 22].kab_kota;
              String kabkota24 = isiipgkabkot[index = 23].kab_kota;
              String kabkota25 = isiipgkabkot[index = 24].kab_kota;
              String kabkota26 = isiipgkabkot[index = 25].kab_kota;
              String kabkota27 = isiipgkabkot[index = 26].kab_kota;
              String kabkota28 = isiipgkabkot[index = 27].kab_kota;
              String kabkota29 = isiipgkabkot[index = 28].kab_kota;
              String kabkota30 = isiipgkabkot[index = 29].kab_kota;
              String kabkota31 = isiipgkabkot[index = 30].kab_kota;
              String kabkota32 = isiipgkabkot[index = 31].kab_kota;
              String kabkota33 = isiipgkabkot[index = 32].kab_kota;
              String kabkota34 = isiipgkabkot[index = 33].kab_kota;
              String kabkota35 = isiipgkabkot[index = 34].kab_kota;
              String kabkota36 = isiipgkabkot[index = 35].kab_kota;

              double ipg_1 = double.parse(isiipgkabkot[index = 0].ipg_n5);
              double ipg_2 = double.parse(isiipgkabkot[index = 1].ipg_n5);
              double ipg_3 = double.parse(isiipgkabkot[index = 2].ipg_n5);
              double ipg_4 = double.parse(isiipgkabkot[index = 3].ipg_n5);
              double ipg_5 = double.parse(isiipgkabkot[index = 4].ipg_n5);
              double ipg_6 = double.parse(isiipgkabkot[index = 5].ipg_n5);
              double ipg_7 = double.parse(isiipgkabkot[index = 6].ipg_n5);
              double ipg_8 = double.parse(isiipgkabkot[index = 7].ipg_n5);
              double ipg_9 = double.parse(isiipgkabkot[index = 8].ipg_n5);
              double ipg_10 = double.parse(isiipgkabkot[index = 9].ipg_n5);
              double ipg_11 = double.parse(isiipgkabkot[index = 10].ipg_n5);
              double ipg_12 = double.parse(isiipgkabkot[index = 11].ipg_n5);
              double ipg_13 = double.parse(isiipgkabkot[index = 12].ipg_n5);
              double ipg_14 = double.parse(isiipgkabkot[index = 13].ipg_n5);
              double ipg_15 = double.parse(isiipgkabkot[index = 14].ipg_n5);
              double ipg_16 = double.parse(isiipgkabkot[index = 15].ipg_n5);
              double ipg_17 = double.parse(isiipgkabkot[index = 16].ipg_n5);
              double ipg_18 = double.parse(isiipgkabkot[index = 17].ipg_n5);
              double ipg_19 = double.parse(isiipgkabkot[index = 18].ipg_n5);
              double ipg_20 = double.parse(isiipgkabkot[index = 19].ipg_n5);
              double ipg_21 = double.parse(isiipgkabkot[index = 20].ipg_n5);
              double ipg_22 = double.parse(isiipgkabkot[index = 21].ipg_n5);
              double ipg_23 = double.parse(isiipgkabkot[index = 22].ipg_n5);
              double ipg_24 = double.parse(isiipgkabkot[index = 23].ipg_n5);
              double ipg_25 = double.parse(isiipgkabkot[index = 24].ipg_n5);
              double ipg_26 = double.parse(isiipgkabkot[index = 25].ipg_n5);
              double ipg_27 = double.parse(isiipgkabkot[index = 26].ipg_n5);
              double ipg_28 = double.parse(isiipgkabkot[index = 27].ipg_n5);
              double ipg_29 = double.parse(isiipgkabkot[index = 28].ipg_n5);
              double ipg_30 = double.parse(isiipgkabkot[index = 29].ipg_n5);
              double ipg_31 = double.parse(isiipgkabkot[index = 30].ipg_n5);
              double ipg_32 = double.parse(isiipgkabkot[index = 31].ipg_n5);
              double ipg_33 = double.parse(isiipgkabkot[index = 32].ipg_n5);
              double ipg_34 = double.parse(isiipgkabkot[index = 33].ipg_n5);
              double ipg_35 = double.parse(isiipgkabkot[index = 34].ipg_n5);
              double ipg_36 = double.parse(isiipgkabkot[index = 35].ipg_n5);

              toString();
              data = [
                _ChartData(
                    kabkota1, ipg_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, ipg_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, ipg_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, ipg_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, ipg_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, ipg_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, ipg_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, ipg_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, ipg_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, ipg_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, ipg_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, ipg_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, ipg_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, ipg_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, ipg_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, ipg_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, ipg_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, ipg_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, ipg_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, ipg_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, ipg_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, ipg_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, ipg_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, ipg_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, ipg_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, ipg_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, ipg_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, ipg_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, ipg_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, ipg_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, ipg_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, ipg_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, ipg_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, ipg_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, ipg_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, ipg_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            '[IPG] Indeks Pembangunan Gender Kabupaten/Kota Di Jawa Tengah Tahun $tahun',
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
                        name: 'Nilai IPG',
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
