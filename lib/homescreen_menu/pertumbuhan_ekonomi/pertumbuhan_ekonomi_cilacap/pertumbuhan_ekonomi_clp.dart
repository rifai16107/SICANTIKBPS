// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_pertumbuhan_ekonomi.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class pertumbuhanEkonomiclp extends StatefulWidget {
  const pertumbuhanEkonomiclp({super.key});

  @override
  State<pertumbuhanEkonomiclp> createState() => _pertumbuhanEkonomiclpState();
}

class _pertumbuhanEkonomiclpState extends State<pertumbuhanEkonomiclp> {
  final double width = 7;

  RepositoryPertumbuhanEkonomi repositoryPertumbuhanEkonomi =
      RepositoryPertumbuhanEkonomi();
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
          'PERTUMBUHAN EKONOMI CILACAP',
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
      body: Container(
        padding: const EdgeInsets.all(2),
        child: FutureBuilder(
          future: repositoryPertumbuhanEkonomi.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isipdrb = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String thA =
                      isipdrb[index = 0].tahun[0] +
                      isipdrb[index = 0].tahun[1] +
                      isipdrb[index = 0].tahun[2] +
                      isipdrb[index = 0].tahun[3];
                  String thB =
                      isipdrb[index = 1].tahun[0] +
                      isipdrb[index = 1].tahun[1] +
                      isipdrb[index = 1].tahun[2] +
                      isipdrb[index = 1].tahun[3];
                  String thC =
                      isipdrb[index = 2].tahun[0] +
                      isipdrb[index = 2].tahun[1] +
                      isipdrb[index = 2].tahun[2] +
                      isipdrb[index = 2].tahun[3];
                  String thD =
                      isipdrb[index = 3].tahun[0] +
                      isipdrb[index = 3].tahun[1] +
                      isipdrb[index = 3].tahun[2] +
                      isipdrb[index = 3].tahun[3];
                  String thE =
                      isipdrb[index = 4].tahun[0] +
                      isipdrb[index = 4].tahun[1] +
                      isipdrb[index = 4].tahun[2] +
                      isipdrb[index = 4].tahun[3];

                  double PeMigasA = double.parse(
                    isipdrb[index = 0].ekonomi_migas,
                  );
                  double PeMigasB = double.parse(
                    isipdrb[index = 1].ekonomi_migas,
                  );
                  double PeMigasC = double.parse(
                    isipdrb[index = 2].ekonomi_migas,
                  );
                  double PeMigasD = double.parse(
                    isipdrb[index = 3].ekonomi_migas,
                  );
                  double PeMigasE = double.parse(
                    isipdrb[index = 4].ekonomi_migas,
                  );

                  double PeNonMigasA = double.parse(
                    isipdrb[index = 0].ekonomi_nonmigas,
                  );
                  double PeNonMigasB = double.parse(
                    isipdrb[index = 1].ekonomi_nonmigas,
                  );
                  double PeNonMigasC = double.parse(
                    isipdrb[index = 2].ekonomi_nonmigas,
                  );
                  double PeNonMigasD = double.parse(
                    isipdrb[index = 3].ekonomi_nonmigas,
                  );
                  double PeNonMigasE = double.parse(
                    isipdrb[index = 4].ekonomi_nonmigas,
                  );

                  toString();
                  data = [
                    _ChartData(thA, PeMigasA, PeNonMigasA),
                    _ChartData(thB, PeMigasB, PeNonMigasB),
                    _ChartData(thC, PeMigasC, PeNonMigasC),
                    _ChartData(thD, PeMigasD, PeNonMigasD),
                    _ChartData(thE, PeMigasE, PeNonMigasE),
                  ];
                  tooltip = TooltipBehavior(enable: true);

                  return Container(
                    height: screenHeight,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 2,
                                ),
                                child: Text(
                                  "Pertumbuhan Ekonomi Kabupaten Cilacap (Dihitung berdasarkan Pertumbuhan PDRB ADHK), $thA-$thE",
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
                                      height: screenHeight * 0.09,
                                      color: Colors.green,
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
                                      height: screenHeight * 0.09,
                                      color: Colors.green,
                                      child: const Center(
                                        child: Text(
                                          "Pertumbuhan Ekonomi Dengan Migas",
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
                                      height: screenHeight * 0.09,
                                      color: Colors.green,
                                      child: const Center(
                                        child: Text(
                                          "Pertumbuhan Ekonomi Tanpa Migas",
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
                              //TAHUN A
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
                                          thA,
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
                                          PeMigasA.toStringAsFixed(2),
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
                                          PeNonMigasA.toString(),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //TAHUN B
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
                                          thB,
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
                                          PeMigasB.toStringAsFixed(2),
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
                                          PeNonMigasB.toString(),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //TAHUN C
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
                                          thC,
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
                                          PeMigasC.toStringAsFixed(2),
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
                                          PeNonMigasC.toString(),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //TAHUN D
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
                                          thD,
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
                                          PeMigasD.toStringAsFixed(2),
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
                                          PeNonMigasD.toString(),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //TAHUN E
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
                                          thE,
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
                                          PeMigasE.toStringAsFixed(2),
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
                                          PeNonMigasE.toString(),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Color.fromARGB(235, 71, 65, 65),
                              ),
                              SizedBox(
                                height: screenHeight * 0.45,
                                width: screenWidth,
                                child: SfCartesianChart(
                                  title: ChartTitle(
                                    text:
                                        'Distribusi Persentase Pendapatan Penduduk Kabupaten Cilacap menurut Kriteria Bank Dunia, $thA-$thE',
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
                                    majorGridLines: const MajorGridLines(
                                      width: 0,
                                    ),
                                    minimum: -15,
                                    maximum: 15,
                                    interval: 5,
                                  ),
                                  tooltipBehavior: tooltip,
                                  series: <CartesianSeries>[
                                    LineSeries<_ChartData, String>(
                                      dataSource: data,
                                      xValueMapper: (_ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (_ChartData data, _) =>
                                          data.y,
                                      markerSettings: const MarkerSettings(
                                        isVisible: true,
                                        shape: DataMarkerType.circle,
                                      ),
                                      // Sorting based on the specified field
                                      //sortingOrder: SortingOrder.descending,
                                      //sortFieldValueMapper: (_ChartData data, _) =>
                                      //data.y,
                                      dataLabelSettings:
                                          const DataLabelSettings(
                                            // Renders the data label
                                            isVisible: true,
                                            labelAlignment:
                                                ChartDataLabelAlignment.bottom,
                                            textStyle: TextStyle(fontSize: 10),
                                          ),
                                      name: 'Dengan Migas',
                                      width: 3,
                                      color: const Color.fromARGB(
                                        255,
                                        240,
                                        164,
                                        50,
                                      ),
                                    ),
                                    LineSeries<_ChartData, String>(
                                      dataSource: data,
                                      xValueMapper: (_ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (_ChartData data, _) =>
                                          data.y1,
                                      markerSettings: const MarkerSettings(
                                        isVisible: true,
                                        shape: DataMarkerType.diamond,
                                      ),
                                      // Sorting based on the specified field
                                      //sortingOrder: SortingOrder.descending,
                                      //sortFieldValueMapper: (_ChartData data, _) =>
                                      //data.y,
                                      dataLabelSettings:
                                          const DataLabelSettings(
                                            // Renders the data label
                                            isVisible: true,
                                            labelAlignment:
                                                ChartDataLabelAlignment.top,
                                            textStyle: TextStyle(fontSize: 10),
                                          ),
                                      name: 'Tanpa Migas',
                                      width: 3,
                                      color: const Color.fromARGB(
                                        255,
                                        170,
                                        240,
                                        80,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return const Text('Database Error');
            }
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          },
        ),
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
