// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_longform_fertil_mortal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GrafikU5mrKabKot extends StatefulWidget {
  const GrafikU5mrKabKot({Key? key}) : super(key: key);

  @override
  _GrafikU5mrKabKotState createState() => _GrafikU5mrKabKotState();
}

class _GrafikU5mrKabKotState extends State<GrafikU5mrKabKot> {
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

              double u5mr_1 = double.parse(isilongform[index = 0].u5mr);
              double u5mr_2 = double.parse(isilongform[index = 1].u5mr);
              double u5mr_3 = double.parse(isilongform[index = 2].u5mr);
              double u5mr_4 = double.parse(isilongform[index = 3].u5mr);
              double u5mr_5 = double.parse(isilongform[index = 4].u5mr);
              double u5mr_6 = double.parse(isilongform[index = 5].u5mr);
              double u5mr_7 = double.parse(isilongform[index = 6].u5mr);
              double u5mr_8 = double.parse(isilongform[index = 7].u5mr);
              double u5mr_9 = double.parse(isilongform[index = 8].u5mr);
              double u5mr_10 = double.parse(isilongform[index = 9].u5mr);
              double u5mr_11 = double.parse(isilongform[index = 10].u5mr);
              double u5mr_12 = double.parse(isilongform[index = 11].u5mr);
              double u5mr_13 = double.parse(isilongform[index = 12].u5mr);
              double u5mr_14 = double.parse(isilongform[index = 13].u5mr);
              double u5mr_15 = double.parse(isilongform[index = 14].u5mr);
              double u5mr_16 = double.parse(isilongform[index = 15].u5mr);
              double u5mr_17 = double.parse(isilongform[index = 16].u5mr);
              double u5mr_18 = double.parse(isilongform[index = 17].u5mr);
              double u5mr_19 = double.parse(isilongform[index = 18].u5mr);
              double u5mr_20 = double.parse(isilongform[index = 19].u5mr);
              double u5mr_21 = double.parse(isilongform[index = 20].u5mr);
              double u5mr_22 = double.parse(isilongform[index = 21].u5mr);
              double u5mr_23 = double.parse(isilongform[index = 22].u5mr);
              double u5mr_24 = double.parse(isilongform[index = 23].u5mr);
              double u5mr_25 = double.parse(isilongform[index = 24].u5mr);
              double u5mr_26 = double.parse(isilongform[index = 25].u5mr);
              double u5mr_27 = double.parse(isilongform[index = 26].u5mr);
              double u5mr_28 = double.parse(isilongform[index = 27].u5mr);
              double u5mr_29 = double.parse(isilongform[index = 28].u5mr);
              double u5mr_30 = double.parse(isilongform[index = 29].u5mr);
              double u5mr_31 = double.parse(isilongform[index = 30].u5mr);
              double u5mr_32 = double.parse(isilongform[index = 31].u5mr);
              double u5mr_33 = double.parse(isilongform[index = 32].u5mr);
              double u5mr_34 = double.parse(isilongform[index = 33].u5mr);
              double u5mr_35 = double.parse(isilongform[index = 34].u5mr);
              double u5mr_36 = double.parse(isilongform[index = 35].u5mr);

              toString();
              data = [
                _ChartData(
                    kabkota1, u5mr_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, u5mr_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, u5mr_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, u5mr_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, u5mr_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, u5mr_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, u5mr_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, u5mr_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, u5mr_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, u5mr_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, u5mr_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, u5mr_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, u5mr_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, u5mr_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, u5mr_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, u5mr_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, u5mr_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, u5mr_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, u5mr_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, u5mr_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, u5mr_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, u5mr_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, u5mr_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, u5mr_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, u5mr_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, u5mr_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, u5mr_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, u5mr_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, u5mr_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, u5mr_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, u5mr_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, u5mr_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, u5mr_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, u5mr_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, u5mr_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, u5mr_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Under 5 Mortality Rate (U5MR) Kabupaten/Kota Di Jawa Tengah Hasil Pendataaan Long Form SP2020',
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
                        maximum: 22,
                        interval: 5),
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
                            labelAlignment: ChartDataLabelAlignment.outer,
                            textStyle: TextStyle(fontSize: 9)),
                        name: 'Nilai U5MR',
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
