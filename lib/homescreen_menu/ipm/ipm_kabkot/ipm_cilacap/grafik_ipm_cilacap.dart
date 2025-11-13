// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikIpm extends StatefulWidget {
  const GrafikIpm({Key? key}) : super(key: key);

  @override
  _GrafikIpmState createState() => _GrafikIpmState();
}

class _GrafikIpmState extends State<GrafikIpm> {
  RepositoryIpm repositoryipm = RepositoryIpm();
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
      future: repositoryipm.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipm = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double ipm1 = double.parse(isiipm[index = 15].ipm);
              double ipm2 = double.parse(isiipm[index = 16].ipm);
              double ipm3 = double.parse(isiipm[index = 17].ipm);
              double ipm4 = double.parse(isiipm[index = 18].ipm);
              double ipm5 = double.parse(isiipm[index = 19].ipm);

              double ipmlf1 = double.parse(isiipm[index = 15].ipm_lfsp2020);
              double ipmlf2 = double.parse(isiipm[index = 16].ipm_lfsp2020);
              double ipmlf3 = double.parse(isiipm[index = 17].ipm_lfsp2020);
              double ipmlf4 = double.parse(isiipm[index = 18].ipm_lfsp2020);
              double ipmlf5 = double.parse(isiipm[index = 19].ipm_lfsp2020);

              String tahun5 = isiipm[index = 19].tahun;
              String tahun4 = isiipm[index = 18].tahun;
              String tahun3 = isiipm[index = 17].tahun;
              String tahun2 = isiipm[index = 16].tahun;
              String tahun1 = isiipm[index = 15].tahun;
              toString();
              data = [
                _ChartData(tahun1, ipm1, ipmlf1),
                _ChartData(tahun2, ipm2, ipmlf2),
                _ChartData(tahun3, ipm3, ipmlf3),
                _ChartData(tahun4, ipm4, ipmlf4),
                _ChartData(tahun5, ipm5, ipmlf5),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Indek Pembangunan Manusia (IPM) Kabupaten CIlacap',
                        // Aligns the chart title to left
                        alignment: ChartAlignment.center,
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 10, 10, 10),
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    primaryXAxis: CategoryAxis(),
                    legend: Legend(
                        // Visibility of legend
                        overflowMode: LegendItemOverflowMode.wrap,
                        textStyle: const TextStyle(
                          fontSize: 11,
                        ),
                        isVisible: true,
                        position: LegendPosition.bottom),
                    primaryYAxis: NumericAxis(
                        majorGridLines: const MajorGridLines(width: 0),
                        minimum: 0,
                        maximum: 100,
                        interval: 25),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      ColumnSeries<_ChartData, String>(
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
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'Nilai IPM (UHH SP2010)',
                        color: const Color.fromARGB(255, 240, 164, 50),
                      ),
                      ColumnSeries<_ChartData, String>(
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
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'Nilai IPM (UHH LFSP2020)',
                        color: const Color.fromARGB(255, 170, 240, 80),
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
  _ChartData(this.x, this.y, this.y1);

  final String x;
  final double? y;
  final double? y1;
}
