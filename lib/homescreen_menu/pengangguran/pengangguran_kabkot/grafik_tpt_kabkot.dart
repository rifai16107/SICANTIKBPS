// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:bps_cilacap/restAPI/repository_pengangguran_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class GrafikTptKabkot extends StatefulWidget {
  const GrafikTptKabkot({Key? key}) : super(key: key);

  @override
  _GrafikTptKabkotState createState() => _GrafikTptKabkotState();
}

class _GrafikTptKabkotState extends State<GrafikTptKabkot> {
  RepositoryPengangguranKabkot PengangguranKabkot =
      RepositoryPengangguranKabkot();
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
      future: PengangguranKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipengangguranKabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 =
                  isipengangguranKabkot[index = 0].tahun.substring(20, 24);

              String kabkota1 = isipengangguranKabkot[index = 0].kab_kota;
              String kabkota2 = isipengangguranKabkot[index = 1].kab_kota;
              String kabkota3 = isipengangguranKabkot[index = 2].kab_kota;
              String kabkota4 = isipengangguranKabkot[index = 3].kab_kota;
              String kabkota5 = isipengangguranKabkot[index = 4].kab_kota;
              String kabkota6 = isipengangguranKabkot[index = 5].kab_kota;
              String kabkota7 = isipengangguranKabkot[index = 6].kab_kota;
              String kabkota8 = isipengangguranKabkot[index = 7].kab_kota;
              String kabkota9 = isipengangguranKabkot[index = 8].kab_kota;
              String kabkota10 = isipengangguranKabkot[index = 9].kab_kota;
              String kabkota11 = isipengangguranKabkot[index = 10].kab_kota;
              String kabkota12 = isipengangguranKabkot[index = 11].kab_kota;
              String kabkota13 = isipengangguranKabkot[index = 12].kab_kota;
              String kabkota14 = isipengangguranKabkot[index = 13].kab_kota;
              String kabkota15 = isipengangguranKabkot[index = 14].kab_kota;
              String kabkota16 = isipengangguranKabkot[index = 15].kab_kota;
              String kabkota17 = isipengangguranKabkot[index = 16].kab_kota;
              String kabkota18 = isipengangguranKabkot[index = 17].kab_kota;
              String kabkota19 = isipengangguranKabkot[index = 18].kab_kota;
              String kabkota20 = isipengangguranKabkot[index = 19].kab_kota;
              String kabkota21 = isipengangguranKabkot[index = 20].kab_kota;
              String kabkota22 = isipengangguranKabkot[index = 21].kab_kota;
              String kabkota23 = isipengangguranKabkot[index = 22].kab_kota;
              String kabkota24 = isipengangguranKabkot[index = 23].kab_kota;
              String kabkota25 = isipengangguranKabkot[index = 24].kab_kota;
              String kabkota26 = isipengangguranKabkot[index = 25].kab_kota;
              String kabkota27 = isipengangguranKabkot[index = 26].kab_kota;
              String kabkota28 = isipengangguranKabkot[index = 27].kab_kota;
              String kabkota29 = isipengangguranKabkot[index = 28].kab_kota;
              String kabkota30 = isipengangguranKabkot[index = 29].kab_kota;
              String kabkota31 = isipengangguranKabkot[index = 30].kab_kota;
              String kabkota32 = isipengangguranKabkot[index = 31].kab_kota;
              String kabkota33 = isipengangguranKabkot[index = 32].kab_kota;
              String kabkota34 = isipengangguranKabkot[index = 33].kab_kota;
              String kabkota35 = isipengangguranKabkot[index = 34].kab_kota;
              String kabkota36 = isipengangguranKabkot[index = 35].kab_kota;

