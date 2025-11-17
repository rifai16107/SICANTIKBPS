// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_penduduk_umur.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IsiAkUmurA extends StatefulWidget {
  const IsiAkUmurA({super.key});

  @override
  State<IsiAkUmurA> createState() => _IsiAkUmurAState();
}

enum LegendShape { circle, rectangle }

RepositoryPendudukUmur repositorypendudukumur = RepositoryPendudukUmur();

class _IsiAkUmurAState extends State<IsiAkUmurA> {
  int key = 0;
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
      future: repositorypendudukumur.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isitenagakerja = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double bocahLk = double.parse(isitenagakerja[index = 4].a);
              double mudaLk = double.parse(isitenagakerja[index = 4].b);
              double tuaLk = double.parse(isitenagakerja[index = 4].c);
              double totalLk = double.parse(isitenagakerja[index = 4].total);

              double bocahPr = double.parse(isitenagakerja[index = 9].a);
              double mudaPr = double.parse(isitenagakerja[index = 9].b);
              double tuaPr = double.parse(isitenagakerja[index = 9].c);
              double totalPr = double.parse(isitenagakerja[index = 9].total);

              double bocahLkPr = double.parse(isitenagakerja[index = 14].a);
              double mudaLkPr = double.parse(isitenagakerja[index = 14].b);
              double tuaLkPr = double.parse(isitenagakerja[index = 14].c);
              double totalLkPr = double.parse(isitenagakerja[index = 14].total);

              toString();
              data = [
                _ChartData("15 - 24 tahun", bocahLkPr,
                    const Color.fromRGBO(9, 0, 136, 1)),
                _ChartData("25 - 54 tahun", mudaLkPr,
                    const Color.fromRGBO(255, 189, 57, 1)),
                _ChartData(
                    "55+", tuaLkPr, const Color.fromARGB(255, 241, 64, 41)),
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
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  color: Colors.orange,
                                  child: const Center(
                                    child: Text(
                                      "Kelompok Umur                (Tahun)",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  color: Colors.orange,
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
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  color: Colors.orange,
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
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  color: Colors.orange,
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
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Center(
                                    child: Text(
                                      "15 - 24",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    bocahLk.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    bocahPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    bocahLkPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                            ],
                          ),
                          //Industri
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Center(
                                    child: Text(
                                      "25 - 54",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    mudaLk.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    mudaPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    mudaLkPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                            ],
                          ),
                          //Lainnya
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Center(
                                    child: Text(
                                      "55+",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    tuaLk.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                //),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    tuaPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  //child: Center(
                                  child: Text(
                                    tuaLkPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
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
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.033,
                                  child: const Center(
                                    child: Text(
                                      "Total",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.033,
                                  //child: Center(
                                  child: Text(
                                    totalLk.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.033,
                                  //child: Center(
                                  child: Text(
                                    totalPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 5, right: 5),
                                  height: screenHeight * 0.033,
                                  //child: Center(
                                  child: Text(
                                    totalLkPr.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                  //),
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
                                  'Persentase Penduduk yang Bekerja Menurut Kelompok Umur di Kabupaten Cilacap',
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
                              //explode: true,
                              //explodeIndex: 1,
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
