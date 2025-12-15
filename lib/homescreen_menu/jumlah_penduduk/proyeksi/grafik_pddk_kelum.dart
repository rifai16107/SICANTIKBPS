// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_penduduk.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class GrafikPddkKelum extends StatefulWidget {
  const GrafikPddkKelum({Key? key}) : super(key: key);

  @override
  _GrafikPddkKelumState createState() => _GrafikPddkKelumState();
}

class _GrafikPddkKelumState extends State<GrafikPddkKelum> {
  RepositoryJumlahPenduduk jumlahPenduduk = RepositoryJumlahPenduduk();
  int key = 0;
  late List<_ChartData> data;
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
      future: jumlahPenduduk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipendudukumur = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thn1 = isipendudukumur[index = 0].tahun;

              String kelum1 = "0 - 4";
              String kelum2 = "5 - 9";
              String kelum3 = "10-14";
              String kelum4 = "15-19";
              String kelum5 = "20-24";
              String kelum6 = "25-29";
              String kelum7 = "30-34";
              String kelum8 = "35-39";
              String kelum9 = "40-44";
              String kelum10 = "45-49";
              String kelum11 = "50-54";
              String kelum12 = "55-59";
              String kelum13 = "60-64";
              String kelum14 = "65-69";
              String kelum15 = "70-74";
              String kelum16 = "75+";

              double lk04 = double.parse(isipendudukumur[index = 0].a) / 1000;
              double lk59 = double.parse(isipendudukumur[index = 0].b) / 1000;
              double lk1014 = double.parse(isipendudukumur[index = 0].c) / 1000;
              double lk1519 = double.parse(isipendudukumur[index = 0].d) / 1000;
              double lk2024 = double.parse(isipendudukumur[index = 0].e) / 1000;
              double lk2529 = double.parse(isipendudukumur[index = 0].f) / 1000;
              double lk3034 = double.parse(isipendudukumur[index = 0].g) / 1000;
              double lk3539 = double.parse(isipendudukumur[index = 0].h) / 1000;
              double lk4044 = double.parse(isipendudukumur[index = 0].i) / 1000;
              double lk4549 = double.parse(isipendudukumur[index = 0].j) / 1000;
              double lk5054 = double.parse(isipendudukumur[index = 0].k) / 1000;
              double lk5559 = double.parse(isipendudukumur[index = 0].l) / 1000;
              double lk6064 = double.parse(isipendudukumur[index = 0].m) / 1000;
              double lk6569 = double.parse(isipendudukumur[index = 0].n) / 1000;
              double lk7074 = double.parse(isipendudukumur[index = 0].o) / 1000;
              double lk75 = double.parse(isipendudukumur[index = 0].p) / 1000;

              double pr04 = double.parse(isipendudukumur[index = 1].a) / 1000;
              double pr59 = double.parse(isipendudukumur[index = 1].b) / 1000;
              double pr1014 = double.parse(isipendudukumur[index = 1].c) / 1000;
              double pr1519 = double.parse(isipendudukumur[index = 1].d) / 1000;
              double pr2024 = double.parse(isipendudukumur[index = 1].e) / 1000;
              double pr2529 = double.parse(isipendudukumur[index = 1].f) / 1000;
              double pr3034 = double.parse(isipendudukumur[index = 1].g) / 1000;
              double pr3539 = double.parse(isipendudukumur[index = 1].h) / 1000;
              double pr4044 = double.parse(isipendudukumur[index = 1].i) / 1000;
              double pr4549 = double.parse(isipendudukumur[index = 1].j) / 1000;
              double pr5054 = double.parse(isipendudukumur[index = 1].k) / 1000;
              double pr5559 = double.parse(isipendudukumur[index = 1].l) / 1000;
              double pr6064 = double.parse(isipendudukumur[index = 1].m) / 1000;
              double pr6569 = double.parse(isipendudukumur[index = 1].n) / 1000;
              double pr7074 = double.parse(isipendudukumur[index = 1].o) / 1000;
              double pr75 = double.parse(isipendudukumur[index = 1].p) / 1000;

