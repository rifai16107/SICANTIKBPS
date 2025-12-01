// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_longform.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class MortalitasCilacap extends StatefulWidget {
  const MortalitasCilacap({Key? key}) : super(key: key);

  @override
  State<MortalitasCilacap> createState() => _MortalitasCilacapState();
}

RepositoryLongform repositorylongform = RepositoryLongform();

class _MortalitasCilacapState extends State<MortalitasCilacap> {
  late List<_ChartData> data;
  late List<_ChartData1> data1;
  late TooltipBehavior tooltip;
  late TooltipBehavior tooltip1;

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
          'INDIKATOR MORTALITAS',
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
      body: FutureBuilder(
        future: repositorylongform.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isilongform = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                double imrlfClp = double.parse(isilongform[index = 9].clp);
                double cmrlfClp = double.parse(isilongform[index = 10].clp);
                double u5mrlfClp = double.parse(isilongform[index = 11].clp);

                double imrlfJateng = double.parse(
                  isilongform[index = 9].jateng,
                );
                double cmrlfJateng = double.parse(
                  isilongform[index = 10].jateng,
                );
                double u5mrlfJateng = double.parse(
                  isilongform[index = 11].jateng,
                );

                double imrsp2010Clp = double.parse(
                  isilongform[index = 9].clp_sp2010,
                );
                double imrsp2010Jateng = double.parse(
                  isilongform[index = 9].jateng_sp2010,
                );

                //Grafik IMR
                data = [
                  _ChartData("Cilacap", imrsp2010Clp, imrlfClp),
                  _ChartData("Jawa Tengah", imrsp2010Jateng, imrlfJateng),
                ];

                //Grafik IMR, CMR, U5MR
                data1 = [
                  _ChartData1("Cilacap", imrlfClp, cmrlfClp, u5mrlfClp),
                  _ChartData1(
                    "Jawa Tengah",
                    imrlfJateng,
                    cmrlfJateng,
                    u5mrlfJateng,
                  ),
                ];

                tooltip = TooltipBehavior(enable: true);
                tooltip1 = TooltipBehavior(enable: true);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        child: const Text(
                          "Indikator Mortalitas di Kabupaten Cilacap dan Jawa Tengah Hasil Long Form SP2020 dan SP2010 ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        //height: screenHeight * 0.68,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      "Indikator",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      right: 0,
                                      top: 15,
                                      bottom: 15,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      "Cilacap",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                      top: 15,
                                      bottom: 15,
                                    ),
                                    color: Colors.blue,
                                    child: const Text(
                                      "Jateng",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.06,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      child: const Text(
                                        "IMR Long Form SP2020",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(imrlfClp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(imrlfJateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.06,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: const Text(
                                        "CMR Long Form SP2020",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(cmrlfClp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(cmrlfJateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.06,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: const Text(
                                        "U5MR Long Form SP2020",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(u5mrlfClp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(u5mrlfJateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.06,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: const Text(
                                        "IMR Hasil SP2010",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(imrsp2010Clp, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        Format.convertTo(imrsp2010Jateng, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey.shade200, thickness: 3),
                          ],
                        ),
                      ),

                      const Divider(height: 15, color: Colors.transparent),

                      //Grafik IMR
                      SizedBox(
                        height: screenHeight * 0.40,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'IMR Kabupaten Cilacap dan Jawa Tengah Hasil SP2010 dan Long Form SP2020',
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
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          legend: Legend(
                            // Visibility of legend
                            overflowMode: LegendItemOverflowMode.wrap,
                            textStyle: const TextStyle(fontSize: 11),
                            isVisible: true,
                            position: LegendPosition.bottom,
                          ),
                          primaryYAxis: NumericAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                            numberFormat: NumberFormat.decimalPattern('vi_VN'),
                            minimum: 0,
                            maximum: 25,
                            interval: 5,
                          ),
                          tooltipBehavior: tooltip,
                          series: <CartesianSeries>[
                            ColumnSeries<_ChartData, String>(
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
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              name: 'IMR SP2010',
                              color: const Color.fromARGB(255, 240, 164, 50),
                            ),
                            ColumnSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y1,
                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              name: 'IMR Long Form SP2020',
                              color: const Color.fromARGB(255, 170, 240, 80),
                            ),
                          ],
                        ),
                      ),

                      const Divider(height: 15, color: Colors.transparent),
                      //Grafik IMR, CMR, U5MR
                      SizedBox(
                        height: screenHeight * 0.45,
                        width: screenWidth,
                        child: SfCartesianChart(
                          title: ChartTitle(
                            text:
                                'Angka Kematian Bayi (Infant Mortality Rate/IMR), Angka Kematian Anak 1-4 Tahun (Children Mortality Rate/CMR) dan Angka Kematian Balita (Under 5 Mortality Rate/U5MR) di Kabupaten Cilacap dan Jawa Tengah hasil LF SP2020',
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
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          legend: Legend(
                            // Visibility of legend
                            overflowMode: LegendItemOverflowMode.wrap,
                            textStyle: const TextStyle(fontSize: 11),
                            isVisible: true,
                            position: LegendPosition.bottom,
                          ),
                          primaryYAxis: NumericAxis(
                            numberFormat: NumberFormat.decimalPattern('vi_VN'),
                            majorGridLines: const MajorGridLines(width: 0),
                            minimum: 0,
                            maximum: 20,
                            interval: 5,
                          ),
                          tooltipBehavior: tooltip1,
                          series: <CartesianSeries>[
                            ColumnSeries<_ChartData1, String>(
                              dataSource: data1,
                              xValueMapper: (_ChartData1 data1, _) => data1.x,
                              yValueMapper: (_ChartData1 data1, _) => data1.y,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'IMR',
                              color: const Color.fromARGB(255, 12, 110, 238),
                            ),
                            ColumnSeries<_ChartData1, String>(
                              dataSource: data1,
                              xValueMapper: (_ChartData1 data1, _) => data1.x,
                              yValueMapper: (_ChartData1 data1, _) => data1.y1,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                labelAlignment: ChartDataLabelAlignment.outer,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'CMR',
                              color: const Color.fromARGB(255, 238, 121, 12),
                            ),
                            ColumnSeries<_ChartData1, String>(
                              dataSource: data1,
                              xValueMapper: (_ChartData1 data1, _) => data1.x,
                              yValueMapper: (_ChartData1 data1, _) => data1.y2,

                              // Sorting based on the specified field
                              //sortingOrder: SortingOrder.descending,
                              //sortFieldValueMapper: (_ChartData data, _) =>
                              //data.y,
                              dataLabelSettings: const DataLabelSettings(
                                // Renders the data label
                                isVisible: true,
                                labelAlignment: ChartDataLabelAlignment.outer,
                                textStyle: TextStyle(fontSize: 11),
                              ),
                              width: 0.9, // Width of the bars
                              spacing: 0, // Spacing between the bars
                              name: 'U5MR',
                              color: const Color.fromARGB(255, 37, 233, 54),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        child: Text(
                          "Klik pada legenda untuk menonaktifkan/mengaktifkan series/kelompok data",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 0.01 * screenHeight),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Penjelasan:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Angka Kematian Bayi/AKB (Infant Mortality Rate/IMR) menunjukkan banyaknya kematian bayi berumur di bawah satu tahun per 1.000 kelahiran hidup pada tahun tertentu.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Selama periode satu dekade bonus demografi Indonesia, Angka Kematian Bayi (AKB) di Kabupaten Cilacap menurun signifikan dari 23 per 1.000 kelahiran hidup hasil Sensus Penduduk 2010 menjadi 13,17 per 1.000 kelahiran hidup hasil Long Form SP2020. Peningkatan persentase bayi yang mendapat imunisasi lengkap serta peningkatan rata-rata lama pemberian ASI (sumber: Susenas Tahun 2019–2022) membuat bayi semakin mampu bertahan hidup.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Angka Kematian Anak 1-4 Tahun (Children Mortality Rate/CMR) sebesar 2,13 di Kabupaten Cilacap, menunjukkan bahwa terdapat sekitar 2 kematian anak umur 1-4 tahun per 1.000 kelahiran hidup di Kabupaten Cilacap.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Sementara itu Angka Kematian Balita/Under 5 Mortality Rate (U5MR) sebesar 15,30 menunjukkan bahwa dari 1.000 balita di Kabupaten Cilacap, sekitar 15-16 orang diantaranya tidak dapat berhasil mencapai usia tepat 5 (lima) tahun.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(height: 0.04 * screenHeight),
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
  _ChartData(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}

class _ChartData1 {
  _ChartData1(this.x, this.y, this.y1, this.y2);
  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}
