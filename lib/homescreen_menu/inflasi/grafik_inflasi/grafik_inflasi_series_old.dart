// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_series_inflasi.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikInflasiSeries extends StatefulWidget {
  const GrafikInflasiSeries({Key? key}) : super(key: key);

  @override
  _GrafikInflasiSeriesState createState() => _GrafikInflasiSeriesState();
}

class _GrafikInflasiSeriesState extends State<GrafikInflasiSeries> {
  RepositorySeriesInflasi repositoryseriesinflasi = RepositorySeriesInflasi();
  int key = 0;
  late List<_ChartData> data;
  late List<_ChartData1> data1;
  late TooltipBehavior tooltip;
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return FutureBuilder(
      future: repositoryseriesinflasi.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiseriesinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //series y1, tahun ke n

              String cekbulan1 = isiseriesinflasi[index = 24].inflasi;
              String cekbulan2 = isiseriesinflasi[index = 25].inflasi;
              String cekbulan3 = isiseriesinflasi[index = 26].inflasi;
              String cekbulan4 = isiseriesinflasi[index = 27].inflasi;
              String cekbulan5 = isiseriesinflasi[index = 28].inflasi;
              String cekbulan6 = isiseriesinflasi[index = 29].inflasi;
              String cekbulan7 = isiseriesinflasi[index = 30].inflasi;
              String cekbulan8 = isiseriesinflasi[index = 31].inflasi;
              String cekbulan9 = isiseriesinflasi[index = 32].inflasi;
              String cekbulan10 = isiseriesinflasi[index = 33].inflasi;
              String cekbulan11 = isiseriesinflasi[index = 34].inflasi;
              String cekbulan12 = isiseriesinflasi[index = 35].inflasi;

              String thnn = isiseriesinflasi[index = 24].tahun;

              //series y2, tahun n-1
              double inflasi12 = double.parse(
                isiseriesinflasi[index = 12].inflasi,
              );
              double inflasi13 = double.parse(
                isiseriesinflasi[index = 13].inflasi,
              );
              double inflasi14 = double.parse(
                isiseriesinflasi[index = 14].inflasi,
              );
              double inflasi15 = double.parse(
                isiseriesinflasi[index = 15].inflasi,
              );
              double inflasi16 = double.parse(
                isiseriesinflasi[index = 16].inflasi,
              );
              double inflasi17 = double.parse(
                isiseriesinflasi[index = 17].inflasi,
              );
              double inflasi18 = double.parse(
                isiseriesinflasi[index = 18].inflasi,
              );
              double inflasi19 = double.parse(
                isiseriesinflasi[index = 19].inflasi,
              );
              double inflasi20 = double.parse(
                isiseriesinflasi[index = 20].inflasi,
              );
              double inflasi21 = double.parse(
                isiseriesinflasi[index = 21].inflasi,
              );
              double inflasi22 = double.parse(
                isiseriesinflasi[index = 22].inflasi,
              );
              double inflasi23 = double.parse(
                isiseriesinflasi[index = 23].inflasi,
              );

              String thn1 = isiseriesinflasi[index = 12].tahun;

              //series y1, tahun n-2
              double inflasi0 = double.parse(
                isiseriesinflasi[index = 0].inflasi,
              );
              double inflasi1 = double.parse(
                isiseriesinflasi[index = 1].inflasi,
              );
              double inflasi2 = double.parse(
                isiseriesinflasi[index = 2].inflasi,
              );
              double inflasi3 = double.parse(
                isiseriesinflasi[index = 3].inflasi,
              );
              double inflasi4 = double.parse(
                isiseriesinflasi[index = 4].inflasi,
              );
              double inflasi5 = double.parse(
                isiseriesinflasi[index = 5].inflasi,
              );
              double inflasi6 = double.parse(
                isiseriesinflasi[index = 6].inflasi,
              );
              double inflasi7 = double.parse(
                isiseriesinflasi[index = 7].inflasi,
              );
              double inflasi8 = double.parse(
                isiseriesinflasi[index = 8].inflasi,
              );
              double inflasi9 = double.parse(
                isiseriesinflasi[index = 9].inflasi,
              );
              double inflasi10 = double.parse(
                isiseriesinflasi[index = 10].inflasi,
              );
              double inflasi11 = double.parse(
                isiseriesinflasi[index = 11].inflasi,
              );

              String thn2 = isiseriesinflasi[index = 0].tahun;
              toString();
              data = [
                _ChartData("Jan", inflasi0, inflasi12),
                _ChartData("Feb", inflasi1, inflasi13),
                _ChartData("Mar", inflasi2, inflasi14),
                _ChartData("Apr", inflasi3, inflasi15),
                _ChartData("Mei", inflasi4, inflasi16),
                _ChartData("Juni", inflasi5, inflasi17),
                _ChartData("Juli", inflasi6, inflasi18),
                _ChartData("Agst", inflasi7, inflasi19),
                _ChartData("Sept", inflasi8, inflasi20),
                _ChartData("Okt", inflasi9, inflasi21),
                _ChartData("Nov", inflasi10, inflasi22),
                _ChartData("Des", inflasi11, inflasi23),
              ];

              if (cekbulan12 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                double inflasi29 = double.parse(
                  isiseriesinflasi[index = 29].inflasi,
                );
                double inflasi30 = double.parse(
                  isiseriesinflasi[index = 30].inflasi,
                );
                double inflasi31 = double.parse(
                  isiseriesinflasi[index = 31].inflasi,
                );
                double inflasi32 = double.parse(
                  isiseriesinflasi[index = 32].inflasi,
                );
                double inflasi33 = double.parse(
                  isiseriesinflasi[index = 33].inflasi,
                );
                double inflasi34 = double.parse(
                  isiseriesinflasi[index = 34].inflasi,
                );
                double inflasi35 = double.parse(
                  isiseriesinflasi[index = 35].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                  _ChartData1("Juni", inflasi29),
                  _ChartData1("Juli", inflasi30),
                  _ChartData1("Agst", inflasi31),
                  _ChartData1("Sept", inflasi32),
                  _ChartData1("Okt", inflasi33),
                  _ChartData1("Nov", inflasi34),
                  _ChartData1("Des", inflasi35),
                ];
              } else if (cekbulan11 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                double inflasi29 = double.parse(
                  isiseriesinflasi[index = 29].inflasi,
                );
                double inflasi30 = double.parse(
                  isiseriesinflasi[index = 30].inflasi,
                );
                double inflasi31 = double.parse(
                  isiseriesinflasi[index = 31].inflasi,
                );
                double inflasi32 = double.parse(
                  isiseriesinflasi[index = 32].inflasi,
                );
                double inflasi33 = double.parse(
                  isiseriesinflasi[index = 33].inflasi,
                );
                double inflasi34 = double.parse(
                  isiseriesinflasi[index = 34].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                  _ChartData1("Juni", inflasi29),
                  _ChartData1("Juli", inflasi30),
                  _ChartData1("Agst", inflasi31),
                  _ChartData1("Sept", inflasi32),
                  _ChartData1("Okt", inflasi33),
                  _ChartData1("Nov", inflasi34),
                ];
              } else if (cekbulan10 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                double inflasi29 = double.parse(
                  isiseriesinflasi[index = 29].inflasi,
                );
                double inflasi30 = double.parse(
                  isiseriesinflasi[index = 30].inflasi,
                );
                double inflasi31 = double.parse(
                  isiseriesinflasi[index = 31].inflasi,
                );
                double inflasi32 = double.parse(
                  isiseriesinflasi[index = 32].inflasi,
                );
                double inflasi33 = double.parse(
                  isiseriesinflasi[index = 33].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                  _ChartData1("Juni", inflasi29),
                  _ChartData1("Juli", inflasi30),
                  _ChartData1("Agst", inflasi31),
                  _ChartData1("Sept", inflasi32),
                  _ChartData1("Okt", inflasi33),
                ];
              } else if (cekbulan9 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                double inflasi29 = double.parse(
                  isiseriesinflasi[index = 29].inflasi,
                );
                double inflasi30 = double.parse(
                  isiseriesinflasi[index = 30].inflasi,
                );
                double inflasi31 = double.parse(
                  isiseriesinflasi[index = 31].inflasi,
                );
                double inflasi32 = double.parse(
                  isiseriesinflasi[index = 32].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                  _ChartData1("Juni", inflasi29),
                  _ChartData1("Juli", inflasi30),
                  _ChartData1("Agst", inflasi31),
                  _ChartData1("Sept", inflasi32),
                ];
              } else if (cekbulan8 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                double inflasi29 = double.parse(
                  isiseriesinflasi[index = 29].inflasi,
                );
                double inflasi30 = double.parse(
                  isiseriesinflasi[index = 30].inflasi,
                );
                double inflasi31 = double.parse(
                  isiseriesinflasi[index = 31].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                  _ChartData1("Juni", inflasi29),
                  _ChartData1("Juli", inflasi30),
                  _ChartData1("Agst", inflasi31),
                ];
              } else if (cekbulan7 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                double inflasi29 = double.parse(
                  isiseriesinflasi[index = 29].inflasi,
                );
                double inflasi30 = double.parse(
                  isiseriesinflasi[index = 30].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                  _ChartData1("Juni", inflasi29),
                  _ChartData1("Juli", inflasi30),
                ];
              } else if (cekbulan6 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                double inflasi29 = double.parse(
                  isiseriesinflasi[index = 29].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                  _ChartData1("Juni", inflasi29),
                ];
              } else if (cekbulan5 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                double inflasi28 = double.parse(
                  isiseriesinflasi[index = 28].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                  _ChartData1("Mei", inflasi28),
                ];
              } else if (cekbulan4 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                double inflasi27 = double.parse(
                  isiseriesinflasi[index = 27].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                  _ChartData1("Apr", inflasi27),
                ];
              } else if (cekbulan3 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                double inflasi26 = double.parse(
                  isiseriesinflasi[index = 26].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                  _ChartData1("Mar", inflasi26),
                ];
              } else if (cekbulan2 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                double inflasi25 = double.parse(
                  isiseriesinflasi[index = 25].inflasi,
                );
                toString();
                data1 = [
                  _ChartData1("Jan", inflasi24),
                  _ChartData1("Feb", inflasi25),
                ];
              } else if (cekbulan1 != '-') {
                double inflasi24 = double.parse(
                  isiseriesinflasi[index = 24].inflasi,
                );
                toString();
                data1 = [_ChartData1("Jan", inflasi24)];
              }

              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text: 'Perkembangan Laju Inflasi Kota Cilacap',
                    // Aligns the chart title to left
                    alignment: ChartAlignment.center,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  primaryXAxis: CategoryAxis(
                    interval: 1,
                    labelRotation: -45,
                    //minorGridLines: const MinorGridLines(width: 1),
                    majorGridLines: const MajorGridLines(width: 1),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  legend: Legend(
                    // Visibility of legend
                    isVisible: true,
                    textStyle: const TextStyle(fontSize: 11),
                    toggleSeriesVisibility: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                  ),
                  primaryYAxis: NumericAxis(
                    majorGridLines: const MajorGridLines(width: 1),
                    labelIntersectAction: AxisLabelIntersectAction.multipleRows,
                    minimum: -1,
                    maximum: 3,
                    interval: 0.5,
                  ),
                  zoomPanBehavior: ZoomPanBehavior(
                    enableDoubleTapZooming: true,
                    enablePinching: true,
                    // Enables the selection zooming
                    enableSelectionZooming: true,
                  ),
                  tooltipBehavior: tooltip,
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
                        labelAlignment: ChartDataLabelAlignment.outer,
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          color: Color.fromARGB(255, 141, 24, 4),
                        ),
                      ),
                      name: 'Tahun ke $thnn',
                      color: const Color.fromARGB(255, 141, 24, 4),
                    ),
                    LineSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y2,
                      markerSettings: const MarkerSettings(
                        isVisible: true,
                        shape: DataMarkerType.pentagon,
                      ),
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        labelAlignment: ChartDataLabelAlignment.auto,
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          color: Color.fromARGB(255, 66, 161, 79),
                        ),
                      ),
                      name: 'Tahun ke $thn1',
                      color: const Color.fromARGB(255, 66, 161, 79),
                    ),
                    LineSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y1,
                      markerSettings: const MarkerSettings(
                        isVisible: true,
                        shape: DataMarkerType.circle,
                      ),
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        labelAlignment: ChartDataLabelAlignment.auto,
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          color: Color.fromARGB(255, 58, 55, 238),
                        ),
                      ),
                      name: 'Tahun ke $thn2',
                      color: const Color.fromARGB(255, 58, 55, 238),
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Database Error");
        }
        return const Center(child: CircularProgressIndicator(strokeWidth: 1));
      },
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y1, this.y2);

  final String x;
  final double? y1;
  final double? y2;
}

class _ChartData1 {
  _ChartData1(this.x, this.y);

  final String x;
  final double? y;
}
