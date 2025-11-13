// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:bps_cilacap/restAPI/repository_pdrb_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
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
          List isipdrbadhkkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isipdrbadhkkabkot[index = 0].tahun.substring(20, 24);

              String kabkota1 = isipdrbadhkkabkot[index = 0].wilayah;
              String kabkota2 = isipdrbadhkkabkot[index = 1].wilayah;
              String kabkota3 = isipdrbadhkkabkot[index = 2].wilayah;
              String kabkota4 = isipdrbadhkkabkot[index = 3].wilayah;
              String kabkota5 = isipdrbadhkkabkot[index = 4].wilayah;
              String kabkota6 = isipdrbadhkkabkot[index = 5].wilayah;
              String kabkota7 = isipdrbadhkkabkot[index = 6].wilayah;
              String kabkota8 = isipdrbadhkkabkot[index = 7].wilayah;
              String kabkota9 = isipdrbadhkkabkot[index = 8].wilayah;
              String kabkota10 = isipdrbadhkkabkot[index = 9].wilayah;
              String kabkota11 = isipdrbadhkkabkot[index = 10].wilayah;
              String kabkota12 = isipdrbadhkkabkot[index = 11].wilayah;
              String kabkota13 = isipdrbadhkkabkot[index = 12].wilayah;
              String kabkota14 = isipdrbadhkkabkot[index = 13].wilayah;
              String kabkota15 = isipdrbadhkkabkot[index = 14].wilayah;
              String kabkota16 = isipdrbadhkkabkot[index = 15].wilayah;
              String kabkota17 = isipdrbadhkkabkot[index = 16].wilayah;
              String kabkota18 = isipdrbadhkkabkot[index = 17].wilayah;
              String kabkota19 = isipdrbadhkkabkot[index = 18].wilayah;
              String kabkota20 = isipdrbadhkkabkot[index = 19].wilayah;
              String kabkota21 = isipdrbadhkkabkot[index = 20].wilayah;
              String kabkota22 = isipdrbadhkkabkot[index = 21].wilayah;
              String kabkota23 = isipdrbadhkkabkot[index = 22].wilayah;
              String kabkota24 = isipdrbadhkkabkot[index = 23].wilayah;
              String kabkota25 = isipdrbadhkkabkot[index = 24].wilayah;
              String kabkota26 = isipdrbadhkkabkot[index = 25].wilayah;
              String kabkota27 = isipdrbadhkkabkot[index = 26].wilayah;
              String kabkota28 = isipdrbadhkkabkot[index = 27].wilayah;
              String kabkota29 = isipdrbadhkkabkot[index = 28].wilayah;
              String kabkota30 = isipdrbadhkkabkot[index = 29].wilayah;
              String kabkota31 = isipdrbadhkkabkot[index = 30].wilayah;
              String kabkota32 = isipdrbadhkkabkot[index = 31].wilayah;
              String kabkota33 = isipdrbadhkkabkot[index = 32].wilayah;
              String kabkota34 = isipdrbadhkkabkot[index = 33].wilayah;
              String kabkota35 = isipdrbadhkkabkot[index = 34].wilayah;

              double pdrbadhk1 =
                  double.parse(isipdrbadhkkabkot[index = 0].pdrb_adhk5);
              double pdrbadhk2 =
                  double.parse(isipdrbadhkkabkot[index = 1].pdrb_adhk5);
              double pdrbadhk3 =
                  double.parse(isipdrbadhkkabkot[index = 2].pdrb_adhk5);
              double pdrbadhk4 =
                  double.parse(isipdrbadhkkabkot[index = 3].pdrb_adhk5);
              double pdrbadhk5 =
                  double.parse(isipdrbadhkkabkot[index = 4].pdrb_adhk5);
              double pdrbadhk6 =
                  double.parse(isipdrbadhkkabkot[index = 5].pdrb_adhk5);
              double pdrbadhk7 =
                  double.parse(isipdrbadhkkabkot[index = 6].pdrb_adhk5);
              double pdrbadhk8 =
                  double.parse(isipdrbadhkkabkot[index = 7].pdrb_adhk5);
              double pdrbadhk9 =
                  double.parse(isipdrbadhkkabkot[index = 8].pdrb_adhk5);
              double pdrbadhk10 =
                  double.parse(isipdrbadhkkabkot[index = 9].pdrb_adhk5);
              double pdrbadhk11 =
                  double.parse(isipdrbadhkkabkot[index = 10].pdrb_adhk5);
              double pdrbadhk12 =
                  double.parse(isipdrbadhkkabkot[index = 11].pdrb_adhk5);
              double pdrbadhk13 =
                  double.parse(isipdrbadhkkabkot[index = 12].pdrb_adhk5);
              double pdrbadhk14 =
                  double.parse(isipdrbadhkkabkot[index = 13].pdrb_adhk5);
              double pdrbadhk15 =
                  double.parse(isipdrbadhkkabkot[index = 14].pdrb_adhk5);
              double pdrbadhk16 =
                  double.parse(isipdrbadhkkabkot[index = 15].pdrb_adhk5);
              double pdrbadhk17 =
                  double.parse(isipdrbadhkkabkot[index = 16].pdrb_adhk5);
              double pdrbadhk18 =
                  double.parse(isipdrbadhkkabkot[index = 17].pdrb_adhk5);
              double pdrbadhk19 =
                  double.parse(isipdrbadhkkabkot[index = 18].pdrb_adhk5);
              double pdrbadhk20 =
                  double.parse(isipdrbadhkkabkot[index = 19].pdrb_adhk5);
              double pdrbadhk21 =
                  double.parse(isipdrbadhkkabkot[index = 20].pdrb_adhk5);
              double pdrbadhk22 =
                  double.parse(isipdrbadhkkabkot[index = 21].pdrb_adhk5);
              double pdrbadhk23 =
                  double.parse(isipdrbadhkkabkot[index = 22].pdrb_adhk5);
              double pdrbadhk24 =
                  double.parse(isipdrbadhkkabkot[index = 23].pdrb_adhk5);
              double pdrbadhk25 =
                  double.parse(isipdrbadhkkabkot[index = 24].pdrb_adhk5);
              double pdrbadhk26 =
                  double.parse(isipdrbadhkkabkot[index = 25].pdrb_adhk5);
              double pdrbadhk27 =
                  double.parse(isipdrbadhkkabkot[index = 26].pdrb_adhk5);
              double pdrbadhk28 =
                  double.parse(isipdrbadhkkabkot[index = 27].pdrb_adhk5);
              double pdrbadhk29 =
                  double.parse(isipdrbadhkkabkot[index = 28].pdrb_adhk5);
              double pdrbadhk30 =
                  double.parse(isipdrbadhkkabkot[index = 29].pdrb_adhk5);
              double pdrbadhk31 =
                  double.parse(isipdrbadhkkabkot[index = 30].pdrb_adhk5);
              double pdrbadhk32 =
                  double.parse(isipdrbadhkkabkot[index = 31].pdrb_adhk5);
              double pdrbadhk33 =
                  double.parse(isipdrbadhkkabkot[index = 32].pdrb_adhk5);
              double pdrbadhk34 =
                  double.parse(isipdrbadhkkabkot[index = 33].pdrb_adhk5);
              double pdrbadhk35 =
                  double.parse(isipdrbadhkkabkot[index = 34].pdrb_adhk5);

              toString();
              data = [
                _ChartData(kabkota1, pdrbadhk1,
                    const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(
                    kabkota2, pdrbadhk2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota3, pdrbadhk3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota4, pdrbadhk4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota5, pdrbadhk5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota6, pdrbadhk6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota7, pdrbadhk7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota8, pdrbadhk8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota9, pdrbadhk9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, pdrbadhk10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, pdrbadhk11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, pdrbadhk12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, pdrbadhk13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, pdrbadhk14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, pdrbadhk15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, pdrbadhk16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, pdrbadhk17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, pdrbadhk18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, pdrbadhk19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, pdrbadhk20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, pdrbadhk21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, pdrbadhk22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, pdrbadhk23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, pdrbadhk24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, pdrbadhk25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, pdrbadhk26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, pdrbadhk27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, pdrbadhk28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, pdrbadhk29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, pdrbadhk30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, pdrbadhk31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, pdrbadhk32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, pdrbadhk33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, pdrbadhk34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, pdrbadhk35, const Color.fromRGBO(9, 0, 136, 1)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    //plotAreaBorderWidth: 0,
                    title: ChartTitle(
                        text:
                            'PDRB Atas Dasar Harga Konstan (Tahun 2010=100) Kabupaten/Kota Di Jawa Tengah Tahun $th1 (Milyar Rupiah)',
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
                        textStyle: const TextStyle(
                          fontSize: 11,
                        ),
                        toggleSeriesVisibility: true,
                        position: LegendPosition.top),
                    primaryYAxis: NumericAxis(
                        title: AxisTitle(
                            text: '(Milyar Rupiah)',
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
                        maximum: 220000,
                        interval: 100000),
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
                        name: '(Nilai PDRB, Milyar Rp)',
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
