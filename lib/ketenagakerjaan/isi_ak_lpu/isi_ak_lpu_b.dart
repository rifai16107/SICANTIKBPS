// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_penduduk_lpu.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IsiAkLpuB extends StatefulWidget {
  const IsiAkLpuB({super.key});

  @override
  State<IsiAkLpuB> createState() => _IsiAkLpuBState();
}

enum LegendShape { circle, rectangle }

RepositoryPendudukLpu repositoryPendudukLpu = RepositoryPendudukLpu();

class _IsiAkLpuBState extends State<IsiAkLpuB> {
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
      future: repositoryPendudukLpu.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiaklpu = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double taniLK = double.parse(isiaklpu[index = 3].pertanian);
              double industriLK = double.parse(isiaklpu[index = 3].industri);
              double jasaLK = double.parse(isiaklpu[index = 3].jasa);
              double totalLK = double.parse(isiaklpu[index = 3].jumlah);

              double taniPR = double.parse(isiaklpu[index = 8].pertanian);
              double industriPR = double.parse(isiaklpu[index = 8].industri);
              double jasaPR = double.parse(isiaklpu[index = 8].jasa);
              double totalPR = double.parse(isiaklpu[index = 8].jumlah);

              double taniLKPR = double.parse(isiaklpu[index = 13].pertanian);
              double industriLKPR = double.parse(isiaklpu[index = 13].industri);
              double jasaLKPR = double.parse(isiaklpu[index = 13].jasa);
              double totalLKPR = double.parse(isiaklpu[index = 13].jumlah);

              toString();
              data = [
                _ChartData(
                    "Pertanian", taniLKPR, const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData("Industri", industriLKPR,
                    const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData("Jasa/Lainnya", jasaLKPR,
                    const Color.fromARGB(255, 241, 64, 41)),
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
                                  height: screenHeight * 0.06,
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Lapangan Pekerjaan     Utama",
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
                                  height: screenHeight * 0.06,
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
                                  height: screenHeight * 0.06,
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
                                  height: screenHeight * 0.06,
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
                                      "Pertanian",
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
                                      taniLK.toStringAsFixed(2),
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
                                      taniPR.toStringAsFixed(2),
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
                                      taniLKPR.toStringAsFixed(2),
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
                                      "Industri",
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
                                      industriLK.toStringAsFixed(2),
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
                                      industriPR.toStringAsFixed(2),
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
                                      industriLKPR.toStringAsFixed(2),
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
                                      "Jasa/Lainnya",
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
                                      jasaLK.toStringAsFixed(2),
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
                                      jasaPR.toStringAsFixed(2),
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
                                      jasaLKPR.toStringAsFixed(2),
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
                                  'Persentase Penduduk yang Bekerja Menurut Lapangan Pekerjaan Utama di Kabupaten Cilacap',
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