              toString();
              data = [
                _ChartData(kelum1, -lk04, pr04),
                _ChartData(kelum2, -lk59, pr59),
                _ChartData(kelum3, -lk1014, pr1014),
                _ChartData(kelum4, -lk1519, pr1519),
                _ChartData(kelum5, -lk2024, pr2024),
                _ChartData(kelum6, -lk2529, pr2529),
                _ChartData(kelum7, -lk3034, pr3034),
                _ChartData(kelum8, -lk3539, pr3539),
                _ChartData(kelum9, -lk4044, pr4044),
                _ChartData(kelum10, -lk4549, pr4549),
                _ChartData(kelum11, -lk5054, pr5054),
                _ChartData(kelum12, -lk5559, pr5559),
                _ChartData(kelum13, -lk6064, pr6064),
                _ChartData(kelum14, -lk6569, pr6569),
                _ChartData(kelum15, -lk7074, pr7074),
                _ChartData(kelum16, -lk75, pr75),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight * 0.78,
                width: screenWidth * 1,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text:
                        'Piramida Penduduk Kabupaten Cilacap Menurut Kelompok Umur Tahun $thn1 (Hasil Proyeksi Penduduk)',
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
                  enableSideBySideSeriesPlacement: false,
                  primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontFamily: 'Roboto',
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  legend: Legend(
                    // Visibility of legend
                    isVisible: true,
                    textStyle: const TextStyle(fontSize: 12),
                    toggleSeriesVisibility: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.top,
                  ),
                  primaryYAxis: NumericAxis(
                    title: AxisTitle(
                      text: '(Jiwa)',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                    axisLabelFormatter: (AxisLabelRenderDetails args) {
                      if (args.value < 0) {
                        return ChartAxisLabel(
                          args.value.abs().toString().replaceAll(
                            RegExp(r'[-.]0'),
                            'K',
                          ),
                          args.textStyle,
                        );
                      }
                      return ChartAxisLabel('${args.text}K', args.textStyle);
                    },
                    numberFormat: NumberFormat.decimalPattern(),
                    majorGridLines: const MajorGridLines(width: 1),
                    minimum: -90,
                    maximum: 90,
                    interval: 30,
                    //labelFormat: '{value}K',
                  ),
                  zoomPanBehavior: ZoomPanBehavior(
                    enableDoubleTapZooming: true,
                    enablePinching: true,
                    // Enables the selection zooming
                    enableSelectionZooming: true,
                  ),
                  tooltipBehavior: tooltip,
                  onDataLabelRender: (dataLabelArgs) {
                    final text = dataLabelArgs.text;
                    if (text != null) {
                      double? yValue = double.tryParse(text);

                      if (yValue != null && yValue < 0) {
                        dataLabelArgs.text = yValue.abs().toString().replaceAll(
                          RegExp(r'[-,]0'),
                          '',
                        );
                      }
                    }
                  },
                  series: <CartesianSeries>[
                    BarSeries<_ChartData, String>(
                      width: 0.80,
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => (data.y),
                      // Sorting based on the specified field
                      //sortingOrder: SortingOrder.descending,
                      //sortFieldValueMapper: (_ChartData data, _) =>
                      //data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        labelAlignment: ChartDataLabelAlignment.middle,
                        textStyle: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      name: 'Laki-Laki',
                      color: const Color.fromARGB(255, 108, 138, 236),
                    ),
                    BarSeries<_ChartData, String>(
                      width: 0.80,
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
                        labelAlignment: ChartDataLabelAlignment.middle,
                        textStyle: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      name: 'Perempuan',
                      color: const Color.fromARGB(255, 238, 83, 103),
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
        return const Center(child: CircularProgressIndicator(strokeWidth: 3));
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
