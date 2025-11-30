// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_perumahan_minum.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikRumahMinum extends StatefulWidget {
  const GrafikRumahMinum({Key? key}) : super(key: key);
  @override
  _GrafikRumahMinumState createState() => _GrafikRumahMinumState();
}

class _GrafikRumahMinumState extends State<GrafikRumahMinum> {
  RepositoryMinum repositoryminum = RepositoryMinum();
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
      future: repositoryminum.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiminum = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double persentase_21 =
                  double.parse(isiminum[index = 20].persentase);
              double persentase_22 =
                  double.parse(isiminum[index = 21].persentase);
              double persentase_23 =
                  double.parse(isiminum[index = 22].persentase);
              double persentase_24 =
                  double.parse(isiminum[index = 23].persentase);
              double persentase_25 =
                  double.parse(isiminum[index = 24].persentase);
              double persentase_26 =
                  double.parse(isiminum[index = 25].persentase);
              double persentase_27 =
                  double.parse(isiminum[index = 26].persentase);
              double persentase_28 =
                  double.parse(isiminum[index = 27].persentase);
              double persentase_29 =
                  double.parse(isiminum[index = 28].persentase);

              String th = (isiminum[index = 20].tahun);

              data = [
                _ChartData("Air Kemasan/Isi Ulang", persentase_21,
                    const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData("Leding", persentase_22,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData("Sumur Bor/Pompa", persentase_23,
                    const Color.fromARGB(255, 241, 64, 41)),
                _ChartData("Sumur Terlindung", persentase_24,
                    const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData("Sumur Tak Terlindung", persentase_25,
                    const Color.fromARGB(255, 105, 58, 5)),
                _ChartData("Mata Air Terlindung/Tak Terlindung", persentase_26,
                    const Color.fromARGB(255, 222, 243, 30)),
                _ChartData("Air Permukaan (Air Sungai, Danau dll)",
                    persentase_27, const Color.fromARGB(255, 4, 117, 10)),
                _ChartData("Air Hujan", persentase_28,
                    const Color.fromRGBO(194, 70, 219, 1)),
                _ChartData("Lainnya", persentase_29,
                    const Color.fromARGB(255, 39, 2, 30)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.95,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Rumah Tangga Menurut Sumber Air Minum Utama Yang Digunakan di Kabupaten Cilacap Tahun $th',
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
                          shouldAlwaysShowScrollbar: true,
                          position: LegendPosition.bottom,
                          //textStyle: const TextStyle(
                          //fontSize: 10,
                          //),
                          // Legend title
                          title: LegendTitle(
                              text: 'Sumber Air Minum Utama',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 12, 12, 12),
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900))),
                      series: <CircularSeries>[
                        DoughnutSeries<_ChartData, String>(
                          dataSource: data,
                          //legendIconType: LegendIconType.circle,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          //dataLabelMapper: (_ChartData data, _) => "${data.y}%",
                          pointColorMapper: (_ChartData data, _) => data.color,
                          innerRadius: '35%',
                          radius: '75%',
                          dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.outside,
                              useSeriesColor: true,
                              connectorLineSettings: ConnectorLineSettings(
                                  // Type of the connector line
                                  type: ConnectorType.curve)),
                          //explode: true,
                          //explodeIndex: 1,
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
