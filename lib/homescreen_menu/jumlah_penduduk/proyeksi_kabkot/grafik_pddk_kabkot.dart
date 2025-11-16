// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_penduduk_kabkot.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class GrafikPddkKabkot extends StatefulWidget {
  const GrafikPddkKabkot({Key? key}) : super(key: key);

  @override
  _GrafikPddkKabkotState createState() => _GrafikPddkKabkotState();
}

class _GrafikPddkKabkotState extends State<GrafikPddkKabkot> {
  RepositoryJumlahPendudukKabkot jumlahPendudukKabkot =
      RepositoryJumlahPendudukKabkot();
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
      future: jumlahPendudukKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipendudukkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isipendudukkabkot[index = 0].tahun.substring(20, 24);

              String kabkota1 = isipendudukkabkot[index = 0].wilayah;
              String kabkota2 = isipendudukkabkot[index = 1].wilayah;
              String kabkota3 = isipendudukkabkot[index = 2].wilayah;
              String kabkota4 = isipendudukkabkot[index = 3].wilayah;
              String kabkota5 = isipendudukkabkot[index = 4].wilayah;
              String kabkota6 = isipendudukkabkot[index = 5].wilayah;
              String kabkota7 = isipendudukkabkot[index = 6].wilayah;
              String kabkota8 = isipendudukkabkot[index = 7].wilayah;
              String kabkota9 = isipendudukkabkot[index = 8].wilayah;
              String kabkota10 = isipendudukkabkot[index = 9].wilayah;
              String kabkota11 = isipendudukkabkot[index = 10].wilayah;
              String kabkota12 = isipendudukkabkot[index = 11].wilayah;
              String kabkota13 = isipendudukkabkot[index = 12].wilayah;
              String kabkota14 = isipendudukkabkot[index = 13].wilayah;
              String kabkota15 = isipendudukkabkot[index = 14].wilayah;
              String kabkota16 = isipendudukkabkot[index = 15].wilayah;
              String kabkota17 = isipendudukkabkot[index = 16].wilayah;
              String kabkota18 = isipendudukkabkot[index = 17].wilayah;
              String kabkota19 = isipendudukkabkot[index = 18].wilayah;
              String kabkota20 = isipendudukkabkot[index = 19].wilayah;
              String kabkota21 = isipendudukkabkot[index = 20].wilayah;
              String kabkota22 = isipendudukkabkot[index = 21].wilayah;
              String kabkota23 = isipendudukkabkot[index = 22].wilayah;
              String kabkota24 = isipendudukkabkot[index = 23].wilayah;
              String kabkota25 = isipendudukkabkot[index = 24].wilayah;
              String kabkota26 = isipendudukkabkot[index = 25].wilayah;
              String kabkota27 = isipendudukkabkot[index = 26].wilayah;
              String kabkota28 = isipendudukkabkot[index = 27].wilayah;
              String kabkota29 = isipendudukkabkot[index = 28].wilayah;
              String kabkota30 = isipendudukkabkot[index = 29].wilayah;
              String kabkota31 = isipendudukkabkot[index = 30].wilayah;
              String kabkota32 = isipendudukkabkot[index = 31].wilayah;
              String kabkota33 = isipendudukkabkot[index = 32].wilayah;
              String kabkota34 = isipendudukkabkot[index = 33].wilayah;
              String kabkota35 = isipendudukkabkot[index = 34].wilayah;

