// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_penduduk_kecamatan.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class GrafikPddkKecamatan extends StatefulWidget {
  const GrafikPddkKecamatan({Key? key}) : super(key: key);

  @override
  _GrafikPddkKecamatanState createState() => _GrafikPddkKecamatanState();
}

class _GrafikPddkKecamatanState extends State<GrafikPddkKecamatan> {
  RepositoryJumlahPendudukKecamatan jumlahPendudukKecamatan =
      RepositoryJumlahPendudukKecamatan();
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
      future: jumlahPendudukKecamatan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipendudukkecamatan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isipendudukkecamatan[index = 0].tahun;

              String kecamatan1 = isipendudukkecamatan[index = 0].kecamatan;
              String kecamatan2 = isipendudukkecamatan[index = 1].kecamatan;
              String kecamatan3 = isipendudukkecamatan[index = 2].kecamatan;
              String kecamatan4 = isipendudukkecamatan[index = 3].kecamatan;
              String kecamatan5 = isipendudukkecamatan[index = 4].kecamatan;
              String kecamatan6 = isipendudukkecamatan[index = 5].kecamatan;
              String kecamatan7 = isipendudukkecamatan[index = 6].kecamatan;
              String kecamatan8 = isipendudukkecamatan[index = 7].kecamatan;
              String kecamatan9 = isipendudukkecamatan[index = 8].kecamatan;
              String kecamatan10 = isipendudukkecamatan[index = 9].kecamatan;
              String kecamatan11 = isipendudukkecamatan[index = 10].kecamatan;
              String kecamatan12 = isipendudukkecamatan[index = 11].kecamatan;
              String kecamatan13 = isipendudukkecamatan[index = 12].kecamatan;
              String kecamatan14 = isipendudukkecamatan[index = 13].kecamatan;
              String kecamatan15 = isipendudukkecamatan[index = 14].kecamatan;
              String kecamatan16 = isipendudukkecamatan[index = 15].kecamatan;
              String kecamatan17 = isipendudukkecamatan[index = 16].kecamatan;
              String kecamatan18 = isipendudukkecamatan[index = 17].kecamatan;
              String kecamatan19 = isipendudukkecamatan[index = 18].kecamatan;
              String kecamatan20 = isipendudukkecamatan[index = 19].kecamatan;
              String kecamatan21 = isipendudukkecamatan[index = 20].kecamatan;
              String kecamatan22 = isipendudukkecamatan[index = 21].kecamatan;
              String kecamatan23 = isipendudukkecamatan[index = 22].kecamatan;
              String kecamatan24 = isipendudukkecamatan[index = 23].kecamatan;

