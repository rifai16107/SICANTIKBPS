// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_penduduk_pendidikan.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IsiAkPendidikanA extends StatefulWidget {
  const IsiAkPendidikanA({super.key});

  @override
  State<IsiAkPendidikanA> createState() => _IsiAkPendidikanAState();
}

enum LegendShape { circle, rectangle }

RepositoryPendudukPendidikan repositoryPendudukPendidikan =
    RepositoryPendudukPendidikan();

class _IsiAkPendidikanAState extends State<IsiAkPendidikanA> {
  late List<_ChartData> data;
  late TooltipBehavior tooltip;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositoryPendudukPendidikan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipddkpend = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double sdLK = double.parse(isipddkpend[index = 4].sd);
              double smpLK = double.parse(isipddkpend[index = 4].smp);
              double smaLK = double.parse(isipddkpend[index = 4].sma);
              double ptLK =
                  double.parse(isipddkpend[index = 4].perguruan_tinggi);
              double totalLK = double.parse(isipddkpend[index = 4].jumlah);

              double sdPR = double.parse(isipddkpend[index = 9].sd);
              double smpPR = double.parse(isipddkpend[index = 9].smp);
              double smaPR = double.parse(isipddkpend[index = 9].sma);
              double ptPR =
                  double.parse(isipddkpend[index = 9].perguruan_tinggi);
              double totalPR = double.parse(isipddkpend[index = 9].jumlah);

              double sdLKPR = double.parse(isipddkpend[index = 14].sd);
              double smpLKPR = double.parse(isipddkpend[index = 14].smp);
              double smaLKPR = double.parse(isipddkpend[index = 14].sma);
              double ptLKPR =
                  double.parse(isipddkpend[index = 14].perguruan_tinggi);
              double totalLKPR = double.parse(isipddkpend[index = 14].jumlah);

              toString();
              data = [
                _ChartData(
                    "SD Ke Bawah", sdLKPR, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData(
                    "SMP", smpLKPR, const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData(
                    "SMA/SMK", smaLKPR, const Color.fromARGB(255, 38, 204, 60)),
                _ChartData("Akademi/PT", ptLKPR,
                    const Color.fromARGB(255, 224, 24, 24)),
              ];
              tooltip = TooltipBehavior(enable: true);

              return Container(
                padding: const EdgeInsets.all(2),
                child: Column(
                  children: [
                    SizedBox(
                      //height: screenHeight,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Tingkat Pendidikan",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
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
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Lk",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
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
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Pr",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
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
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Lk+Pr",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Pertanian
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Center(
                                    child: Text(
                                      "SD Ke Bawah",
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      sdLK.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      sdPR.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      sdLKPR.toStringAsFixed(2),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Industri
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Center(
                                    child: Text(
                                      "SLTP",
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      smpLK.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      smpPR.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      smpLKPR.toStringAsFixed(2),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Lainnya
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Center(
                                    child: Text(
                                      "SMA/SMK",
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      smaLK.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      smaPR.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      smaLKPR.toStringAsFixed(2),
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
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Center(
                                    child: Text(
                                      "Akademi/PT",
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      ptLK.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      ptPR.toStringAsFixed(2),
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
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: Center(
                                    child: Text(
                                      ptLKPR.toStringAsFixed(2),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          //TOTAL
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.03,
                                  child: const Center(
                                    child: Text(
                                      "Total",
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
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.03,
                                  child: Center(
                                    child: Text(
                                      totalLK.toStringAsFixed(2),
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
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.03,
                                  child: Center(
                                    child: Text(
                                      totalPR.toStringAsFixed(2),
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
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.03,
                                  child: Center(
                                    child: Text(
                                      totalLKPR.toStringAsFixed(2),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const Divider(
                            thickness: 2,
                          ),
                          Row(children: [
                            Flexible(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.only(
                                        top: 0,
                                        left: 4,
                                      ),
                                      child: const Text(
                                        " Sumber Data : Survei Angkatan Kerja Nasional",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ))
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      //height: screenHeight * 0.45,
                      width: screenWidth,
                      child: SfCircularChart(
                          title: ChartTitle(
                              text:
                                  'Persentase Penduduk yang Bekerja Menurut Tingkat Pendidikan di Kabupaten Cilacap',
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
                              position: LegendPosition.right,
                              isVisible: true,
                              textStyle: const TextStyle(
                                fontSize: 11,
                              ),
                              overflowMode: LegendItemOverflowMode.wrap,
                              // Legend title
                              title: LegendTitle(
                                  text: '',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 12, 12, 12),
                                      fontSize: 13,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w900))),
                          series: <CircularSeries>[
                            DoughnutSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y,
                              pointColorMapper: (_ChartData data, _) =>
                                  data.color,
                              radius: '90%',
                              innerRadius: '35%',
                              dataLabelSettings: const DataLabelSettings(
                                  isVisible: true,
                                  labelPosition: ChartDataLabelPosition.inside,
                                  useSeriesColor: true,
                                  connectorLineSettings: ConnectorLineSettings(
                                      // Type of the connector line
                                      type: ConnectorType.curve)),
                              explode: true,
                              explodeIndex: 0,
                            ),
                          ]),
                    )
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text('Database Error');
        } else {
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        }
      },
    ));
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
