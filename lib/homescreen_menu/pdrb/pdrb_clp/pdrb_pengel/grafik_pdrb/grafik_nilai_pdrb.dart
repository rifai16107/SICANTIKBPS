// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_pdrb_pengel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class GrafikNilaiPdrb extends StatefulWidget {
  const GrafikNilaiPdrb({Key? key}) : super(key: key);

  @override
  _GrafikNilaiPdrbState createState() => _GrafikNilaiPdrbState();
}

class _GrafikNilaiPdrbState extends State<GrafikNilaiPdrb> {
  RepositoryPdrbPengel repositorypdrb = RepositoryPdrbPengel();
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
              String tahun1 = isipdrb[index = 10].tahun;

              // Komponen pengeluaran ADHB 2024
              double konsRutaAdhb = double.parse(isipdrb[index = 10].kons_ruta);
              double konsLnprtAdhb =
                  double.parse(isipdrb[index = 10].kons_lnprt);
              double konsPemAdhb = double.parse(isipdrb[index = 10].kons_pem);
              double pmtbAdhb = double.parse(isipdrb[index = 10].pmtb);
              double inventoriAdhb =
                  double.parse(isipdrb[index = 10].inventori);
              double eksporAdhb = double.parse(isipdrb[index = 10].ekspor);

              // Komponen pengeluaran ADHk 2024
              double konsRutaAdhk = double.parse(isipdrb[index = 15].kons_ruta);
              double konsLnprtAdhk =
                  double.parse(isipdrb[index = 15].kons_lnprt);
              double konsPemAdhk = double.parse(isipdrb[index = 15].kons_pem);
              double pmtbAdhk = double.parse(isipdrb[index = 15].pmtb);
              double inventoriAdhk =
                  double.parse(isipdrb[index = 15].inventori);
              double eksporAdhk = double.parse(isipdrb[index = 15].ekspor);

              toString();
              data = [
                _ChartData('Konsumsi Rumahtangga', konsRutaAdhb, konsRutaAdhk),
                _ChartData('Konsumsi LNPRT', konsLnprtAdhb, konsLnprtAdhk),
                _ChartData('Konsumsi Pemerintah', konsPemAdhb, konsPemAdhk),
                _ChartData('PMTB', pmtbAdhb, pmtbAdhk),
                _ChartData('Perubahan Inventori', inventoriAdhb, inventoriAdhk),
                _ChartData('Net Ekspor', eksporAdhb, eksporAdhk),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Nilai Komponen Pengeluaran Konsumsi PDRB ADHB dan ADHK Tahun $tahun1 (Milyar Rupiah)',
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
                        numberFormat: NumberFormat.decimalPattern('vi_VN'),
                        majorGridLines: const MajorGridLines(width: 0),
                        minimum: 0,
                        maximum: 90000,
                        interval: 20000),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
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
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'PDRB ADHB',
                        color: const Color.fromARGB(255, 22, 18, 238),
                      ),
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
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'PDRB ADHK',
                        color: const Color.fromARGB(255, 236, 248, 63),
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