              double pddk_1 = (double.parse(isipendudukkabkot[index = 0].lk5) +
                      double.parse(isipendudukkabkot[index = 0].pr5)) /
                  1000;
              double pddk_2 = (double.parse(isipendudukkabkot[index = 1].lk5) +
                      double.parse(isipendudukkabkot[index = 1].pr5)) /
                  1000;
              double pddk_3 = (double.parse(isipendudukkabkot[index = 2].lk5) +
                      double.parse(isipendudukkabkot[index = 2].pr5)) /
                  1000;
              double pddk_4 = (double.parse(isipendudukkabkot[index = 3].lk5) +
                      double.parse(isipendudukkabkot[index = 3].pr5)) /
                  1000;
              double pddk_5 = (double.parse(isipendudukkabkot[index = 4].lk5) +
                      double.parse(isipendudukkabkot[index = 4].pr5)) /
                  1000;
              double pddk_6 = (double.parse(isipendudukkabkot[index = 5].lk5) +
                      double.parse(isipendudukkabkot[index = 5].pr5)) /
                  1000;
              double pddk_7 = (double.parse(isipendudukkabkot[index = 6].lk5) +
                      double.parse(isipendudukkabkot[index = 6].pr5)) /
                  1000;
              double pddk_8 = (double.parse(isipendudukkabkot[index = 7].lk5) +
                      double.parse(isipendudukkabkot[index = 7].pr5)) /
                  1000;
              double pddk_9 = (double.parse(isipendudukkabkot[index = 8].lk5) +
                      double.parse(isipendudukkabkot[index = 8].pr5)) /
                  1000;
              double pddk_10 = (double.parse(isipendudukkabkot[index = 9].lk5) +
                      double.parse(isipendudukkabkot[index = 9].pr5)) /
                  1000;
              double pddk_11 =
                  (double.parse(isipendudukkabkot[index = 10].lk5) +
                          double.parse(isipendudukkabkot[index = 10].pr5)) /
                      1000;
              double pddk_12 =
                  (double.parse(isipendudukkabkot[index = 11].lk5) +
                          double.parse(isipendudukkabkot[index = 11].pr5)) /
                      1000;
              double pddk_13 =
                  (double.parse(isipendudukkabkot[index = 12].lk5) +
                          double.parse(isipendudukkabkot[index = 12].pr5)) /
                      1000;
              double pddk_14 =
                  (double.parse(isipendudukkabkot[index = 13].lk5) +
                          double.parse(isipendudukkabkot[index = 13].pr5)) /
                      1000;
              double pddk_15 =
                  (double.parse(isipendudukkabkot[index = 14].lk5) +
                          double.parse(isipendudukkabkot[index = 14].pr5)) /
                      1000;
              double pddk_16 =
                  (double.parse(isipendudukkabkot[index = 15].lk5) +
                          double.parse(isipendudukkabkot[index = 15].pr5)) /
                      1000;
              double pddk_17 =
                  (double.parse(isipendudukkabkot[index = 16].lk5) +
                          double.parse(isipendudukkabkot[index = 16].pr5)) /
                      1000;
              double pddk_18 =
                  (double.parse(isipendudukkabkot[index = 17].lk5) +
                          double.parse(isipendudukkabkot[index = 17].pr5)) /
                      1000;
              double pddk_19 =
                  (double.parse(isipendudukkabkot[index = 18].lk5) +
                          double.parse(isipendudukkabkot[index = 18].pr5)) /
                      1000;
              double pddk_20 =
                  (double.parse(isipendudukkabkot[index = 19].lk5) +
                          double.parse(isipendudukkabkot[index = 19].pr5)) /
                      1000;
              double pddk_21 =
                  (double.parse(isipendudukkabkot[index = 20].lk5) +
                          double.parse(isipendudukkabkot[index = 20].pr5)) /
                      1000;
              double pddk_22 =
                  (double.parse(isipendudukkabkot[index = 21].lk5) +
                          double.parse(isipendudukkabkot[index = 21].pr5)) /
                      1000;
              double pddk_23 =
                  (double.parse(isipendudukkabkot[index = 22].lk5) +
                          double.parse(isipendudukkabkot[index = 22].pr5)) /
                      1000;
              double pddk_24 =
                  (double.parse(isipendudukkabkot[index = 23].lk5) +
                          double.parse(isipendudukkabkot[index = 23].pr5)) /
                      1000;
              double pddk_25 =
                  (double.parse(isipendudukkabkot[index = 24].lk5) +
                          double.parse(isipendudukkabkot[index = 24].pr5)) /
                      1000;
              double pddk_26 =
                  (double.parse(isipendudukkabkot[index = 25].lk5) +
                          double.parse(isipendudukkabkot[index = 25].pr5)) /
                      1000;
              double pddk_27 =
                  (double.parse(isipendudukkabkot[index = 26].lk5) +
                          double.parse(isipendudukkabkot[index = 26].pr5)) /
                      1000;
              double pddk_28 =
                  (double.parse(isipendudukkabkot[index = 27].lk5) +
                          double.parse(isipendudukkabkot[index = 27].pr5)) /
                      1000;
              double pddk_29 =
                  (double.parse(isipendudukkabkot[index = 28].lk5) +
                          double.parse(isipendudukkabkot[index = 28].pr5)) /
                      1000;
              double pddk_30 =
                  (double.parse(isipendudukkabkot[index = 29].lk5) +
                          double.parse(isipendudukkabkot[index = 29].pr5)) /
                      1000;
              double pddk_31 =
                  (double.parse(isipendudukkabkot[index = 30].lk5) +
                          double.parse(isipendudukkabkot[index = 30].pr5)) /
                      1000;
              double pddk_32 =
                  (double.parse(isipendudukkabkot[index = 31].lk5) +
                          double.parse(isipendudukkabkot[index = 31].pr5)) /
                      1000;
              double pddk_33 =
                  (double.parse(isipendudukkabkot[index = 32].lk5) +
                          double.parse(isipendudukkabkot[index = 32].pr5)) /
                      1000;
              double pddk_34 =
                  (double.parse(isipendudukkabkot[index = 33].lk5) +
                          double.parse(isipendudukkabkot[index = 33].pr5)) /
                      1000;
              double pddk_35 =
                  (double.parse(isipendudukkabkot[index = 34].lk5) +
                          double.parse(isipendudukkabkot[index = 34].pr5)) /
                      1000;

