// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_perumahan_masak.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikRumahMasak extends StatefulWidget {
  const GrafikRumahMasak({Key? key}) : super(key: key);

  @override
  _GrafikRumahMasakState createState() => _GrafikRumahMasakState();
}

class _GrafikRumahMasakState extends State<GrafikRumahMasak> {
  RepositoryMasak repositorymasak = RepositoryMasak();
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
      future: repositorymasak.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isimasak = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double persentase_13 =
                  double.parse(isimasak[index = 12].persentase);
              double persentase_14 =
                  double.parse(isimasak[index = 13].persentase);
              double persentase_15 =
                  double.parse(isimasak[index = 14].persentase);
              double persentase_16 =
                  double.parse(isimasak[index = 15].persentase);
              double persentase_17 =
                  double.parse(isimasak[index = 16].persentase);

              String th = (isimasak[index = 12].tahun);

              data = [
                _ChartData("Listrik", persentase_13,
                    const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData("Gas Elpiji/Gas Kota/Biogas", persentase_14,
                    const Color.fromARGB(255, 70, 231, 236)),
                _ChartData("Minyak Tanah/Arang/Briket/Kayu Bakar",
                    persentase_15, const Color.fromARGB(255, 241, 64, 41)),
                _ChartData("Lainnya", persentase_16,
                    const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData("Tidak Memasak", persentase_17,
                    const Color.fromARGB(255, 65, 231, 106)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Persentase Rumah Tangga Menurut Bahan Bakar Utama Untuk Memasak di Kabupaten Cilacap Tahun $th',
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
                          position: LegendPosition.bottom,
                          isVisible: true,
                          //textStyle: const TextStyle(
                          //fontSize: 12,
                          //),
                          overflowMode: LegendItemOverflowMode.wrap,
                          // Legend title
                          title: LegendTitle(
                              text: 'Bahan Bakar Utama Untuk Memasak',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 12, 12, 12),
                                  fontSize: 14,
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
