// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_longform_fertil_mortal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GrafikCmrKabKot extends StatefulWidget {
  const GrafikCmrKabKot({Key? key}) : super(key: key);

  @override
  _GrafikCmrKabKotState createState() => _GrafikCmrKabKotState();
}

class _GrafikCmrKabKotState extends State<GrafikCmrKabKot> {
  RepositoryLongformFertilMortal repositorylongform =
      RepositoryLongformFertilMortal();
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
      future: repositorylongform.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isilongform = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //String th1 = isilongform[index = 0].tahun.substring(0, 4);

              String kabkota1 = isilongform[index = 0].wilayah;
              String kabkota2 = isilongform[index = 1].wilayah;
              String kabkota3 = isilongform[index = 2].wilayah;
              String kabkota4 = isilongform[index = 3].wilayah;
              String kabkota5 = isilongform[index = 4].wilayah;
              String kabkota6 = isilongform[index = 5].wilayah;
              String kabkota7 = isilongform[index = 6].wilayah;
              String kabkota8 = isilongform[index = 7].wilayah;
              String kabkota9 = isilongform[index = 8].wilayah;
              String kabkota10 = isilongform[index = 9].wilayah;
              String kabkota11 = isilongform[index = 10].wilayah;
              String kabkota12 = isilongform[index = 11].wilayah;
              String kabkota13 = isilongform[index = 12].wilayah;
              String kabkota14 = isilongform[index = 13].wilayah;
              String kabkota15 = isilongform[index = 14].wilayah;
              String kabkota16 = isilongform[index = 15].wilayah;
              String kabkota17 = isilongform[index = 16].wilayah;
              String kabkota18 = isilongform[index = 17].wilayah;
              String kabkota19 = isilongform[index = 18].wilayah;
              String kabkota20 = isilongform[index = 19].wilayah;
              String kabkota21 = isilongform[index = 20].wilayah;
              String kabkota22 = isilongform[index = 21].wilayah;
              String kabkota23 = isilongform[index = 22].wilayah;
              String kabkota24 = isilongform[index = 23].wilayah;
              String kabkota25 = isilongform[index = 24].wilayah;
              String kabkota26 = isilongform[index = 25].wilayah;
              String kabkota27 = isilongform[index = 26].wilayah;
              String kabkota28 = isilongform[index = 27].wilayah;
              String kabkota29 = isilongform[index = 28].wilayah;
              String kabkota30 = isilongform[index = 29].wilayah;
              String kabkota31 = isilongform[index = 30].wilayah;
              String kabkota32 = isilongform[index = 31].wilayah;
              String kabkota33 = isilongform[index = 32].wilayah;
              String kabkota34 = isilongform[index = 33].wilayah;
              String kabkota35 = isilongform[index = 34].wilayah;
              String kabkota36 = isilongform[index = 35].wilayah;

              double cmr_1 = double.parse(isilongform[index = 0].cmr);
              double cmr_2 = double.parse(isilongform[index = 1].cmr);
              double cmr_3 = double.parse(isilongform[index = 2].cmr);
              double cmr_4 = double.parse(isilongform[index = 3].cmr);
              double cmr_5 = double.parse(isilongform[index = 4].cmr);
              double cmr_6 = double.parse(isilongform[index = 5].cmr);
              double cmr_7 = double.parse(isilongform[index = 6].cmr);
              double cmr_8 = double.parse(isilongform[index = 7].cmr);
              double cmr_9 = double.parse(isilongform[index = 8].cmr);
              double cmr_10 = double.parse(isilongform[index = 9].cmr);
              double cmr_11 = double.parse(isilongform[index = 10].cmr);
              double cmr_12 = double.parse(isilongform[index = 11].cmr);
              double cmr_13 = double.parse(isilongform[index = 12].cmr);
              double cmr_14 = double.parse(isilongform[index = 13].cmr);
              double cmr_15 = double.parse(isilongform[index = 14].cmr);
              double cmr_16 = double.parse(isilongform[index = 15].cmr);
              double cmr_17 = double.parse(isilongform[index = 16].cmr);
              double cmr_18 = double.parse(isilongform[index = 17].cmr);
              double cmr_19 = double.parse(isilongform[index = 18].cmr);
              double cmr_20 = double.parse(isilongform[index = 19].cmr);
              double cmr_21 = double.parse(isilongform[index = 20].cmr);
              double cmr_22 = double.parse(isilongform[index = 21].cmr);
              double cmr_23 = double.parse(isilongform[index = 22].cmr);
              double cmr_24 = double.parse(isilongform[index = 23].cmr);
              double cmr_25 = double.parse(isilongform[index = 24].cmr);
              double cmr_26 = double.parse(isilongform[index = 25].cmr);
              double cmr_27 = double.parse(isilongform[index = 26].cmr);
              double cmr_28 = double.parse(isilongform[index = 27].cmr);
              double cmr_29 = double.parse(isilongform[index = 28].cmr);
              double cmr_30 = double.parse(isilongform[index = 29].cmr);
              double cmr_31 = double.parse(isilongform[index = 30].cmr);
              double cmr_32 = double.parse(isilongform[index = 31].cmr);
              double cmr_33 = double.parse(isilongform[index = 32].cmr);
              double cmr_34 = double.parse(isilongform[index = 33].cmr);
              double cmr_35 = double.parse(isilongform[index = 34].cmr);
              double cmr_36 = double.parse(isilongform[index = 35].cmr);

              toString();
              data = [
                _ChartData(
                    kabkota1, cmr_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, cmr_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, cmr_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, cmr_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, cmr_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, cmr_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, cmr_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, cmr_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, cmr_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, cmr_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, cmr_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, cmr_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, cmr_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, cmr_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, cmr_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, cmr_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, cmr_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, cmr_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, cmr_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, cmr_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, cmr_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, cmr_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, cmr_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, cmr_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, cmr_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, cmr_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, cmr_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, cmr_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, cmr_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, cmr_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, cmr_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, cmr_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, cmr_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, cmr_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, cmr_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, cmr_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Children Mortality Rate (CMR) Kabupaten/Kota Di Jawa Tengah Hasil Pendataaan Long Form SP2020',
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
                        maximum: 3.5,
                        interval: 1),
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
                            textStyle: TextStyle(fontSize: 9)),
                        name: 'Nilai CMR',
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
