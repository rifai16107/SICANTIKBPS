// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_inflasi_yony.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikInflasiBulananYony extends StatefulWidget {
  const GrafikInflasiBulananYony({Key? key}) : super(key: key);

  @override
  _GrafikInflasiBulananYonyState createState() => _GrafikInflasiBulananYonyState();
}

class _GrafikInflasiBulananYonyState extends State<GrafikInflasiBulananYony> {
  RepositoryInflasiYony repositoryinflasi = RepositoryInflasiYony();
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
      future: repositoryinflasi.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double tkif1 = double.parse(isiinflasi[index = 5].sembako);
              double tkif2 = double.parse(isiinflasi[index = 5].sandang);
              double tkif3 = double.parse(isiinflasi[index = 5].perumahan);
              double tkif4 = double.parse(isiinflasi[index = 5].perlengkapan);
              double tkif5 = double.parse(isiinflasi[index = 5].kesehatan);
              double tkif6 = double.parse(isiinflasi[index = 5].transportasi);
              double tkif7 = double.parse(isiinflasi[index = 5].informasi);
              double tkif8 = double.parse(isiinflasi[index = 5].rekreasi);
              double tkif9 = double.parse(isiinflasi[index = 5].pendidikan);
              double tkif10 =
                  double.parse(isiinflasi[index = 5].penyedia_pangan);
              double tkif11 =
                  double.parse(isiinflasi[index = 5].perawatan_pribadi);

              double anif1 = double.parse(isiinflasi[index = 4].sembako);
              double anif2 = double.parse(isiinflasi[index = 4].sandang);
              double anif3 = double.parse(isiinflasi[index = 4].perumahan);
              double anif4 = double.parse(isiinflasi[index = 4].perlengkapan);
              double anif5 = double.parse(isiinflasi[index = 4].kesehatan);
              double anif6 = double.parse(isiinflasi[index = 4].transportasi);
              double anif7 = double.parse(isiinflasi[index = 4].informasi);
              double anif8 = double.parse(isiinflasi[index = 4].rekreasi);
              double anif9 = double.parse(isiinflasi[index = 4].pendidikan);
              double anif10 =
                  double.parse(isiinflasi[index = 4].penyedia_pangan);
              double anif11 =
                  double.parse(isiinflasi[index = 4].perawatan_pribadi);

              String bulan2 = '${isiinflasi[index = 4].bulan} ''${isiinflasi[index = 4].tahun}';

              toString();
              data = [
                _ChartData("Makanan, Minuman", tkif1, anif1),
                _ChartData("Pakaian & ALas Kaki", tkif2, anif2),
                _ChartData("Perumahan, Air,Listrik", tkif3, anif3),
                _ChartData("Perlengk. Rumahtangga", tkif4, anif4),
                _ChartData("Kesehatan", tkif5, anif5),
                _ChartData("Transportasi", tkif6, anif6),
                _ChartData("Infokom, Keuangan", tkif7, anif7),
                _ChartData("Rekreasi, OR & Budaya", tkif8, anif8),
                _ChartData("Pendidikan", tkif9, anif9),
                _ChartData("Penyedia Mak & Min", tkif10, anif10),
                _ChartData("Perawatan Pribadi", tkif11, anif11),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text:
                            'Inflasi dan Andil Inflasi Y on Y di Kota Cilacap ($bulan2)',
                        // Aligns the chart title to left
                        alignment: ChartAlignment.center,
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 10, 10, 10),
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    primaryXAxis: CategoryAxis(
                        majorGridLines: const MajorGridLines(width: 0),
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontFamily: 'Roboto',
                          fontSize: 11,
                          fontStyle: FontStyle.normal,
                        )),
                    legend: Legend(
                        // Visibility of legend
                        isVisible: true,
                        position: LegendPosition.bottom),
                    primaryYAxis: NumericAxis(
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: -1,
                        maximum: 6.0,
                        interval: 1),
                    zoomPanBehavior: ZoomPanBehavior(
                        enableDoubleTapZooming: true,
                        enablePinching: true,
                        // Enables the selection zooming
                        enableSelectionZooming: true),
                    tooltipBehavior: tooltip,
                    series: <CartesianSeries>[
                      BarSeries<_ChartData, String>(
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
                            labelAlignment: ChartDataLabelAlignment.auto,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Inflasi Y on Y',
                        color: const Color.fromARGB(255, 238, 195, 56),
                      ),
                      BarSeries<_ChartData, String>(
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
                            labelAlignment: ChartDataLabelAlignment.auto,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Andil Inflasi Y on Y',
                        color: const Color.fromARGB(255, 94, 214, 130),
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
  _ChartData(this.x, this.y, this.y1);

  final String x;
  final double? y;
  final double? y1;
}
