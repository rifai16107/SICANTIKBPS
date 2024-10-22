// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_perumahan_atap.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikRumahAtap extends StatefulWidget {
  const GrafikRumahAtap({Key? key}) : super(key: key);

  @override
  _GrafikRumahAtapState createState() => _GrafikRumahAtapState();
}

class _GrafikRumahAtapState extends State<GrafikRumahAtap> {
  RepositoryAtap repositoryatap = RepositoryAtap();

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
      future: repositoryatap.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiatap = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double persentase_17 =
                  double.parse(isiatap[index = 16].persentase);
              double persentase_18 =
                  double.parse(isiatap[index = 17].persentase);
              double persentase_19 =
                  double.parse(isiatap[index = 18].persentase);
              double persentase_20 =
                  double.parse(isiatap[index = 19].persentase);
              double persentase_21 =
                  double.parse(isiatap[index = 20].persentase);
              double persentase_22 =
                  double.parse(isiatap[index = 21].persentase);
              double persentase_23 =
                  double.parse(isiatap[index = 22].persentase);

              String th = (isiatap[index = 16].tahun);
              data = [
                _ChartData(
                    "Beton", persentase_17, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData("Genteng", persentase_18,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData("Seng", persentase_19,
                    const Color.fromARGB(255, 241, 64, 41)),
                _ChartData("Asbes", persentase_20,
                    const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData("Sirap/Kayu/Bambu", persentase_21,
                    const Color.fromARGB(255, 105, 58, 5)),
                _ChartData("Jerami/Ijuk/Daun/Rumbia", persentase_22,
                    const Color.fromARGB(255, 222, 243, 30)),
                _ChartData("Lainnya", persentase_23,
                    const Color.fromARGB(255, 4, 117, 10)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.95,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Rumah tangga Menurut Jenis Atap Bangunan Tempat Tinggal yang Terluas Tahun $th',
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
                              text: 'Jenis Atap Terluas',
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
