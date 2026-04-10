import 'package:bps_cilacap/restAPI/repository_nilai_pdrb.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:bps_cilacap/format_angka.dart';

class TabelNilaiPdrb extends StatefulWidget {
  const TabelNilaiPdrb({super.key});

  @override
  State<TabelNilaiPdrb> createState() => _TabelNilaiPdrbState();
}

RepositoryNilaiPdrb repositorynilaipdrb = RepositoryNilaiPdrb();

class _TabelNilaiPdrbState extends State<TabelNilaiPdrb> {
  static const TextStyle myTextStyle = TextStyle(
    fontSize: 12.5, // Set your desired font size here
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
  late List<_ChartData> data;
  late TooltipBehavior tooltip;
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorynilaipdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String th1 = isipdrb[index = 0].tahun;
                String th2 = isipdrb[index = 1].tahun;
                String th3 = isipdrb[index = 2].tahun;
                String th4 = isipdrb[index = 3].tahun;
                String th5 = isipdrb[index = 4].tahun;

                double nilaiadhbmigas1 = double.parse(
                  isipdrb[index = 0].nilai_adhb_migas,
                );
                double nilaiadhbmigas2 = double.parse(
                  isipdrb[index = 1].nilai_adhb_migas,
                );
                double nilaiadhbmigas3 = double.parse(
                  isipdrb[index = 2].nilai_adhb_migas,
                );
                double nilaiadhbmigas4 = double.parse(
                  isipdrb[index = 3].nilai_adhb_migas,
                );
                double nilaiadhbmigas5 = double.parse(
                  isipdrb[index = 4].nilai_adhb_migas,
                );

                double nilaiadhkmigas1 = double.parse(
                  isipdrb[index = 0].nilai_adhk_migas,
                );
                double nilaiadhkmigas2 = double.parse(
                  isipdrb[index = 1].nilai_adhk_migas,
                );
                double nilaiadhkmigas3 = double.parse(
                  isipdrb[index = 2].nilai_adhk_migas,
                );
                double nilaiadhkmigas4 = double.parse(
                  isipdrb[index = 3].nilai_adhk_migas,
                );
                double nilaiadhkmigas5 = double.parse(
                  isipdrb[index = 4].nilai_adhk_migas,
                );
              toString();
                data = [
                  _ChartData(th1, nilaiadhbmigas1/1000, nilaiadhkmigas1/1000),
                  _ChartData(th2, nilaiadhbmigas2/1000, nilaiadhkmigas2/1000),
                  _ChartData(th3, nilaiadhbmigas3/1000, nilaiadhkmigas3/1000),
                  _ChartData(th4, nilaiadhbmigas4/1000, nilaiadhkmigas4/1000),
                  _ChartData(th5, nilaiadhbmigas5/1000, nilaiadhkmigas5/1000),
                ];
                tooltip = TooltipBehavior(enable: true);
              
              return Container(
                  padding: const EdgeInsets.all(2),//padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 2,
                        ),
                        child: Text(
                          "Nilai PDRB Kabupaten Cilacap Atas Dasar Harga Berlaku (ADHB) dan Atas Dasar Harga Konstan (ADHK), (Milyar Rp), $th1-$th5",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                     SizedBox(
                      child: Column(
                        children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Container(
                              height: screenHeight * 0.05,
                              color: Colors.orange,
                              child: const Center(
                                child: Text(
                                  "Tahun",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Container(
                              height: screenHeight * 0.05,
                              color: Colors.orange,
                              child: const Center(
                                child: Text(
                                  'PDRB ADHB',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Container(
                              height: screenHeight * 0.05,
                              color: Colors.orange,
                              child: const Center(
                                child: Text(
                                  'PDRB ADHK',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          ],
                      ),
                      // <-- 2020
                      Container(
                        color: Colors.transparent,
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.045,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                th1,
                                textAlign: TextAlign.center,
                                style: myTextStyle,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhbmigas1, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhkmigas1, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      // <-- 2021
                      Container(
                        color: Colors.grey.shade200,
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.045,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                th2,
                                textAlign: TextAlign.center,
                                style: myTextStyle,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhbmigas2, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                             Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhkmigas2, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      // <-- 2022
                      Container(
                        color: Colors.transparent,
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.045,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                th3,
                                textAlign: TextAlign.center,
                                style: myTextStyle,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhbmigas3, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                             Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhkmigas3, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // <-- 2023
                      Container(
                        color: Colors.grey.shade200,
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.045,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                th4,
                                textAlign: TextAlign.center,
                                style: myTextStyle,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhbmigas4, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                             Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhkmigas4, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // <-- 2024
                      Container(
                        color: Colors.transparent,
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.045,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                th5,
                                textAlign: TextAlign.center,
                                style: myTextStyle,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhbmigas5, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                             Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                Format.convertTo(nilaiadhkmigas5, 2),
                                textAlign: TextAlign.right,
                                style: myTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(235, 71, 65, 65),
                        thickness: 1,
                      ),
                      Container(
                       height: screenHeight * 0.010,
                      ),
                        ],
                       ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.45,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Nilai PDRB ADHB dan ADHK Kabupaten Cilacap\n' 
                                '(Milyar Rp), $th1-$th5',
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
                          primaryXAxis: CategoryAxis(),
                          legend: Legend(
                            // Visibility of legend
                            overflowMode: LegendItemOverflowMode.wrap,
                            textStyle: const TextStyle(fontSize: 11),
                            isVisible: true,
                            position: LegendPosition.bottom,
                          ),
                          primaryYAxis: NumericAxis(
                            title: AxisTitle(
                      text: '',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                    axisLabelFormatter: (AxisLabelRenderDetails args) {
                      if (args.value < 0) {
                        return ChartAxisLabel(
                          args.value.abs().toString().replaceAll(
                            RegExp(r'[-.]0'),
                            'K',
                          ),
                          args.textStyle,
                        );
                      }
                      return ChartAxisLabel('${args.text}K', args.textStyle);
                    },
                    //numberFormat: NumberFormat.decimalPattern('en_EN'),
                    numberFormat: NumberFormat.decimalPattern(),
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 200,
                            interval: 50,
                          ),
                          tooltipBehavior: tooltip,
                          series: <CartesianSeries>[
                            LineSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y,
                              markerSettings: const MarkerSettings(
                                isVisible: true,
                                shape: DataMarkerType.diamond,
                              ),
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: true,
                                labelAlignment: ChartDataLabelAlignment.top,
                                textStyle: TextStyle(fontSize: 9),
                              ),
                              name: 'PDRB ADHB',
                              color: const Color.fromARGB(255, 240, 164, 50),
                            ),
                            LineSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y1,
                              markerSettings: const MarkerSettings(
                                isVisible: true,
                                shape: DataMarkerType.circle,
                              ),
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: true,
                                labelAlignment: ChartDataLabelAlignment.bottom,
                                textStyle: TextStyle(fontSize: 9),
                              ),
                              name: 'PDRB ADHK',
                              color: const Color.fromARGB(255, 170, 240, 80),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                      child: const Text(
                        " Sentuh legenda untuk mengaktifkan/non aktifkan series",
                        style: TextStyle(
                          fontSize: 9, fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const Divider(indent: 5, color: Colors.transparent),  
                    ],
                  ),
                  
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('error');
          }
          return const Center(child: CircularProgressIndicator(strokeWidth: 1));
        },
      ),
    );
  }
}
class _ChartData {
  _ChartData(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}