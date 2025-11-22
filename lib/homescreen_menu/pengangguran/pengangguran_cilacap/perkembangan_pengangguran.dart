// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_tenaga_kerja_tpt.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class PerkembanganPengangguran extends StatefulWidget {
  const PerkembanganPengangguran({super.key});

  @override
  State<PerkembanganPengangguran> createState() =>
      _PerkembanganPengangguranState();
}

class _PerkembanganPengangguranState extends State<PerkembanganPengangguran> {
  final double width = 7;
  RepositoryPengangguran repositorypengangguran = RepositoryPengangguran();
  late List<_ChartData> data;
  late TooltipBehavior tooltip;
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PENGANGGURAN',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
      ),
      body: FutureBuilder(
        future: repositorypengangguran.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipengangguran = snapshot.data as List;

            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String th5 =
                    isipengangguran[index = 4].created_at[0] +
                    isipengangguran[index = 4].created_at[1] +
                    isipengangguran[index = 4].created_at[2] +
                    isipengangguran[index = 4].created_at[3];
                String th4 =
                    isipengangguran[index = 3].created_at[0] +
                    isipengangguran[index = 3].created_at[1] +
                    isipengangguran[index = 3].created_at[2] +
                    isipengangguran[index = 3].created_at[3];
                String th3 =
                    isipengangguran[index = 2].created_at[0] +
                    isipengangguran[index = 2].created_at[1] +
                    isipengangguran[index = 2].created_at[2] +
                    isipengangguran[index = 2].created_at[3];
                String th2 =
                    isipengangguran[index = 1].created_at[0] +
                    isipengangguran[index = 1].created_at[1] +
                    isipengangguran[index = 1].created_at[2] +
                    isipengangguran[index = 1].created_at[3];
                String th1 =
                    isipengangguran[index = 0].created_at[0] +
                    isipengangguran[index = 0].created_at[1] +
                    isipengangguran[index = 0].created_at[2] +
                    isipengangguran[index = 0].created_at[3];

                double Tpak5 = double.parse(isipengangguran[index = 4].tpak);
                double Tpak4 = double.parse(isipengangguran[index = 3].tpak);
                double Tpak3 = double.parse(isipengangguran[index = 2].tpak);
                double Tpak2 = double.parse(isipengangguran[index = 1].tpak);
                double Tpak1 = double.parse(isipengangguran[index = 0].tpak);

                double Tpt5 = double.parse(isipengangguran[index = 4].tpt);
                double Tpt4 = double.parse(isipengangguran[index = 3].tpt);
                double Tpt3 = double.parse(isipengangguran[index = 2].tpt);
                double Tpt2 = double.parse(isipengangguran[index = 1].tpt);
                double Tpt1 = double.parse(isipengangguran[index = 0].tpt);

                toString();
                data = [
                  _ChartData(th1, Tpak1, Tpt1),
                  _ChartData(th2, Tpak2, Tpt2),
                  _ChartData(th3, Tpak3, Tpt3),
                  _ChartData(th4, Tpak4, Tpt4),
                  _ChartData(th5, Tpak5, Tpt5),
                ];
                tooltip = TooltipBehavior(enable: true);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      SizedBox(
                        //height: screenHeight * 0.50,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 2,
                              ),
                              child: Text(
                                "Tingkat Partisipasi Angkatan Kerja (TPAK) dan Tingkat Pengangguran Terbuka (TPT) Kabupaten Cilacap, $th1-$th5",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
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
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "TPAK",
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
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "TPT",
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
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        th1.toString(),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpak1.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpt1.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        th2,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpak2.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpt2.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        th3,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpak3.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpt3.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        th4.toString(),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpak4.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpt4.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        th5.toString(),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpak5.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: Center(
                                      child: Text(
                                        Tpt5.toStringAsFixed(2),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              //height: screenHeight * 0.02,
                              thickness: 2,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.50,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Tingkat Partisipasi Angkatan Kerja (TPAK) dan Tingkat Pengangguran Terbuka (TPT) Kabupaten Cilacap, $th1-$th5',
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
                            //title: AxisTitle(text: 'TAK'),
                            edgeLabelPlacement: EdgeLabelPlacement.shift,
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 100,
                            interval: 20,
                          ),
                          axes: <ChartAxis>[
                            NumericAxis(
                              opposedPosition: true, // Positions on the opposite side
                              labelStyle: TextStyle(color: Color.fromARGB(255, 18, 21, 214),),
                              name: 'secondaryYAxis', // Unique name for the secondary axis
                              //title: AxisTitle(text: 'TPT'),
                              majorGridLines: const MajorGridLines(width: 0),
                                  minimum: 0,
                                  maximum: 12,
                                  interval: 3,
                              // ... other secondary axis properties
                            ),
                          ],
                          tooltipBehavior: tooltip,
                          series: <CartesianSeries>[
                            ColumnSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y,
                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelPosition: ChartDataLabelPosition.inside,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 10),
                              ),
                              name: 'TPAK',
                              color: const Color.fromARGB(255, 240, 164, 50),
                            ),
                            LineSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y1,
                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              markerSettings:
                                const MarkerSettings(
                                  isVisible: true,
                                  shape: DataMarkerType.diamond,
                                ),
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelPosition: ChartDataLabelPosition.outside,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11, color: Color.fromARGB(255, 18, 21, 214), fontWeight: FontWeight.bold),
                              ),
                              width:3,
                              yAxisName: 'secondaryYAxis',
                              name: 'TPT',
                              color: const Color.fromARGB(255, 18, 21, 214),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                      child: const Text(
                        " Sentuh legenda untuk mengaktifkan/non aktifkan series",
                        style: TextStyle(
                          fontSize: 10,
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
            return const Text('Database Error');
          }
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
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