              double pddk_1 =
                  (double.parse(isipendudukkecamatan[index = 0].lk) +
                          double.parse(isipendudukkecamatan[index = 0].pr)) /
                      1;
              double pddk_2 =
                  (double.parse(isipendudukkecamatan[index = 1].lk) +
                          double.parse(isipendudukkecamatan[index = 1].pr)) /
                      1;
              double pddk_3 =
                  (double.parse(isipendudukkecamatan[index = 2].lk) +
                          double.parse(isipendudukkecamatan[index = 2].pr)) /
                      1;
              double pddk_4 =
                  (double.parse(isipendudukkecamatan[index = 3].lk) +
                          double.parse(isipendudukkecamatan[index = 3].pr)) /
                      1;
              double pddk_5 =
                  (double.parse(isipendudukkecamatan[index = 4].lk) +
                          double.parse(isipendudukkecamatan[index = 4].pr)) /
                      1;
              double pddk_6 =
                  (double.parse(isipendudukkecamatan[index = 5].lk) +
                          double.parse(isipendudukkecamatan[index = 5].pr)) /
                      1;
              double pddk_7 =
                  (double.parse(isipendudukkecamatan[index = 6].lk) +
                          double.parse(isipendudukkecamatan[index = 6].pr)) /
                      1;
              double pddk_8 =
                  (double.parse(isipendudukkecamatan[index = 7].lk) +
                          double.parse(isipendudukkecamatan[index = 7].pr)) /
                      1;
              double pddk_9 =
                  (double.parse(isipendudukkecamatan[index = 8].lk) +
                          double.parse(isipendudukkecamatan[index = 8].pr)) /
                      1;
              double pddk_10 =
                  (double.parse(isipendudukkecamatan[index = 9].lk) +
                          double.parse(isipendudukkecamatan[index = 9].pr)) /
                      1;
              double pddk_11 =
                  (double.parse(isipendudukkecamatan[index = 10].lk) +
                          double.parse(isipendudukkecamatan[index = 10].pr)) /
                      1;
              double pddk_12 =
                  (double.parse(isipendudukkecamatan[index = 11].lk) +
                          double.parse(isipendudukkecamatan[index = 11].pr)) /
                      1;
              double pddk_13 =
                  (double.parse(isipendudukkecamatan[index = 12].lk) +
                          double.parse(isipendudukkecamatan[index = 12].pr)) /
                      1;
              double pddk_14 =
                  (double.parse(isipendudukkecamatan[index = 13].lk) +
                          double.parse(isipendudukkecamatan[index = 13].pr)) /
                      1;
              double pddk_15 =
                  (double.parse(isipendudukkecamatan[index = 14].lk) +
                          double.parse(isipendudukkecamatan[index = 14].pr)) /
                      1;
              double pddk_16 =
                  (double.parse(isipendudukkecamatan[index = 15].lk) +
                          double.parse(isipendudukkecamatan[index = 15].pr)) /
                      1;
              double pddk_17 =
                  (double.parse(isipendudukkecamatan[index = 16].lk) +
                          double.parse(isipendudukkecamatan[index = 16].pr)) /
                      1;
              double pddk_18 =
                  (double.parse(isipendudukkecamatan[index = 17].lk) +
                          double.parse(isipendudukkecamatan[index = 17].pr)) /
                      1;
              double pddk_19 =
                  (double.parse(isipendudukkecamatan[index = 18].lk) +
                          double.parse(isipendudukkecamatan[index = 18].pr)) /
                      1;
              double pddk_20 =
                  (double.parse(isipendudukkecamatan[index = 19].lk) +
                          double.parse(isipendudukkecamatan[index = 19].pr)) /
                      1;
              double pddk_21 =
                  (double.parse(isipendudukkecamatan[index = 20].lk) +
                          double.parse(isipendudukkecamatan[index = 20].pr)) /
                      1;
              double pddk_22 =
                  (double.parse(isipendudukkecamatan[index = 21].lk) +
                          double.parse(isipendudukkecamatan[index = 21].pr)) /
                      1;
              double pddk_23 =
                  (double.parse(isipendudukkecamatan[index = 22].lk) +
                          double.parse(isipendudukkecamatan[index = 22].pr)) /
                      1;
              double pddk_24 =
                  (double.parse(isipendudukkecamatan[index = 23].lk) +
                          double.parse(isipendudukkecamatan[index = 23].pr)) /
                      1;

              toString();
              data = [
                _ChartData(
                    kecamatan1, pddk_1, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan2, pddk_2, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan3, pddk_3, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan4, pddk_4, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan5, pddk_5, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan6, pddk_6, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan7, pddk_7, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan8, pddk_8, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(
                    kecamatan9, pddk_9, const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan10, pddk_10,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan11, pddk_11,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan12, pddk_12,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan13, pddk_13,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan14, pddk_14,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan15, pddk_15,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan16, pddk_16,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan17, pddk_17,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan18, pddk_18,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan19, pddk_19,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan20, pddk_20,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan21, pddk_21,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan22, pddk_22,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan23, pddk_23,
                    const Color.fromARGB(255, 9, 131, 39)),
                _ChartData(kecamatan24, pddk_24,
                    const Color.fromARGB(255, 9, 131, 39)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Penduduk Kabupaten Cilacap Menurut Kecamatan Tahun $th1 (Proyeksi Penduduk)',
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
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: 0,
                        maximum: 210000,
                        interval: 50000),
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
                        name: 'Jumlah Penduduk (Jiwa)',
                        color: const Color.fromARGB(255, 9, 131, 39),
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
