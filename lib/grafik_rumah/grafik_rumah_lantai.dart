// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_perumahan_lantai.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikRumahLantai extends StatefulWidget {
  const GrafikRumahLantai({Key? key}) : super(key: key);

  @override
  _GrafikRumahLantaiState createState() => _GrafikRumahLantaiState();
}

class _GrafikRumahLantaiState extends State<GrafikRumahLantai> {
  RepositoryLantai repositorylantai = RepositoryLantai();
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
      future: repositorylantai.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isilantai = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double persentase_19 =
                  double.parse(isilantai[index = 18].persentase);
              double persentase_20 =
                  double.parse(isilantai[index = 19].persentase);
              double persentase_21 =
                  double.parse(isilantai[index = 20].persentase);
              double persentase_22 =
                  double.parse(isilantai[index = 21].persentase);
              double persentase_23 =
                  double.parse(isilantai[index = 22].persentase);
              double persentase_24 =
                  double.parse(isilantai[index = 23].persentase);
              double persentase_25 =
                  double.parse(isilantai[index = 24].persentase);
              double persentase_26 =
                  double.parse(isilantai[index = 25].persentase);

              String th = (isilantai[index = 18].tahun);
              data = [
                _ChartData("Marmer/Granit", persentase_19,
                    const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData("Keramik", persentase_20,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData("Parket/Vinil/Karpet", persentase_21,
                    const Color.fromARGB(255, 241, 64, 41)),
                _ChartData("Kayu/Papan", persentase_22,
                    const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData("Semen/Bata Merah", persentase_23,
                    const Color.fromARGB(255, 105, 58, 5)),
                _ChartData("Bambu", persentase_24,
                    const Color.fromARGB(255, 222, 243, 30)),
                _ChartData("Tanah", persentase_25,
                    const Color.fromARGB(255, 4, 117, 10)),
                _ChartData("Lainnya", persentase_26,
                    const Color.fromARGB(255, 58, 55, 16)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.95,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Rumah tangga Menurut Jenis Lantai Bangunan Tempat Tinggal yang Terluas Tahun $th',
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
                              text: 'Jenis Lantai Terluas',
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
                          radius: '72%',
                          innerRadius: '30%',
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