              toString();
              data = [
                _ChartData(
                    kabkota1, pddk_1, const Color.fromARGB(255, 207, 154, 38)),
                _ChartData(
                    kabkota2, pddk_2, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota3, pddk_3, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota4, pddk_4, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota5, pddk_5, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota6, pddk_6, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota7, pddk_7, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota8, pddk_8, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota9, pddk_9, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota10, pddk_10, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota11, pddk_11, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota12, pddk_12, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota13, pddk_13, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota14, pddk_14, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota15, pddk_15, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota16, pddk_16, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota17, pddk_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota18, pddk_18, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota19, pddk_19, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota20, pddk_20, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota21, pddk_21, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota22, pddk_22, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota23, pddk_23, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota24, pddk_24, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota25, pddk_25, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota26, pddk_26, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota27, pddk_27, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota28, pddk_28, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota29, pddk_29, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota30, pddk_30, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota31, pddk_31, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota32, pddk_32, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota33, pddk_33, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota34, pddk_34, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    kabkota35, pddk_35, const Color.fromRGBO(9, 0, 136, 1)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight*1.05,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Penduduk Kabupaten/Kota Di Jawa Tengah Tahun $th1 (Proyeksi Penduduk)',
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
                        isVisible: true,
                        textStyle: const TextStyle(
                        fontSize: 11,
                        ),
                        toggleSeriesVisibility: true,
                        position: LegendPosition.top),
                    primaryYAxis: NumericAxis(
                        title: AxisTitle(
                            text: '(Jumlah Penduduk)',
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            )),
                        axisLabelFormatter: (AxisLabelRenderDetails args) {
                          if (args.value < 0) {
                            return ChartAxisLabel(
                                '${args.text}K', args.textStyle);
                          }
                          return ChartAxisLabel(
                              '${args.text}K', args.textStyle);
                          //return ChartAxisLabel(args.text, args.textStyle);
                        },
                        //numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        numberFormat: NumberFormat("###,###.##", "vi_VN"),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 2800,
                        interval: 500),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        //width: 0.8,
                        //spacing: 0.05,
                        pointColorMapper: (_ChartData data, _) => data.color,
                        // Sorting based on the specified field
                        sortingOrder: SortingOrder.ascending,
                        sortFieldValueMapper: (_ChartData data, _) => data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Jumlah Penduduk (ribuan Jiwa)',
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