              double tpt1 =
                  double.parse(isipengangguranKabkot[index = 0].tpt_n5);
              double tpt2 =
                  double.parse(isipengangguranKabkot[index = 1].tpt_n5);
              double tpt3 =
                  double.parse(isipengangguranKabkot[index = 2].tpt_n5);
              double tpt4 =
                  double.parse(isipengangguranKabkot[index = 3].tpt_n5);
              double tpt5 =
                  double.parse(isipengangguranKabkot[index = 4].tpt_n5);
              double tpt6 =
                  double.parse(isipengangguranKabkot[index = 5].tpt_n5);
              double tpt7 =
                  double.parse(isipengangguranKabkot[index = 6].tpt_n5);
              double tpt8 =
                  double.parse(isipengangguranKabkot[index = 7].tpt_n5);
              double tpt9 =
                  double.parse(isipengangguranKabkot[index = 8].tpt_n5);
              double tpt10 =
                  double.parse(isipengangguranKabkot[index = 9].tpt_n5);
              double tpt11 =
                  double.parse(isipengangguranKabkot[index = 10].tpt_n5);
              double tpt12 =
                  double.parse(isipengangguranKabkot[index = 11].tpt_n5);
              double tpt13 =
                  double.parse(isipengangguranKabkot[index = 12].tpt_n5);
              double tpt14 =
                  double.parse(isipengangguranKabkot[index = 13].tpt_n5);
              double tpt15 =
                  double.parse(isipengangguranKabkot[index = 14].tpt_n5);
              double tpt16 =
                  double.parse(isipengangguranKabkot[index = 15].tpt_n5);
              double tpt17 =
                  double.parse(isipengangguranKabkot[index = 16].tpt_n5);
              double tpt18 =
                  double.parse(isipengangguranKabkot[index = 17].tpt_n5);
              double tpt19 =
                  double.parse(isipengangguranKabkot[index = 18].tpt_n5);
              double tpt20 =
                  double.parse(isipengangguranKabkot[index = 19].tpt_n5);
              double tpt21 =
                  double.parse(isipengangguranKabkot[index = 20].tpt_n5);
              double tpt22 =
                  double.parse(isipengangguranKabkot[index = 21].tpt_n5);
              double tpt23 =
                  double.parse(isipengangguranKabkot[index = 22].tpt_n5);
              double tpt24 =
                  double.parse(isipengangguranKabkot[index = 23].tpt_n5);
              double tpt25 =
                  double.parse(isipengangguranKabkot[index = 24].tpt_n5);
              double tpt26 =
                  double.parse(isipengangguranKabkot[index = 25].tpt_n5);
              double tpt27 =
                  double.parse(isipengangguranKabkot[index = 26].tpt_n5);
              double tpt28 =
                  double.parse(isipengangguranKabkot[index = 27].tpt_n5);
              double tpt29 =
                  double.parse(isipengangguranKabkot[index = 28].tpt_n5);
              double tpt30 =
                  double.parse(isipengangguranKabkot[index = 29].tpt_n5);
              double tpt31 =
                  double.parse(isipengangguranKabkot[index = 30].tpt_n5);
              double tpt32 =
                  double.parse(isipengangguranKabkot[index = 31].tpt_n5);
              double tpt33 =
                  double.parse(isipengangguranKabkot[index = 32].tpt_n5);
              double tpt34 =
                  double.parse(isipengangguranKabkot[index = 33].tpt_n5);
              double tpt35 =
                  double.parse(isipengangguranKabkot[index = 34].tpt_n5);
              double tpt36 =
                  double.parse(isipengangguranKabkot[index = 35].tpt_n5);    

              toString();
              data = [
                _ChartData(
                    kabkota1, tpt1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, tpt2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, tpt3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, tpt4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, tpt5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, tpt6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, tpt7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, tpt8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, tpt9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, tpt10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, tpt11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, tpt12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, tpt13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, tpt14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, tpt15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, tpt16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, tpt17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, tpt18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, tpt19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, tpt20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, tpt21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, tpt22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, tpt23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, tpt24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, tpt25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, tpt26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, tpt27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, tpt28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, tpt29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, tpt30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, tpt31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, tpt32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, tpt33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, tpt34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, tpt35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, tpt36, const Color.fromARGB(255, 238, 22, 220)),    
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Tingkat Pengangguran Terbuka (TPT) Kabupaten/Kota Di Jawa Tengah Tahun $th1 (persen)',
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
                        isVisible: false,
                        position: LegendPosition.top),
                    primaryYAxis: NumericAxis(
                        
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 12,
                        interval: 2),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        pointColorMapper: (_ChartData data, _) => data.color,
                        // Sorting based on the specified field
                        sortingOrder: SortingOrder.descending,
                        sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'TPT (Persen)',
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
