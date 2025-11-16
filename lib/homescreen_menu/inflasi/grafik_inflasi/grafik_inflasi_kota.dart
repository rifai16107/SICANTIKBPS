// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_inflasi_kota.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class GrafikInflasiKota extends StatefulWidget {
  const GrafikInflasiKota({Key? key}) : super(key: key);

  @override
  _GrafikInflasiKotaState createState() => _GrafikInflasiKotaState();
}

class _GrafikInflasiKotaState extends State<GrafikInflasiKota> {
  RepositoryInflasiKota repositoryinflasikota = RepositoryInflasiKota();
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
      future: repositoryinflasikota.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiinflasikota = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String nama1 = isiinflasikota[index = 16].nama;
              String nama2 = isiinflasikota[index = 17].nama;
              String nama3 = isiinflasikota[index = 18].nama;
              String nama4 = isiinflasikota[index = 19].nama;
              String nama5 = isiinflasikota[index = 20].nama;
              String nama6 = isiinflasikota[index = 21].nama;
              String nama7 = isiinflasikota[index = 22].nama;
              String nama8 = isiinflasikota[index = 23].nama;
              //3 kab baru
                String nama9 = isiinflasikota[index = 30].nama;
                String nama10 = isiinflasikota[index = 31].nama;
                String nama11 = isiinflasikota[index = 32].nama;

              double mtom1 = double.parse(isiinflasikota[index = 16].mtom);
              double mtom2 = double.parse(isiinflasikota[index = 17].mtom);
              double mtom3 = double.parse(isiinflasikota[index = 18].mtom);
              double mtom4 = double.parse(isiinflasikota[index = 19].mtom);
              double mtom5 = double.parse(isiinflasikota[index = 20].mtom);
              double mtom6 = double.parse(isiinflasikota[index = 21].mtom);
              double mtom7 = double.parse(isiinflasikota[index = 22].mtom);
              double mtom8 = double.parse(isiinflasikota[index = 23].mtom);
              //3 kab baru
                double mtom9 = double.parse(isiinflasikota[index = 30].mtom);
                double mtom10 = double.parse(isiinflasikota[index = 31].mtom);
                double mtom11 = double.parse(isiinflasikota[index = 32].mtom);

              double ytod1 = double.parse(isiinflasikota[index = 16].ytod);
              double ytod2 = double.parse(isiinflasikota[index = 17].ytod);
              double ytod3 = double.parse(isiinflasikota[index = 18].ytod);
              double ytod4 = double.parse(isiinflasikota[index = 19].ytod);
              double ytod5 = double.parse(isiinflasikota[index = 20].ytod);
              double ytod6 = double.parse(isiinflasikota[index = 21].ytod);
              double ytod7 = double.parse(isiinflasikota[index = 22].ytod);
              double ytod8 = double.parse(isiinflasikota[index = 23].ytod);
               //3 kab baru
                double ytod9 = double.parse(isiinflasikota[index = 30].ytod);
                double ytod10 = double.parse(isiinflasikota[index = 31].ytod);
                double ytod11 = double.parse(isiinflasikota[index = 32].ytod);

              double yony1 = double.parse(isiinflasikota[index = 16].ytoy);
              double yony2 = double.parse(isiinflasikota[index = 17].ytoy);
              double yony3 = double.parse(isiinflasikota[index = 18].ytoy);
              double yony4 = double.parse(isiinflasikota[index = 19].ytoy);
              double yony5 = double.parse(isiinflasikota[index = 20].ytoy);
              double yony6 = double.parse(isiinflasikota[index = 21].ytoy);
              double yony7 = double.parse(isiinflasikota[index = 22].ytoy);
              double yony8 = double.parse(isiinflasikota[index = 23].ytoy);
              //3 kab baru
                double yony9 = double.parse(isiinflasikota[index = 30].ytoy);
                double yony10 = double.parse(isiinflasikota[index = 31].ytoy);
                double yony11 = double.parse(isiinflasikota[index = 32].ytoy);

              String bulan2 = '${isiinflasikota[index = 16].bulan} ''${isiinflasikota[index = 16].tahun}';

              toString();
              data = [
                _ChartData(nama1, mtom1, ytod1, yony1),
                _ChartData(nama2, mtom2, ytod2, yony2),
                //3 kota baru
                _ChartData(nama9, mtom9, ytod9, yony9),
                _ChartData(nama10, mtom10, ytod10, yony10),
                _ChartData(nama11, mtom11, ytod11, yony11),

                _ChartData(nama3, mtom3, ytod3, yony3),
                _ChartData(nama4, mtom4, ytod4, yony4),
                _ChartData(nama5, mtom5, ytod5, yony5),
                _ChartData(nama6, mtom6, ytod6, yony6),
                _ChartData(nama7, mtom7, ytod7, yony7),
                _ChartData(nama8, mtom8, ytod8, yony8),
                
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                    title: ChartTitle(
                        text: 'Inflasi 9 (sembilan) Kota di Jawa Tengah ($bulan2)',
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
                        textStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        toggleSeriesVisibility: true,
                        overflowMode: LegendItemOverflowMode.wrap,
                        position: LegendPosition.bottom),
                    primaryYAxis: NumericAxis(
                        majorGridLines: const MajorGridLines(width: 1),
                        minimum: -1,
                        maximum: 6,
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
                            labelAlignment: ChartDataLabelAlignment.outer,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Inflasi M to M',
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
                        name: 'Inflasi Y to Date',
                        color: const Color.fromARGB(255, 94, 214, 130),
                      ),
                      BarSeries<_ChartData, String>(
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
                            labelAlignment: ChartDataLabelAlignment.auto,
                            textStyle: TextStyle(fontSize: 10)),
                        name: 'Inflasi Y on Y',
                        color: const Color.fromARGB(255, 241, 85, 93),
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
  _ChartData(this.x, this.y, this.y1, this.y2);

  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}
