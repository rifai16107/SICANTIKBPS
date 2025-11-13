// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_kemiskinan_kota.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GrafikMiskinKabKot extends StatefulWidget {
  const GrafikMiskinKabKot({Key? key}) : super(key: key);

  @override
  _GrafikMiskinKabKotState createState() => _GrafikMiskinKabKotState();
}

class _GrafikMiskinKabKotState extends State<GrafikMiskinKabKot> {
  RepositoryKemiskinanKota repositoryKemiskinanKota =
      RepositoryKemiskinanKota();
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
      future: repositoryKemiskinanKota.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isikemiskinan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isikemiskinan[index = 0].tahun.substring(0, 4);

              String kabkota1 = isikemiskinan[index = 0].kabkota;
              String kabkota2 = isikemiskinan[index = 1].kabkota;
              String kabkota3 = isikemiskinan[index = 2].kabkota;
              String kabkota4 = isikemiskinan[index = 3].kabkota;
              String kabkota5 = isikemiskinan[index = 4].kabkota;
              String kabkota6 = isikemiskinan[index = 5].kabkota;
              String kabkota7 = isikemiskinan[index = 6].kabkota;
              String kabkota8 = isikemiskinan[index = 7].kabkota;
              String kabkota9 = isikemiskinan[index = 8].kabkota;
              String kabkota10 = isikemiskinan[index = 9].kabkota;
              String kabkota11 = isikemiskinan[index = 10].kabkota;
              String kabkota12 = isikemiskinan[index = 11].kabkota;
              String kabkota13 = isikemiskinan[index = 12].kabkota;
              String kabkota14 = isikemiskinan[index = 13].kabkota;
              String kabkota15 = isikemiskinan[index = 14].kabkota;
              String kabkota16 = isikemiskinan[index = 15].kabkota;
              String kabkota17 = isikemiskinan[index = 16].kabkota;
              String kabkota18 = isikemiskinan[index = 17].kabkota;
              String kabkota19 = isikemiskinan[index = 18].kabkota;
              String kabkota20 = isikemiskinan[index = 19].kabkota;
              String kabkota21 = isikemiskinan[index = 20].kabkota;
              String kabkota22 = isikemiskinan[index = 21].kabkota;
              String kabkota23 = isikemiskinan[index = 22].kabkota;
              String kabkota24 = isikemiskinan[index = 23].kabkota;
              String kabkota25 = isikemiskinan[index = 24].kabkota;
              String kabkota26 = isikemiskinan[index = 25].kabkota;
              String kabkota27 = isikemiskinan[index = 26].kabkota;
              String kabkota28 = isikemiskinan[index = 27].kabkota;
              String kabkota29 = isikemiskinan[index = 28].kabkota;
              String kabkota30 = isikemiskinan[index = 29].kabkota;
              String kabkota31 = isikemiskinan[index = 30].kabkota;
              String kabkota32 = isikemiskinan[index = 31].kabkota;
              String kabkota33 = isikemiskinan[index = 32].kabkota;
              String kabkota34 = isikemiskinan[index = 33].kabkota;
              String kabkota35 = isikemiskinan[index = 34].kabkota;
              String kabkota36 = isikemiskinan[index = 35].kabkota;

              double p0_1 = double.parse(isikemiskinan[index = 0].p0);
              double p0_2 = double.parse(isikemiskinan[index = 1].p0);
              double p0_3 = double.parse(isikemiskinan[index = 2].p0);
              double p0_4 = double.parse(isikemiskinan[index = 3].p0);
              double p0_5 = double.parse(isikemiskinan[index = 4].p0);
              double p0_6 = double.parse(isikemiskinan[index = 5].p0);
              double p0_7 = double.parse(isikemiskinan[index = 6].p0);
              double p0_8 = double.parse(isikemiskinan[index = 7].p0);
              double p0_9 = double.parse(isikemiskinan[index = 8].p0);
              double p0_10 = double.parse(isikemiskinan[index = 9].p0);
              double p0_11 = double.parse(isikemiskinan[index = 10].p0);
              double p0_12 = double.parse(isikemiskinan[index = 11].p0);
              double p0_13 = double.parse(isikemiskinan[index = 12].p0);
              double p0_14 = double.parse(isikemiskinan[index = 13].p0);
              double p0_15 = double.parse(isikemiskinan[index = 14].p0);
              double p0_16 = double.parse(isikemiskinan[index = 15].p0);
              double p0_17 = double.parse(isikemiskinan[index = 16].p0);
              double p0_18 = double.parse(isikemiskinan[index = 17].p0);
              double p0_19 = double.parse(isikemiskinan[index = 18].p0);
              double p0_20 = double.parse(isikemiskinan[index = 19].p0);
              double p0_21 = double.parse(isikemiskinan[index = 20].p0);
              double p0_22 = double.parse(isikemiskinan[index = 21].p0);
              double p0_23 = double.parse(isikemiskinan[index = 22].p0);
              double p0_24 = double.parse(isikemiskinan[index = 23].p0);
              double p0_25 = double.parse(isikemiskinan[index = 24].p0);
              double p0_26 = double.parse(isikemiskinan[index = 25].p0);
              double p0_27 = double.parse(isikemiskinan[index = 26].p0);
              double p0_28 = double.parse(isikemiskinan[index = 27].p0);
              double p0_29 = double.parse(isikemiskinan[index = 28].p0);
              double p0_30 = double.parse(isikemiskinan[index = 29].p0);
              double p0_31 = double.parse(isikemiskinan[index = 30].p0);
              double p0_32 = double.parse(isikemiskinan[index = 31].p0);
              double p0_33 = double.parse(isikemiskinan[index = 32].p0);
              double p0_34 = double.parse(isikemiskinan[index = 33].p0);
              double p0_35 = double.parse(isikemiskinan[index = 34].p0);
              double p0_36 = double.parse(isikemiskinan[index = 35].p0);

              toString();
              data = [
                _ChartData(
                    kabkota1, p0_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, p0_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, p0_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, p0_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, p0_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, p0_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, p0_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, p0_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, p0_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, p0_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, p0_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, p0_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, p0_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, p0_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, p0_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, p0_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, p0_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, p0_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, p0_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, p0_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, p0_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, p0_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, p0_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, p0_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, p0_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, p0_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, p0_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, p0_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, p0_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, p0_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, p0_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, p0_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, p0_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, p0_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, p0_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, p0_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Tingkat Kemiskinan Kabupaten/Kota Di Jawa Tengah Tahun $th1',
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
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
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
                            textStyle: TextStyle(fontSize: 9)),
                        name: 'Nilai P0 (Persentase Kemiskinan)',
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
