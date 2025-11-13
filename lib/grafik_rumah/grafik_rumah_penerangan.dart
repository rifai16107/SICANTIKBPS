// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_perumahan_penerangan.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikRumahPenerangan extends StatefulWidget {
  const GrafikRumahPenerangan({Key? key}) : super(key: key);

  @override
  _GrafikRumahPeneranganState createState() => _GrafikRumahPeneranganState();
}

class _GrafikRumahPeneranganState extends State<GrafikRumahPenerangan> {
  RepositoryPenerangan repositorypenerangan = RepositoryPenerangan();
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
      future: repositorypenerangan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenerangan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double persentase_9 =
                  double.parse(isipenerangan[index = 8].persentase);
              double persentase_10 =
                  double.parse(isipenerangan[index = 9].persentase);
              double persentase_11 =
                  double.parse(isipenerangan[index = 10].persentase);

              String th = (isipenerangan[index = 8].tahun);

              data = [
                _ChartData("Listrik PLN", persentase_9,
                    const Color.fromARGB(255, 69, 220, 240)),
                _ChartData("Listrik Non PLN", persentase_10,
                    const Color.fromARGB(255, 236, 197, 70)),
                _ChartData("Non Listrik", persentase_11,
                    const Color.fromARGB(255, 4, 109, 18)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.95,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Rumah Tangga Menurut Sumber Penerangan Utama Bangunan Tempat Tinggal di Kabupaten Cilacap Tahun $th',
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
                              text: 'Sumber Penerangan Utama',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 12, 12, 12),
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900))),
                      series: <CircularSeries>[
                        DoughnutSeries<_ChartData, String>(
                          dataSource: data,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          pointColorMapper: (_ChartData data, _) => data.color,
                          radius: '70%',
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
