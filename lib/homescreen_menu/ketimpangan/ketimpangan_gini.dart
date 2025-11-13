import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_ketimpangan_gini.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class KetimpanganGini extends StatefulWidget {
  const KetimpanganGini({Key? key}) : super(key: key);

  @override
  State<KetimpanganGini> createState() => _KetimpanganGiniState();
}

RepositoryKetimpanganGini repositoryginicilacap = RepositoryKetimpanganGini();

class _KetimpanganGiniState extends State<KetimpanganGini> {
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
      appBar: AppBar(
        title: const Text(
          'Ketimpangan Berdasarkan Gini Rasio',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
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
        future: repositoryginicilacap.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiginirasio = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // isi data kabupaten cilacap
                //String thn = isisensustani[index = 0].tahun;

                String thn1 = isiginirasio[index = 0].tahun.substring(0, 4);
                String thn2 = isiginirasio[index = 0].tahun.substring(5, 9);
                String thn3 = isiginirasio[index = 0].tahun.substring(10, 14);

                String kabupaten = isiginirasio[index = 0].wilayah.substring(
                  6,
                  13,
                );

                double gini1 = double.parse(isiginirasio[index = 0].gini2021);
                double gini2 = double.parse(isiginirasio[index = 0].gini2022);
                double gini3 = double.parse(isiginirasio[index = 0].gini2023);
                toString();
                data = [
                  _ChartData(thn1, gini1),
                  _ChartData(thn2, gini2),
                  _ChartData(thn3, gini3),
                ];
                tooltip = TooltipBehavior(enable: true);

                return Container(
                  //color: const Color.fromARGB(223, 240, 216, 172),
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: screenHeight * 0.12,
                        margin: const EdgeInsets.only(bottom: 5),
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            'Tingkat Ketimpangan Berdasarkan Angka Gini Rasio Tahun $thn1-$thn3 di Kabupaten $kabupaten ',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Robo',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      //Header Column
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
                                  "Tahun",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
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
                              height: screenHeight * 0.06,
                              color: Colors.green,
                              child: const Center(
                                child: Text(
                                  "Gini Rasio",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
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
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.95,
                                height: screenHeight * 0.02,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //Gini 1
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.50,
                                height: screenHeight * 0.05,
                                child: Text(
                                  thn1,
                                  style: const TextStyle(
                                    //fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.30,
                                height: screenHeight * 0.05,
                                child: Text(
                                  Format.convertTo(gini1, 3),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //Gini 2
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.50,
                                height: screenHeight * 0.05,
                                child: Text(
                                  thn2,
                                  style: const TextStyle(
                                    //fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.30,
                                height: screenHeight * 0.05,
                                child: Text(
                                  Format.convertTo(gini2, 3),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //Gini 3
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.50,
                                height: screenHeight * 0.04,
                                child: Text(
                                  thn3,
                                  style: const TextStyle(
                                    //fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.30,
                                height: screenHeight * 0.04,
                                child: Text(
                                  Format.convertTo(gini3, 3),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 1),

                      const Divider(
                        color: Colors.white,
                        height: 15,
                        thickness: 10,
                      ),

                      //Grafik
                      SizedBox(
                        height: screenHeight * 0.35,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Gini Rasio Kabupaten Cilacap Tahun $thn1 - $thn3',
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
                            maximum: 0.6,
                            interval: 0.1,
                          ),
                          tooltipBehavior: tooltip,
                          series: <CartesianSeries>[
                            ColumnSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y,
                              width: 0.6,
                              spacing: 0.3,
                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 10),
                              ),
                              name: 'Gini Rasio',
                              color: const Color.fromARGB(255, 240, 164, 50),
                            ),
                            LineSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y,
                              markerSettings: const MarkerSettings(
                                isVisible: true,
                              ),
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Menurut Oshima, Kriteria Ketimpangan Berdasarkan Gini Rasio sebagai berikut:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "1. Ketimpangan rendah jika Gini Rasio < 0,35",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "2. Ketimpangan sedang jika Gini Rasio 0,35 - 0,50",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "3. Ketimpangan tinggi jika Gini Rasio > 0,50",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.03,
                                width: screenWidth * 0.97,
                                child: const Text(
                                  " ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Menurut Micahel Todaro (Ekonom Italia), Kriteria Ketimpangan Berdasarkan Gini Rasio sebagai berikut:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "1. Ketimpangan rendah jika Gini Rasio 0,20 - 0,35",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "2. Ketimpangan sedang jika Gini Rasio 0,36 - 0,49",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "3. Ketimpangan tinggi jika Gini Rasio 0,50 - 0,70",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.03,
                                width: screenWidth * 0.97,
                                child: const Text(
                                  " ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
  _ChartData(this.x, this.y);

  final String x;
  final double? y;
}
