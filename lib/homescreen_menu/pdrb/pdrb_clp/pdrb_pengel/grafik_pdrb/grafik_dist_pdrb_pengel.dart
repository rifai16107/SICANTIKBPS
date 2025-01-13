// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_pdrb_pengeldislain.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikDistPdrbpengel extends StatefulWidget {
  const GrafikDistPdrbpengel({Key? key}) : super(key: key);

  @override
  _GrafikDistPdrbpengelState createState() => _GrafikDistPdrbpengelState();
}

class _GrafikDistPdrbpengelState extends State<GrafikDistPdrbpengel> {
  RepositoryPdrbPengelDislain repositorypdrb = RepositoryPdrbPengelDislain();
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
      future: repositorypdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun1 = isipdrb[index = 0].tahun;

              // Distribusi Komponen pengeluaran PDRB (dihitung dari PDRB ADHB) 2023
              double konsRutaAdhb = double.parse(isipdrb[index = 0].kons_ruta);
              double konsLnprtAdhb =
                  double.parse(isipdrb[index = 0].kons_lnprt);
              double konsPemAdhb = double.parse(isipdrb[index = 0].kons_pem);
              double pmtbAdhb = double.parse(isipdrb[index = 0].pmtb);
              double inventoriAdhb = double.parse(isipdrb[index = 0].inventori);
              double eksporAdhb = double.parse(isipdrb[index = 0].ekspor);

              toString();
              data = [
                _ChartData('Konsumsi Rumahtangga', konsRutaAdhb,
                    const Color.fromARGB(255, 59, 235, 117)),
                _ChartData('Konsumsi LNPRT', konsLnprtAdhb,
                    const Color.fromARGB(8, 45, 58, 245)),
                _ChartData('Konsumsi Pemerintah', konsPemAdhb,
                    const Color.fromARGB(255, 207, 28, 28)),
                _ChartData(
                    'PMTB', pmtbAdhb, const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData('Perubahan Inventori', inventoriAdhb,
                    const Color.fromARGB(255, 228, 86, 233)),
                _ChartData('Net Ekspor', eksporAdhb,
                    const Color.fromARGB(255, 105, 58, 5)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                  height: screenHeight * 0.95,
                  width: screenWidth,
                  child: SfCircularChart(
                      title: ChartTitle(
                          text:
                              'Distribusi PDRB Atas Dasar Harga Berlaku Menurut Komponen Pengeluaran Tahun $tahun1 (persen)',
                          // Aligns the chart title to left
                          alignment: ChartAlignment.center,
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 10, 10, 10),
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          )),
                      tooltipBehavior: tooltip,
                      legend: Legend(
                          isVisible: true,
                          textStyle: const TextStyle(
                            fontSize: 12,
                          ),
                          overflowMode: LegendItemOverflowMode.wrap,
                          position: LegendPosition.bottom,
                          // Legend title
                          title: LegendTitle(
                              text: 'Jenis Komponen Pengeluaran',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 12, 12, 12),
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900))),
                      series: <CircularSeries>[
                        DoughnutSeries<_ChartData, String>(
                          dataSource: data,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          pointColorMapper: (_ChartData data, _) => data.color,
                          innerRadius: '40%',
                          dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.inside,
                              color: Colors.white,
                              //useSeriesColor: true,
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
  final double? y;
  final Color color;
}
