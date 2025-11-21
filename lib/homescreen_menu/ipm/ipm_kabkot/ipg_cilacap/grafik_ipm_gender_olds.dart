// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikIpmGender extends StatefulWidget {
  const GrafikIpmGender({Key? key}) : super(key: key);

  @override
  _GrafikIpmGenderState createState() => _GrafikIpmGenderState();
}

class _GrafikIpmGenderState extends State<GrafikIpmGender> {
  RepositoryIpm repositoryipm = RepositoryIpm();
  int key = 0;
  late List<_ChartData1> data1;
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
          List isiipm = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double ipg1 = double.parse(isiipm[index = 0].ipg);
              double ipg2 = double.parse(isiipm[index = 1].ipg);
              double ipg3 = double.parse(isiipm[index = 2].ipg);
              double ipg4 = double.parse(isiipm[index = 3].ipg);
              double ipg5 = double.parse(isiipm[index = 4].ipg);

              double ipmlfLk1 = double.parse(isiipm[index = 5].ipm_lfsp2020);
              double ipmlfLk2 = double.parse(isiipm[index = 6].ipm_lfsp2020);
              double ipmlfLk3 = double.parse(isiipm[index = 7].ipm_lfsp2020);
              double ipmlfLk4 = double.parse(isiipm[index = 8].ipm_lfsp2020);
              double ipmlfLk5 = double.parse(isiipm[index = 9].ipm_lfsp2020);

              double ipmlfPr1 = double.parse(isiipm[index = 10].ipm_lfsp2020);
              double ipmlfPr2 = double.parse(isiipm[index = 11].ipm_lfsp2020);
              double ipmlfPr3 = double.parse(isiipm[index = 12].ipm_lfsp2020);
              double ipmlfPr4 = double.parse(isiipm[index = 13].ipm_lfsp2020);
              double ipmlfPr5 = double.parse(isiipm[index = 14].ipm_lfsp2020);

              String tahun5 = isiipm[index = 4].tahun;
              String tahun4 = isiipm[index = 3].tahun;
              String tahun3 = isiipm[index = 2].tahun;
              String tahun2 = isiipm[index = 1].tahun;
              String tahun1 = isiipm[index = 0].tahun;

              toString();
              data1 = [
                _ChartData1(tahun1, ipg1),
                _ChartData1(tahun2, ipg2),
                _ChartData1(tahun3, ipg3),
                _ChartData1(tahun4, ipg4),
                _ChartData1(tahun5, ipg5),
              ];
              data = [
                _ChartData(tahun1, ipmlfLk1, ipmlfPr1),
                _ChartData(tahun2, ipmlfLk2, ipmlfPr2),
                _ChartData(tahun3, ipmlfLk3, ipmlfPr3),
                _ChartData(tahun4, ipmlfLk4, ipmlfPr4),
                _ChartData(tahun5, ipmlfLk5, ipmlfPr5),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.65,
                width: screenWidth,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text:
                        'IPM Menurut Jenis Kelamin dan IPG Kabupaten Cilacap (Tahun $tahun2 s.d. $tahun5 Komponen UHH dihitung dari hasil LFSP2020)',
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
                      yValueMapper: (_ChartData data, _) => data.y1,
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 10),
                      ),
                      name: 'IPM Perempuan',
                      color: const Color.fromARGB(255, 112, 236, 29),
                    ),
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
                        textStyle: TextStyle(fontSize: 10),
                      ),
                      name: 'IPM Laki-laki',
                      color: const Color.fromARGB(255, 240, 164, 50),
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

class _ChartData1 {
  _ChartData1(this.x, this.y);

  final String x;
  final double? y;
}

class _ChartData {
  _ChartData(this.x, this.y, this.y1);

  final String x;
  final double? y;
  final double? y1;
}
