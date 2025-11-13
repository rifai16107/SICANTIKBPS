// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_perumahan_dinding.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikRumahDinding extends StatefulWidget {
  const GrafikRumahDinding({Key? key}) : super(key: key);

  @override
  _GrafikRumahDindingState createState() => _GrafikRumahDindingState();
}

class _GrafikRumahDindingState extends State<GrafikRumahDinding> {
  RepositoryDinding repositorydinding = RepositoryDinding();
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
      future: repositorydinding.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isidinding = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double persentase_13 =
                  double.parse(isidinding[index = 12].persentase);
              double persentase_14 =
                  double.parse(isidinding[index = 13].persentase);
              double persentase_15 =
                  double.parse(isidinding[index = 14].persentase);
              double persentase_16 =
                  double.parse(isidinding[index = 15].persentase);
              double persentase_17 =
                  double.parse(isidinding[index = 16].persentase);

              String th = (isidinding[index = 12].tahun);

              data = [
                _ChartData("Tembok", persentase_13,
                    const Color.fromARGB(255, 240, 74, 32)),
                _ChartData("Plester Anyaman Bambu/Kawat", persentase_14,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData("Kayu/Batang Kayu", persentase_15,
                    const Color.fromARGB(255, 42, 248, 35)),
                _ChartData("Bambu/Anyaman Bambu", persentase_16,
                    const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData("Lainnya", persentase_17,
                    const Color.fromARGB(255, 105, 58, 5)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.95,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Rumah tangga Menurut Jenis Dinding Bangunan Tempat Tinggal yang Terluas Tahun $th',
                          // Aligns the chart title to left
                          alignment: ChartAlignment.center,
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 10, 10, 10),
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )),
                      tooltipBehavior: tooltip,
                      legend: Legend(
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap,
                          position: LegendPosition.bottom,
                          // Legend title
                          title: LegendTitle(
                              text: 'Jenis Dinding Terluas',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 10, 10, 10),
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900))),
                      series: <CircularSeries>[
                        DoughnutSeries<_ChartData, String>(
                          dataSource: data,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          pointColorMapper: (_ChartData data, _) => data.color,
                          radius: '80%',
                          innerRadius: '35%',
                          dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.outside,
                              useSeriesColor: true,
                              connectorLineSettings: ConnectorLineSettings(
                                  // Type of the connector line
                                  type: ConnectorType.curve)),
                          //explode: true,
                          //explodeIndex: 1
                        ),
                      ]));
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
  final double y;
  final Color color;
}
