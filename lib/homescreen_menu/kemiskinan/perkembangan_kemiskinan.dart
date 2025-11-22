// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_kemiskinan.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PerkembanganKemiskinan extends StatefulWidget {
  const PerkembanganKemiskinan({Key? key}) : super(key: key);

  @override
  State<PerkembanganKemiskinan> createState() => _PerkembanganKemiskinanState();
}

RepositoryKemiskinan repositorykemiskinan = RepositoryKemiskinan();

class _PerkembanganKemiskinanState extends State<PerkembanganKemiskinan> {
  late List<_ChartData> data;
  late List<_ChartData1> data1;
  late List<_ChartData2> data2;
  late TooltipBehavior tooltip;
  late TooltipBehavior tooltip1;
  late TooltipBehavior tooltip2;

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
          'PERKEMBANGAN KEMISKINAN',
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
        future: repositorykemiskinan.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isikemiskinan = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String th1 =
                    (isikemiskinan[index = 0].created_at[0] +
                            isikemiskinan[index = 0].created_at[1] +
                            isikemiskinan[index = 0].created_at[2] +
                            isikemiskinan[index = 0].created_at[3])
                        .toString();
                String th2 =
                    (isikemiskinan[index = 1].created_at[0] +
                            isikemiskinan[index = 1].created_at[1] +
                            isikemiskinan[index = 1].created_at[2] +
                            isikemiskinan[index = 1].created_at[3])
                        .toString();
                String th3 =
                    (isikemiskinan[index = 2].created_at[0] +
                            isikemiskinan[index = 2].created_at[1] +
                            isikemiskinan[index = 2].created_at[2] +
                            isikemiskinan[index = 2].created_at[3])
                        .toString();
                String th4 =
                    (isikemiskinan[index = 3].created_at[0] +
                            isikemiskinan[index = 3].created_at[1] +
                            isikemiskinan[index = 3].created_at[2] +
                            isikemiskinan[index = 3].created_at[3])
                        .toString();
                String th5 =
                    (isikemiskinan[index = 4].created_at[0] +
                            isikemiskinan[index = 4].created_at[1] +
                            isikemiskinan[index = 4].created_at[2] +
                            isikemiskinan[index = 4].created_at[3])
                        .toString();

                double jpm1 = double.parse(isikemiskinan[index = 0].pddk_mskn);
                double jpm2 = double.parse(isikemiskinan[index = 1].pddk_mskn);
                double jpm3 = double.parse(isikemiskinan[index = 2].pddk_mskn);
                double jpm4 = double.parse(isikemiskinan[index = 3].pddk_mskn);
                double jpm5 = double.parse(isikemiskinan[index = 4].pddk_mskn);

                double p0_1 = double.parse(isikemiskinan[index = 0].p0);
                double p0_2 = double.parse(isikemiskinan[index = 1].p0);
                double p0_3 = double.parse(isikemiskinan[index = 2].p0);
                double p0_4 = double.parse(isikemiskinan[index = 3].p0);
                double p0_5 = double.parse(isikemiskinan[index = 4].p0);

                double p1_1 = double.parse(isikemiskinan[index = 0].p1);
                double p1_2 = double.parse(isikemiskinan[index = 1].p1);
                double p1_3 = double.parse(isikemiskinan[index = 2].p1);
                double p1_4 = double.parse(isikemiskinan[index = 3].p1);
                double p1_5 = double.parse(isikemiskinan[index = 4].p1);

                double p2_1 = double.parse(isikemiskinan[index = 0].p2);
                double p2_2 = double.parse(isikemiskinan[index = 1].p2);
                double p2_3 = double.parse(isikemiskinan[index = 2].p2);
                double p2_4 = double.parse(isikemiskinan[index = 3].p2);
                double p2_5 = double.parse(isikemiskinan[index = 4].p2);

                double gk1 = double.parse(isikemiskinan[index = 0].gk);
                double gk2 = double.parse(isikemiskinan[index = 1].gk);
                double gk3 = double.parse(isikemiskinan[index = 2].gk);
                double gk4 = double.parse(isikemiskinan[index = 3].gk);
                double gk5 = double.parse(isikemiskinan[index = 4].gk);

                toString();
                data = [
                  _ChartData(th1, gk1, jpm1),
                  _ChartData(th2, gk2, jpm2),
                  _ChartData(th3, gk3, jpm3),
                  _ChartData(th4, gk4, jpm4),
                  _ChartData(th5, gk5, jpm5),
                ];

                data1 = [
                  _ChartData1(th1, p0_1),
                  _ChartData1(th2, p0_2),
                  _ChartData1(th3, p0_3),
                  _ChartData1(th4, p0_4),
                  _ChartData1(th5, p0_5),
                ];

