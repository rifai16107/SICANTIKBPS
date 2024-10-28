// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_kemiskinan_kota.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GrafikGkmKabKot extends StatefulWidget {
  const GrafikGkmKabKot({Key? key}) : super(key: key);

  @override
  _GrafikGkmKabKotState createState() => _GrafikGkmKabKotState();
}

class _GrafikGkmKabKotState extends State<GrafikGkmKabKot> {
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

              double gk_1 = double.parse(isikemiskinan[index = 0].gk);
              double gk_2 = double.parse(isikemiskinan[index = 1].gk);
              double gk_3 = double.parse(isikemiskinan[index = 2].gk);
              double gk_4 = double.parse(isikemiskinan[index = 3].gk);
              double gk_5 = double.parse(isikemiskinan[index = 4].gk);
              double gk_6 = double.parse(isikemiskinan[index = 5].gk);
              double gk_7 = double.parse(isikemiskinan[index = 6].gk);
              double gk_8 = double.parse(isikemiskinan[index = 7].gk);
              double gk_9 = double.parse(isikemiskinan[index = 8].gk);
              double gk_10 = double.parse(isikemiskinan[index = 9].gk);
              double gk_11 = double.parse(isikemiskinan[index = 10].gk);
              double gk_12 = double.parse(isikemiskinan[index = 11].gk);
              double gk_13 = double.parse(isikemiskinan[index = 12].gk);
              double gk_14 = double.parse(isikemiskinan[index = 13].gk);
              double gk_15 = double.parse(isikemiskinan[index = 14].gk);
              double gk_16 = double.parse(isikemiskinan[index = 15].gk);
              double gk_17 = double.parse(isikemiskinan[index = 16].gk);
              double gk_18 = double.parse(isikemiskinan[index = 17].gk);
              double gk_19 = double.parse(isikemiskinan[index = 18].gk);
              double gk_20 = double.parse(isikemiskinan[index = 19].gk);
              double gk_21 = double.parse(isikemiskinan[index = 20].gk);
              double gk_22 = double.parse(isikemiskinan[index = 21].gk);
              double gk_23 = double.parse(isikemiskinan[index = 22].gk);
              double gk_24 = double.parse(isikemiskinan[index = 23].gk);
              double gk_25 = double.parse(isikemiskinan[index = 24].gk);
              double gk_26 = double.parse(isikemiskinan[index = 25].gk);
              double gk_27 = double.parse(isikemiskinan[index = 26].gk);
              double gk_28 = double.parse(isikemiskinan[index = 27].gk);
              double gk_29 = double.parse(isikemiskinan[index = 28].gk);
              double gk_30 = double.parse(isikemiskinan[index = 29].gk);
              double gk_31 = double.parse(isikemiskinan[index = 30].gk);
              double gk_32 = double.parse(isikemiskinan[index = 31].gk);
              double gk_33 = double.parse(isikemiskinan[index = 32].gk);
              double gk_34 = double.parse(isikemiskinan[index = 33].gk);
              double gk_35 = double.parse(isikemiskinan[index = 34].gk);
              double gk_36 = double.parse(isikemiskinan[index = 35].gk);

              toString();
              data = [
                _ChartData(
                    kabkota1, gk_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(kabkota2, gk_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota3, gk_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota4, gk_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota5, gk_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota6, gk_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota7, gk_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota8, gk_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(kabkota9, gk_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, gk_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, gk_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, gk_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, gk_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, gk_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, gk_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, gk_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, gk_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, gk_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, gk_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, gk_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, gk_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, gk_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, gk_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, gk_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, gk_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, gk_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, gk_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, gk_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, gk_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, gk_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, gk_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, gk_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, gk_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, gk_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, gk_35, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota36, gk_36, const Color.fromARGB(255, 243, 53, 243)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Garis Kemiskinan (GK) Kabupaten/Kota Di Jawa Tengah Tahun $th1',
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
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 800,
                        interval: 100),
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
                        name: 'Nilai GK (Garis Kemiskinan ribuan rp)',
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
