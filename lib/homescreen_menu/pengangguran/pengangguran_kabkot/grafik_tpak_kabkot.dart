// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:bps_cilacap/restAPI/repository_pengangguran_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class GrafikTpakKabkot extends StatefulWidget {
  const GrafikTpakKabkot({Key? key}) : super(key: key);

  @override
  _GrafikTpakKabkotState createState() => _GrafikTpakKabkotState();
}

class _GrafikTpakKabkotState extends State<GrafikTpakKabkot> {
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

              double tpak1 =
                  double.parse(isipengangguranKabkot[index = 0].tpak_n5);
              double tpak2 =
                  double.parse(isipengangguranKabkot[index = 1].tpak_n5);
              double tpak3 =
                  double.parse(isipengangguranKabkot[index = 2].tpak_n5);
              double tpak4 =
                  double.parse(isipengangguranKabkot[index = 3].tpak_n5);
              double tpak5 =
                  double.parse(isipengangguranKabkot[index = 4].tpak_n5);
              double tpak6 =
                  double.parse(isipengangguranKabkot[index = 5].tpak_n5);
              double tpak7 =
                  double.parse(isipengangguranKabkot[index = 6].tpak_n5);
              double tpak8 =
                  double.parse(isipengangguranKabkot[index = 7].tpak_n5);
              double tpak9 =
                  double.parse(isipengangguranKabkot[index = 8].tpak_n5);
              double tpak10 =
                  double.parse(isipengangguranKabkot[index = 9].tpak_n5);
              double tpak11 =
                  double.parse(isipengangguranKabkot[index = 10].tpak_n5);
              double tpak12 =
                  double.parse(isipengangguranKabkot[index = 11].tpak_n5);
              double tpak13 =
                  double.parse(isipengangguranKabkot[index = 12].tpak_n5);
              double tpak14 =
                  double.parse(isipengangguranKabkot[index = 13].tpak_n5);
              double tpak15 =
                  double.parse(isipengangguranKabkot[index = 14].tpak_n5);
              double tpak16 =
                  double.parse(isipengangguranKabkot[index = 15].tpak_n5);
              double tpak17 =
                  double.parse(isipengangguranKabkot[index = 16].tpak_n5);
              double tpak18 =
                  double.parse(isipengangguranKabkot[index = 17].tpak_n5);
              double tpak19 =
                  double.parse(isipengangguranKabkot[index = 18].tpak_n5);
              double tpak20 =
                  double.parse(isipengangguranKabkot[index = 19].tpak_n5);
              double tpak21 =
                  double.parse(isipengangguranKabkot[index = 20].tpak_n5);
              double tpak22 =
                  double.parse(isipengangguranKabkot[index = 21].tpak_n5);
              double tpak23 =
                  double.parse(isipengangguranKabkot[index = 22].tpak_n5);
              double tpak24 =
                  double.parse(isipengangguranKabkot[index = 23].tpak_n5);
              double tpak25 =
                  double.parse(isipengangguranKabkot[index = 24].tpak_n5);
              double tpak26 =
                  double.parse(isipengangguranKabkot[index = 25].tpak_n5);
              double tpak27 =
                  double.parse(isipengangguranKabkot[index = 26].tpak_n5);
              double tpak28 =
                  double.parse(isipengangguranKabkot[index = 27].tpak_n5);
              double tpak29 =
                  double.parse(isipengangguranKabkot[index = 28].tpak_n5);
              double tpak30 =
                  double.parse(isipengangguranKabkot[index = 29].tpak_n5);
              double tpak31 =
                  double.parse(isipengangguranKabkot[index = 30].tpak_n5);
              double tpak32 =
                  double.parse(isipengangguranKabkot[index = 31].tpak_n5);
              double tpak33 =
                  double.parse(isipengangguranKabkot[index = 32].tpak_n5);
              double tpak34 =
                  double.parse(isipengangguranKabkot[index = 33].tpak_n5);
              double tpak35 =
                  double.parse(isipengangguranKabkot[index = 34].tpak_n5);
              double tpak36 =
                  double.parse(isipengangguranKabkot[index = 35].tpak_n5);    

              toString();
              data = [
                _ChartData(
                    kabkota1, tpak1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, tpak2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, tpak3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, tpak4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, tpak5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, tpak6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, tpak7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, tpak8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, tpak9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, tpak10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, tpak11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, tpak12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, tpak13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, tpak14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, tpak15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, tpak16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, tpak17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, tpak18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, tpak19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, tpak20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, tpak21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, tpak22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, tpak23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, tpak24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, tpak25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, tpak26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, tpak27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, tpak28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, tpak29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, tpak30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, tpak31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, tpak32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, tpak33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, tpak34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, tpak35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, tpak36, const Color.fromARGB(255, 238, 22, 220)),    
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Tingkat Partisipasi Angkatan Kerja (TPAK) Kabupaten/Kota Di Jawa Tengah Tahun $th1 (persen)',
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
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Tingkat Partisipasi Angkatan Kerja (TPAK, Persen)',
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