                data2 = [
                  _ChartData2(th1, p1_1, p2_1),
                  _ChartData2(th2, p1_2, p2_2),
                  _ChartData2(th3, p1_3, p2_3),
                  _ChartData2(th4, p1_4, p2_4),
                  _ChartData2(th5, p1_5, p2_5),
                ];
                tooltip = TooltipBehavior(enable: true);
                tooltip1 = TooltipBehavior(enable: true);
                tooltip2 = TooltipBehavior(enable: true);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        child: const Text(
                          "Perkembangan Kemiskinan Di Kabupaten Cilacap",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        //height: screenHeight * 0.68,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: const Text(
                                      "Rincian",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: Text(
                                      th1,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: Text(
                                      th2,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: Text(
                                      th3,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: Text(
                                      th4,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: Text(
                                      th5,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: const Text(
                                      "Jumlah Penduduk Miskin(ribu)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(jpm1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(jpm2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(jpm3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(jpm4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(jpm5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: const Text(
                                      "Persentase Penduduk Miskin (P0)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p0_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p0_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p0_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p0_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p0_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: const Text(
                                      "Indeks Kedalaman Kemiskinan (P1)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p1_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p1_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p1_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p1_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p1_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: const Text(
                                      "Indeks Keparahan Kemiskinan (P2)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p2_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p2_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p2_3, 2),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p2_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(p2_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    child: const Text(
                                      "Garis Kemiskinan (ribu rupiah)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(gk1, 3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(gk2, 3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(gk3, 3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(gk4, 3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      Format.convertTo(gk5, 3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(thickness: 2),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.45,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Garis Kemiskinan (ribu rupiah) dan Jumlah Penduduk Miskin (ribu jiwa) Kabupaten Cilacap, $th1-$th5',
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
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 500,
                            interval: 100,
                          ),
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
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 10),
                              ),
                              name: 'Garis Kemiskinan',
                              color: const Color.fromARGB(255, 240, 164, 50),
                            ),
                            ColumnSeries<_ChartData, String>(
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
                                textStyle: TextStyle(fontSize: 10),
                              ),
                              name: 'Jumlah Penduduk Miskin',
                              color: const Color.fromARGB(255, 170, 240, 80),
                            ),
                          ],
                        ),
                      ),

                      //Grafik P0
                      SizedBox(
                        height: screenHeight * 0.40,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Persentase Penduduk Miskin (P0) Kabupaten Cilacap, $th1-$th5',
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
                            isVisible: false,
                            position: LegendPosition.bottom,
                          ),
                          primaryYAxis: NumericAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 20,
                            interval: 5,
                          ),
                          tooltipBehavior: tooltip1,
                          series: <CartesianSeries>[
                            LineSeries<_ChartData1, String>(
                              dataSource: data1,
                              xValueMapper: (_ChartData1 data1, _) => data1.x,
                              yValueMapper: (_ChartData1 data1, _) => data1.y,
                              markerSettings: const MarkerSettings(
                                isVisible: true,
                                shape: DataMarkerType.diamond,
                              ),
                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 10),
                              ),
                              width: 3,
                              name: 'Persentase Penduduk Miskin',
                              color: const Color.fromARGB(255, 135, 197, 35),
                            ),
                          ],
                        ),
                      ),

                      // Grafik P1, P2
                      SizedBox(
                        height: screenHeight * 0.50,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Indeks Kedalaman Kemiskinan (P1) dan Indeks Keparahan Kemiskinan (P2) Kabupaten Cilacap, $th1-$th5',
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
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 3,
                            interval: 1,
                          ),
                          tooltipBehavior: tooltip2,
                          series: <CartesianSeries>[
                            LineSeries<_ChartData2, String>(
                              dataSource: data2,
                              xValueMapper: (_ChartData2 data2, _) => data2.x,
                              yValueMapper: (_ChartData2 data2, _) => data2.y,
                              markerSettings: const MarkerSettings(
                                isVisible: true,
                                shape: DataMarkerType.diamond,
                              ),
                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: true,
                                labelAlignment: ChartDataLabelAlignment.top,
                                textStyle: TextStyle(fontSize: 10),
                              ),
                              width: 3,
                              name: 'Indeks Kedalaman (P1)',
                              color: const Color.fromARGB(255, 241, 25, 25),
                            ),

                            LineSeries<_ChartData2, String>(
                              dataSource: data2,
                              xValueMapper: (_ChartData2 data2, _) => data2.x,
                              yValueMapper: (_ChartData2 data2, _) => data2.y1,
                              markerSettings: const MarkerSettings(
                                isVisible: true,
                                shape: DataMarkerType.diamond,
                              ),
                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: true,
                                labelAlignment: ChartDataLabelAlignment.top,
                                textStyle: TextStyle(fontSize: 10),
                              ),
                              width: 3,
                              name: 'Indeks Keparahan (P2)',
                              color: const Color.fromARGB(255, 240, 164, 50),
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
            return const Text('Database Error');
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
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

class _ChartData1 {
  _ChartData1(this.x, this.y);
  final String x;
  final double? y;
}

class _ChartData2 {
  _ChartData2(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}
