// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:bps_cilacap/restAPI/repository_pdrb_pengeldislain.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikLajuPdrbpengel extends StatefulWidget {
  const GrafikLajuPdrbpengel({Key? key}) : super(key: key);

  @override
  _GrafikLajuPdrbpengelState createState() => _GrafikLajuPdrbpengelState();
}

class _GrafikLajuPdrbpengelState extends State<GrafikLajuPdrbpengel> {
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
              // Laju tahun 2019-2023
              String tahun1 = isipdrb[index = 9].tahun;
              String tahun2 = isipdrb[index = 8].tahun;
              String tahun3 = isipdrb[index = 7].tahun;
              String tahun4 = isipdrb[index = 6].tahun;
              String tahun5 = isipdrb[index = 5].tahun;

              //Laju 2019
              double LajukonsRuta_19 =
                  double.parse(isipdrb[index = 9].kons_ruta);
              double LajukonsLnprt_19 =
                  double.parse(isipdrb[index = 9].kons_lnprt);
              double LajukonsPem_19 = double.parse(isipdrb[index = 9].kons_pem);
              double Lajupmtb_19 = double.parse(isipdrb[index = 9].pmtb);
              double Lajuinventori_19 =
                  double.parse(isipdrb[index = 9].inventori);
              double Lajuekspor_19 = double.parse(isipdrb[index = 9].ekspor);
              double LajuPdrb_19 = double.parse(isipdrb[index = 9].total);

              //Laju 2020
              double LajukonsRuta_20 =
                  double.parse(isipdrb[index = 8].kons_ruta);
              double LajukonsLnprt_20 =
                  double.parse(isipdrb[index = 8].kons_lnprt);
              double LajukonsPem_20 = double.parse(isipdrb[index = 8].kons_pem);
              double Lajupmtb_20 = double.parse(isipdrb[index = 8].pmtb);
              double Lajuinventori_20 =
                  double.parse(isipdrb[index = 8].inventori);
              double Lajuekspor_20 = double.parse(isipdrb[index = 8].ekspor);
              double LajuPdrb_20 = double.parse(isipdrb[index = 8].total);

              //Laju 2021
              double LajukonsRuta_21 =
                  double.parse(isipdrb[index = 7].kons_ruta);
              double LajukonsLnprt_21 =
                  double.parse(isipdrb[index = 7].kons_lnprt);
              double LajukonsPem_21 = double.parse(isipdrb[index = 7].kons_pem);
              double Lajupmtb_21 = double.parse(isipdrb[index = 7].pmtb);
              double Lajuinventori_21 =
                  double.parse(isipdrb[index = 7].inventori);
              double Lajuekspor_21 = double.parse(isipdrb[index = 7].ekspor);
              double LajuPdrb_21 = double.parse(isipdrb[index = 7].total);

              //Laju 2022
              double LajukonsRuta_22 =
                  double.parse(isipdrb[index = 6].kons_ruta);
              double LajukonsLnprt_22 =
                  double.parse(isipdrb[index = 6].kons_lnprt);
              double LajukonsPem_22 = double.parse(isipdrb[index = 6].kons_pem);
              double Lajupmtb_22 = double.parse(isipdrb[index = 6].pmtb);
              double Lajuinventori_22 =
                  double.parse(isipdrb[index = 6].inventori);
              double Lajuekspor_22 = double.parse(isipdrb[index = 6].ekspor);
              double LajuPdrb_22 = double.parse(isipdrb[index = 6].total);

              //Laju 2023
              double LajukonsRuta_23 =
                  double.parse(isipdrb[index = 5].kons_ruta);
              double LajukonsLnprt_23 =
                  double.parse(isipdrb[index = 5].kons_lnprt);
              double LajukonsPem_23 = double.parse(isipdrb[index = 5].kons_pem);
              double Lajupmtb_23 = double.parse(isipdrb[index = 5].pmtb);
              double Lajuinventori_23 =
                  double.parse(isipdrb[index = 5].inventori);
              double Lajuekspor_23 = double.parse(isipdrb[index = 5].ekspor);
              double LajuPdrb_23 = double.parse(isipdrb[index = 5].total);

              toString();
              data = [
                _ChartData(
                    tahun1,
                    LajukonsRuta_19,
                    LajukonsLnprt_19,
                    LajukonsPem_19,
                    Lajupmtb_19,
                    Lajuinventori_19,
                    Lajuekspor_19,
                    LajuPdrb_19),
                _ChartData(
                    tahun2,
                    LajukonsRuta_20,
                    LajukonsLnprt_20,
                    LajukonsPem_20,
                    Lajupmtb_20,
                    Lajuinventori_20,
                    Lajuekspor_20,
                    LajuPdrb_20),
                _ChartData(
                    tahun3,
                    LajukonsRuta_21,
                    LajukonsLnprt_21,
                    LajukonsPem_21,
                    Lajupmtb_21,
                    Lajuinventori_21,
                    Lajuekspor_21,
                    LajuPdrb_21),
                _ChartData(
                    tahun4,
                    LajukonsRuta_22,
                    LajukonsLnprt_22,
                    LajukonsPem_22,
                    Lajupmtb_22,
                    Lajuinventori_22,
                    Lajuekspor_22,
                    LajuPdrb_22),
                _ChartData(
                    tahun5,
                    LajukonsRuta_23,
                    LajukonsLnprt_23,
                    LajukonsPem_23,
                    Lajupmtb_23,
                    Lajuinventori_23,
                    Lajuekspor_23,
                    LajuPdrb_23),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Laju Pertumbuhan Komponen PDRB Pengeluaran di Kabupaten Cilacap',
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
                        majorGridLines: const MajorGridLines(width: 0),
                        minimum: -36,
                        maximum:  36,
                        interval: 6),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      LineSeries<_ChartData, String>(
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
                        name: 'Pertumb. Konsumsi Ruta',
                        color: const Color.fromARGB(255, 22, 18, 238),
                      ),
                      LineSeries<_ChartData, String>(
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
                        name: 'Pertumb. Konsumsi LNPRT',
                        color: const Color.fromARGB(255, 248, 22, 6),
                      ),
                      LineSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y2,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'Pertumb. Konsumsi Pemerintah',
                        color: const Color.fromARGB(255, 248, 245, 35),
                      ),
                      LineSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y3,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'Pertumb. PMTB',
                        color: const Color.fromARGB(255, 19, 209, 35),
                      ),
                      LineSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y4,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'Pertumb. Inventori',
                        color: const Color.fromARGB(255, 88, 52, 5),
                      ),
                      LineSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y5,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'Pertumb. Ekspor',
                        color: const Color.fromARGB(255, 228, 72, 220),
                      ),
                      LineSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y6,
                        // Sorting based on the specified field
                        //sortingOrder: SortingOrder.descending,
                        //sortFieldValueMapper: (_ChartData data, _) =>
                        //data.y,
                        dataLabelSettings: const DataLabelSettings(
                            // Renders the data label
                            isVisible: true,
                            textStyle: TextStyle(fontSize: 11)),
                        name: 'Pertumb. PDRB',
                        color: const Color.fromARGB(255, 96, 202, 216),
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
  _ChartData(
      this.x, this.y, this.y1, this.y2, this.y3, this.y4, this.y5, this.y6);

  final String x;
  final double? y;
  final double? y1;
  final double? y2;
  final double? y3;
  final double? y4;
  final double? y5;
  final double? y6;
}
