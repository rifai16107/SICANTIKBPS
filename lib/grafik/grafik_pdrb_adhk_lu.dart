// ignore_for_file: camel_case_types, library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_pdrb_adhk_mlu.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class grafikPdrbAdhk extends StatefulWidget {
  const grafikPdrbAdhk({Key? key}) : super(key: key);

  @override
  _grafikPdrbAdhkState createState() => _grafikPdrbAdhkState();
}

class _grafikPdrbAdhkState extends State<grafikPdrbAdhk> {
  RepositoryPdrbAdhkMLU repositorypdrb = RepositoryPdrbAdhkMLU();

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
      future: repositorypdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 =
                  isipdrb[index = 4].created_at[0] +
                  isipdrb[index = 4].created_at[1] +
                  isipdrb[index = 4].created_at[2] +
                  isipdrb[index = 4].created_at[3];
              String th2 =
                  isipdrb[index = 3].created_at[0] +
                  isipdrb[index = 3].created_at[1] +
                  isipdrb[index = 3].created_at[2] +
                  isipdrb[index = 3].created_at[3];
              String th3 =
                  isipdrb[index = 2].created_at[0] +
                  isipdrb[index = 2].created_at[1] +
                  isipdrb[index = 2].created_at[2] +
                  isipdrb[index = 2].created_at[3];
              String th4 =
                  isipdrb[index = 1].created_at[0] +
                  isipdrb[index = 1].created_at[1] +
                  isipdrb[index = 1].created_at[2] +
                  isipdrb[index = 1].created_at[3];
              String th5 =
                  isipdrb[index = 0].created_at[0] +
                  isipdrb[index = 0].created_at[1] +
                  isipdrb[index = 0].created_at[2] +
                  isipdrb[index = 0].created_at[3];

              double total1 = double.parse(isipdrb[index = 4].total);
              double total2 = double.parse(isipdrb[index = 3].total);
              double total3 = double.parse(isipdrb[index = 2].total);
              double total4 = double.parse(isipdrb[index = 1].total);
              double total5 = double.parse(isipdrb[index = 0].total);

              double totalnonmigas1 = double.parse(isipdrb[index = 9].total);
              double totalnonmigas2 = double.parse(isipdrb[index = 8].total);
              double totalnonmigas3 = double.parse(isipdrb[index = 7].total);
              double totalnonmigas4 = double.parse(isipdrb[index = 6].total);
              double totalnonmigas5 = double.parse(isipdrb[index = 5].total);

              toString();

              data = [
                _ChartData(th1, total1, totalnonmigas1),
                _ChartData(th2, total2, totalnonmigas2),
                _ChartData(th3, total3, totalnonmigas3),
                _ChartData(th4, total4, totalnonmigas4),
                _ChartData(th5, total5, totalnonmigas5),
              ];
              tooltip = TooltipBehavior(enable: true);
              return SizedBox(
                height: screenHeight * 0.95,
                width: screenWidth,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text:
                        'PDRB Kabupaten Cilacap ADHK Menurut Lapangan Usaha, (Trilyun Rupiah)',
                    // Aligns the chart title to left
                    alignment: ChartAlignment.center,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                  primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  legend: Legend(
                    // Visibility of legend
                    isVisible: true,
                    textStyle: const TextStyle(fontSize: 11),
                    toggleSeriesVisibility: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                  ),
                  primaryYAxis: NumericAxis(
                    majorGridLines: const MajorGridLines(width: 1),
                    minimum: 0,
                    maximum: 150,
                    interval: 50,
                  ),
                  tooltipBehavior: tooltip,
                  series: <CartesianSeries>[
                    LineSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      markerSettings: const MarkerSettings(
                        isVisible: true,
                        shape: DataMarkerType.circle,
                      ),
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 11),
                      ),
                      name: 'Dengan Migas (Trilyun Rupiah)',
                      width: 3,
                      color: const Color.fromARGB(255, 40, 224, 40),
                    ),
                    LineSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y1,
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      markerSettings: const MarkerSettings(
                        isVisible: true,
                        shape: DataMarkerType.circle,
                      ),
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 11),
                      ),
                      name: 'Tanpa Migas (Trilyun Rupiah)',
                      width: 3,
                      color: const Color.fromARGB(255, 241, 31, 31),
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
  _ChartData(this.x, this.y, this.y1);

  final String x;
  final double y;
  final double y1;
}
