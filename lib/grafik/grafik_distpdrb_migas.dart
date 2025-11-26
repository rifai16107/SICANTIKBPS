// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_dist_pdrb_adhb.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikDistPdrbMigas extends StatefulWidget {
  const GrafikDistPdrbMigas({Key? key}) : super(key: key);

  @override
  _GrafikDistPdrbMigasState createState() => _GrafikDistPdrbMigasState();
}

class _GrafikDistPdrbMigasState extends State<GrafikDistPdrbMigas> {
  RepositoryDistPdrbAdhb repositorydistpdrb = RepositoryDistPdrbAdhb();
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
      future: repositorydistpdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double pertanian = double.parse(isipdrb[index = 0].a);
              double industri = double.parse(isipdrb[index = 0].c);
              double perdagangan = double.parse(isipdrb[index = 0].g);
              double konstruksi = double.parse(isipdrb[index = 0].f);
              double lainnya =
                  100.00 - (pertanian + industri + perdagangan + konstruksi);
              lainnya = double.parse(lainnya.toStringAsFixed(2));

              String th1 =
                  (isipdrb[index = 0].created_at[0] +
                          isipdrb[index = 0].created_at[1] +
                          isipdrb[index = 0].created_at[2] +
                          isipdrb[index = 0].created_at[3])
                      .toString();

              data = [
                _ChartData(
                  "A-Pertanian",
                  pertanian,
                  const Color.fromARGB(255, 59, 235, 117),
                ),
                _ChartData(
                  "C-Industri",
                  industri,
                  const Color.fromARGB(255, 8, 62, 212),
                ),
                _ChartData(
                  "G-Perdagangan",
                  perdagangan,
                  const Color.fromARGB(255, 241, 64, 41),
                ),
                _ChartData(
                  "F-Konstruksi",
                  konstruksi,
                  const Color.fromRGBO(255, 189, 57, 1),
                ),
                _ChartData(
                  "Lainnya",
                  lainnya,
                  const Color.fromARGB(255, 105, 58, 5),
                ),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCircularChart(
                  title: ChartTitle(
                    text:
                        'Distribusi PDRB ADHB Kabupaten Cilacap Menurut Lapangan Usaha Tahun $th1, -Dengan Migas (Persen)',
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
                  tooltipBehavior: tooltip,
                  legend: Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                    // Legend title
                    title: LegendTitle(
                      text: 'Lapangan Usaha',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 12, 12, 12),
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
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
                          type: ConnectorType.curve,
                        ),
                      ),
                      //explode: true,
                      //explodeIndex: 1
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
  _ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
