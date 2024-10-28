// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_ipm_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GrafikRlsKabkot extends StatefulWidget {
  const GrafikRlsKabkot({Key? key}) : super(key: key);

  @override
  _GrafikRlsKabkotState createState() => _GrafikRlsKabkotState();
}

class _GrafikRlsKabkotState extends State<GrafikRlsKabkot> {
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

              double rls_1 = double.parse(isiipmkabkot[index = 0].rls);
              double rls_2 = double.parse(isiipmkabkot[index = 1].rls);
              double rls_3 = double.parse(isiipmkabkot[index = 2].rls);
              double rls_4 = double.parse(isiipmkabkot[index = 3].rls);
              double rls_5 = double.parse(isiipmkabkot[index = 4].rls);
              double rls_6 = double.parse(isiipmkabkot[index = 5].rls);
              double rls_7 = double.parse(isiipmkabkot[index = 6].rls);
              double rls_8 = double.parse(isiipmkabkot[index = 7].rls);
              double rls_9 = double.parse(isiipmkabkot[index = 8].rls);
              double rls_10 = double.parse(isiipmkabkot[index = 9].rls);
              double rls_11 = double.parse(isiipmkabkot[index = 10].rls);
              double rls_12 = double.parse(isiipmkabkot[index = 11].rls);
              double rls_13 = double.parse(isiipmkabkot[index = 12].rls);
              double rls_14 = double.parse(isiipmkabkot[index = 13].rls);
              double rls_15 = double.parse(isiipmkabkot[index = 14].rls);
              double rls_16 = double.parse(isiipmkabkot[index = 15].rls);
              double rls_17 = double.parse(isiipmkabkot[index = 16].rls);
              double rls_18 = double.parse(isiipmkabkot[index = 17].rls);
              double rls_19 = double.parse(isiipmkabkot[index = 18].rls);
              double rls_20 = double.parse(isiipmkabkot[index = 19].rls);
              double rls_21 = double.parse(isiipmkabkot[index = 20].rls);
              double rls_22 = double.parse(isiipmkabkot[index = 21].rls);
              double rls_23 = double.parse(isiipmkabkot[index = 22].rls);
              double rls_24 = double.parse(isiipmkabkot[index = 23].rls);
              double rls_25 = double.parse(isiipmkabkot[index = 24].rls);
              double rls_26 = double.parse(isiipmkabkot[index = 25].rls);
              double rls_27 = double.parse(isiipmkabkot[index = 26].rls);
              double rls_28 = double.parse(isiipmkabkot[index = 27].rls);
              double rls_29 = double.parse(isiipmkabkot[index = 28].rls);
              double rls_30 = double.parse(isiipmkabkot[index = 29].rls);
              double rls_31 = double.parse(isiipmkabkot[index = 30].rls);
              double rls_32 = double.parse(isiipmkabkot[index = 31].rls);
              double rls_33 = double.parse(isiipmkabkot[index = 32].rls);
              double rls_34 = double.parse(isiipmkabkot[index = 33].rls);
              double rls_35 = double.parse(isiipmkabkot[index = 34].rls);
              double rls_36 = double.parse(isiipmkabkot[index = 35].rls);

              toString();
              data = [
                _ChartData(
                    kabkota1, rls_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, rls_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, rls_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, rls_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, rls_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, rls_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, rls_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, rls_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, rls_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, rls_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, rls_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, rls_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, rls_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, rls_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, rls_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, rls_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, rls_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, rls_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, rls_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, rls_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, rls_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, rls_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, rls_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, rls_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, rls_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, rls_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, rls_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, rls_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, rls_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, rls_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, rls_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, rls_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, rls_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, rls_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, rls_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, rls_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text: 'RLS Kabupaten/Kota Di Jawa Tengah Tahun $th1 ',
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
                        title: AxisTitle(
                            text: '(tahun)',
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            )),
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 15,
                        interval: 3),
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
                        name: 'RLS (Rata-rata Lama Sekolah)',
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
