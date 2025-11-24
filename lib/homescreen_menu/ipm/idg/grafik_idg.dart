// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_idg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikIdg extends StatefulWidget {
  const GrafikIdg({Key? key}) : super(key: key);

  @override
  _GrafikIdgState createState() => _GrafikIdgState();
}

class _GrafikIdgState extends State<GrafikIdg> {
  RepositoryIdg repositoryipm = RepositoryIdg();
  int key = 0;
  late List<_ChartData> data;
  late TooltipBehavior tooltip;
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return FutureBuilder(
      future: repositoryipm.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiidg = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun1 = isiidg[index = 0].tahun;
              String tahun2 = isiidg[index = 1].tahun;
              String tahun3 = isiidg[index = 2].tahun;
              String tahun4 = isiidg[index = 3].tahun;
              String tahun5 = isiidg[index = 4].tahun;

              double pendapatan1 = double.parse(isiidg[index = 0].pendapatan);
              double pendapatan2 = double.parse(isiidg[index = 1].pendapatan);
              double pendapatan3 = double.parse(isiidg[index = 2].pendapatan);
              double pendapatan4 = double.parse(isiidg[index = 3].pendapatan);
              double pendapatan5 = double.parse(isiidg[index = 4].pendapatan);

              double profesional1 = double.parse(isiidg[index = 0].profesional);
              double profesional2 = double.parse(isiidg[index = 1].profesional);
              double profesional3 = double.parse(isiidg[index = 2].profesional);
              double profesional4 = double.parse(isiidg[index = 3].profesional);
              double profesional5 = double.parse(isiidg[index = 4].profesional);

              double parlemen1 = double.parse(isiidg[index = 0].parlemen);
              double parlemen2 = double.parse(isiidg[index = 1].parlemen);
              double parlemen3 = double.parse(isiidg[index = 2].parlemen);
              double parlemen4 = double.parse(isiidg[index = 3].parlemen);
              double parlemen5 = double.parse(isiidg[index = 4].parlemen);

              double idg1 = double.parse(isiidg[index = 0].idg);
              double idg2 = double.parse(isiidg[index = 1].idg);
              double idg3 = double.parse(isiidg[index = 2].idg);
              double idg4 = double.parse(isiidg[index = 3].idg);
              double idg5 = double.parse(isiidg[index = 4].idg);

              toString();
              data = [
                _ChartData(tahun1, idg1, pendapatan1, profesional1, parlemen1),
                _ChartData(tahun2, idg2, pendapatan2, profesional2, parlemen2),
                _ChartData(tahun3, idg3, pendapatan3, profesional3, parlemen3),
                _ChartData(tahun4, idg4, pendapatan4, profesional4, parlemen4),
                _ChartData(tahun5, idg5, pendapatan5, profesional5, parlemen5),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 1.1,
                width: screenWidth,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text:
                        'Indek Pemberdayaan Gender (IDG) dan Komponen Pembentuknya di Kabupaten Cilacap',
                    // Aligns the chart title to left
                    alignment: ChartAlignment.center,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  primaryXAxis: CategoryAxis(),
                  legend: Legend(
                    // Visibility of legend
                    overflowMode: LegendItemOverflowMode.wrap,
                    textStyle: const TextStyle(fontSize: 11),
                    isVisible: true,
                    position: LegendPosition.bottom,
                  ),
                  primaryYAxis: NumericAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    minimum: 0,
                    maximum: 100,
                    interval: 25,
                  ),
                  tooltipBehavior: tooltip,
                  series: <CartesianSeries>[
                    BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 11),
                      ),
                      name: 'Nilai Indeks Pemberdayaan Gender (IDG)',
                      color: const Color.fromARGB(255, 22, 18, 238),
                    ),
                    BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y1,
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 11),
                      ),
                      name: 'Sumbangan Pendapatan Perempuan (persen)',
                      color: const Color.fromARGB(255, 236, 248, 63),
                    ),
                    BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y2,
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 11),
                      ),
                      name: 'Perempuan Sebagai Tenaga Profesional (persen)',
                      color: const Color.fromARGB(255, 243, 65, 11),
                    ),
                    BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y3,
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 11),
                      ),
                      name: 'Keterlibatan Perempuan di Parlemen (persen)',
                      color: const Color.fromARGB(255, 19, 209, 35),
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Database Error");
        }
        return const Center(child: CircularProgressIndicator(strokeWidth: 1));
      },
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.y1, this.y2, this.y3);

  final String x;
  final double? y;
  final double? y1;
  final double? y2;
  final double? y3;
}
