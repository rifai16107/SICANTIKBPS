// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:bps_cilacap/restAPI/repository_pdrb_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class GrafikPertumbEkonomiKabkot extends StatefulWidget {
  const GrafikPertumbEkonomiKabkot({Key? key}) : super(key: key);

  @override
  _GrafikPertumbEkonomiKabkotState createState() =>
      _GrafikPertumbEkonomiKabkotState();
}

class _GrafikPertumbEkonomiKabkotState
    extends State<GrafikPertumbEkonomiKabkot> {
  RepositoryPdrbKabkot repositorypdrb = RepositoryPdrbKabkot();
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
              String kabkota36 = isipdrbkabkot[index = 35].wilayah;

              double pertumEk1 = double.parse(isipdrbkabkot[index = 0].pe5);
              double pertumEk2 = double.parse(isipdrbkabkot[index = 1].pe5);
              double pertumEk3 = double.parse(isipdrbkabkot[index = 2].pe5);
              double pertumEk4 = double.parse(isipdrbkabkot[index = 3].pe5);
              double pertumEk5 = double.parse(isipdrbkabkot[index = 4].pe5);
              double pertumEk6 = double.parse(isipdrbkabkot[index = 5].pe5);
              double pertumEk7 = double.parse(isipdrbkabkot[index = 6].pe5);
              double pertumEk8 = double.parse(isipdrbkabkot[index = 7].pe5);
              double pertumEk9 = double.parse(isipdrbkabkot[index = 8].pe5);
              double pertumEk10 = double.parse(isipdrbkabkot[index = 9].pe5);
              double pertumEk11 = double.parse(isipdrbkabkot[index = 10].pe5);
              double pertumEk12 = double.parse(isipdrbkabkot[index = 11].pe5);
              double pertumEk13 = double.parse(isipdrbkabkot[index = 12].pe5);
              double pertumEk14 = double.parse(isipdrbkabkot[index = 13].pe5);
              double pertumEk15 = double.parse(isipdrbkabkot[index = 14].pe5);
              double pertumEk16 = double.parse(isipdrbkabkot[index = 15].pe5);
              double pertumEk17 = double.parse(isipdrbkabkot[index = 16].pe5);
              double pertumEk18 = double.parse(isipdrbkabkot[index = 17].pe5);
              double pertumEk19 = double.parse(isipdrbkabkot[index = 18].pe5);
              double pertumEk20 = double.parse(isipdrbkabkot[index = 19].pe5);
              double pertumEk21 = double.parse(isipdrbkabkot[index = 20].pe5);
              double pertumEk22 = double.parse(isipdrbkabkot[index = 21].pe5);
              double pertumEk23 = double.parse(isipdrbkabkot[index = 22].pe5);
              double pertumEk24 = double.parse(isipdrbkabkot[index = 23].pe5);
              double pertumEk25 = double.parse(isipdrbkabkot[index = 24].pe5);
              double pertumEk26 = double.parse(isipdrbkabkot[index = 25].pe5);
              double pertumEk27 = double.parse(isipdrbkabkot[index = 26].pe5);
              double pertumEk28 = double.parse(isipdrbkabkot[index = 27].pe5);
              double pertumEk29 = double.parse(isipdrbkabkot[index = 28].pe5);
              double pertumEk30 = double.parse(isipdrbkabkot[index = 29].pe5);
              double pertumEk31 = double.parse(isipdrbkabkot[index = 30].pe5);
              double pertumEk32 = double.parse(isipdrbkabkot[index = 31].pe5);
              double pertumEk33 = double.parse(isipdrbkabkot[index = 32].pe5);
              double pertumEk34 = double.parse(isipdrbkabkot[index = 33].pe5);
              double pertumEk35 = double.parse(isipdrbkabkot[index = 34].pe5);
              double pertumEk36 = double.parse(isipdrbkabkot[index = 35].pe5);

              toString();
              data = [
                _ChartData(kabkota1, pertumEk1,
                    const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(
                    kabkota2, pertumEk2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota3, pertumEk3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota4, pertumEk4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota5, pertumEk5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota6, pertumEk6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota7, pertumEk7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota8, pertumEk8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota9, pertumEk9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, pertumEk10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, pertumEk11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, pertumEk12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, pertumEk13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, pertumEk14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, pertumEk15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, pertumEk16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, pertumEk17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, pertumEk18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, pertumEk19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, pertumEk20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, pertumEk21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, pertumEk22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, pertumEk23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, pertumEk24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, pertumEk25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, pertumEk26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, pertumEk27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, pertumEk28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, pertumEk29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, pertumEk30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, pertumEk31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, pertumEk32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, pertumEk33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, pertumEk34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, pertumEk35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota36, pertumEk36,
                    const Color.fromARGB(255, 238, 22, 220)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Pertumbuhan Ekonomi Kabupaten/Kota Di Jawa Tengah Tahun $th1 (persen)',
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
                        maximum: 10,
                        interval: 2),
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
                        name: 'Pertumbuhan Ekonomi (Persen)',
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
