// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_ketimpangan.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class ketimpanganBankDuniaContent extends StatefulWidget {
  const ketimpanganBankDuniaContent({super.key});

  @override
  State<ketimpanganBankDuniaContent> createState() =>
      _ketimpanganBankDuniaContentState();
}

RepositoryKetimpangan repositoryketimpangan = RepositoryKetimpangan();

class _ketimpanganBankDuniaContentState
    extends State<ketimpanganBankDuniaContent> {
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
        appBar: AppBar(
          title: const Text(
            'Ketimpangan (Kriteria Bank Dunia)',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Center(
              child: Icon(
                BackIcons.circle_arrow,
                size: 40,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    constraints: BoxConstraints.tight(
                      Size(screenWidth, screenHeight),
                    ),
                    context: context,
                    builder: (context) {
                      return ListView(children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Text(
                                    "   Kriteria Bank Dunia membagi penduduk ke dalam 3 (tiga) kelompok pendapatan yaitu: 1) 40 persen kelompok penduduk berpendapatan rendah, 2) 40 persen kelompok penduduk berpendapatan sedang, dan 3) 20 persen kelompok berpendapatan tinggi.",
                                    textAlign: TextAlign.justify,
                                  ),
                                  Text(
                                    "   Pengelompokan seperti ini pada dasarnya sama dengan menggunakan cara desil (decile) yaitu 40 persen pertama sama dengan desil ke-4; 40 persen kedua sama dengan desil ke-8 dan 20 persen terakhir adalah desil ke-10. Dalam menentukan besarnya desil ke-i digunakan rumus :",
                                  ),
                                  Text(
                                    "   Ketimpangan pendapatan ditentukan berdasarkan besarnya jumlah pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah, dengan kriteria sebagai berikut:",
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                                './assets/images/modal/ketimpangan_modal.jpeg'),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "A. Ketimpangan Tinggi",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "   Bila persentase pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah lebih kecil dari 12 persen.",
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "B. Ketimpangan Sedang/Moderat",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "   Bila persentase pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah antara 12 persen sampai dengan 17 persen.",
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "C. Ketimpangan Rendah",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "   Bila persentase pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah lebih besar dari 17 persen.",
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ]);
                    },
                  );
                },
                icon: const Icon(Icons.info_outlined))
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(2),
            child: FutureBuilder(
              future: repositoryketimpangan.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List isiketimpangan = snapshot.data as List;
                  return PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      String th1 = isiketimpangan[index = 0].created_at[0] +
                          isiketimpangan[index = 0].created_at[1] +
                          isiketimpangan[index = 0].created_at[2] +
                          isiketimpangan[index = 0].created_at[3];
                      String th2 = isiketimpangan[index = 1].created_at[0] +
                          isiketimpangan[index = 1].created_at[1] +
                          isiketimpangan[index = 1].created_at[2] +
                          isiketimpangan[index = 1].created_at[3];
                      String th3 = isiketimpangan[index = 2].created_at[0] +
                          isiketimpangan[index = 2].created_at[1] +
                          isiketimpangan[index = 2].created_at[2] +
                          isiketimpangan[index = 2].created_at[3];
                      String th4 = isiketimpangan[index = 3].created_at[0] +
                          isiketimpangan[index = 3].created_at[1] +
                          isiketimpangan[index = 3].created_at[2] +
                          isiketimpangan[index = 3].created_at[3];
                      String th5 = isiketimpangan[index = 4].created_at[0] +
                          isiketimpangan[index = 4].created_at[1] +
                          isiketimpangan[index = 4].created_at[2] +
                          isiketimpangan[index = 4].created_at[3];

                      double PddkRendah1 =
                          double.parse(isiketimpangan[index = 0].rendah);
                      double PddkRendah2 =
                          double.parse(isiketimpangan[index = 1].rendah);
                      double PddkRendah3 =
                          double.parse(isiketimpangan[index = 2].rendah);
                      double PddkRendah4 =
                          double.parse(isiketimpangan[index = 3].rendah);
                      double PddkRendah5 =
                          double.parse(isiketimpangan[index = 4].rendah);

                      double PddkMenengah1 =
                          double.parse(isiketimpangan[index = 0].menengah);
                      double PddkMenengah2 =
                          double.parse(isiketimpangan[index = 1].menengah);
                      double PddkMenengah3 =
                          double.parse(isiketimpangan[index = 2].menengah);
                      double PddkMenengah4 =
                          double.parse(isiketimpangan[index = 3].menengah);
                      double PddkMenengah5 =
                          double.parse(isiketimpangan[index = 4].menengah);

                      double PddkTinggi1 =
                          double.parse(isiketimpangan[index = 0].tinggi);
                      double PddkTinggi2 =
                          double.parse(isiketimpangan[index = 1].tinggi);
                      double PddkTinggi3 =
                          double.parse(isiketimpangan[index = 2].tinggi);
                      double PddkTinggi4 =
                          double.parse(isiketimpangan[index = 3].tinggi);
                      double PddkTinggi5 =
                          double.parse(isiketimpangan[index = 4].tinggi);

                      toString();
                      data = [
                        _ChartData(
                            th1, PddkRendah1, PddkMenengah1, PddkTinggi1),
                        _ChartData(
                            th2, PddkRendah2, PddkMenengah2, PddkTinggi2),
                        _ChartData(
                            th3, PddkRendah3, PddkMenengah3, PddkTinggi3),
                        _ChartData(
                            th4, PddkRendah4, PddkMenengah4, PddkTinggi4),
                        _ChartData(
                            th5, PddkRendah5, PddkMenengah5, PddkTinggi5),
                      ];
                      tooltip = TooltipBehavior(enable: true);

                      return Container(
                        height: screenHeight,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 2),
                                child: Text(
                                  "Distribusi Persentase Pendapatan Penduduk Kabupaten Cilacap menurut Kriteria Bank Dunia, $th1-$th5",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )),
                            const Divider(
                              color: Colors.white,
                              height: 5,
                              thickness: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        height: screenHeight * 0.06,
                                        color: Colors.green,
                                        child: const Center(
                                          child: Text(
                                            "Desil Penduduk(%)",
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
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            th1.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            th2.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            th3.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            th4.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            th5.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 0, right: 0),
                                        height: screenHeight * 0.06,
                                        child: const Center(
                                          child: Text(
                                            "Rendah (40%)",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkRendah1.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkRendah2.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkRendah3.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkRendah4.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkRendah5.toString()),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 0, right: 0),
                                        height: screenHeight * 0.06,
                                        child: const Center(
                                          child: Text(
                                            "Menengah (40%)",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkMenengah1.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkMenengah2.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkMenengah3.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkMenengah4.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkMenengah5.toString()),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 5, right: 5),
                                        height: screenHeight * 0.06,
                                        child: const Center(
                                          child: Text(
                                            "Tinggi (20%)",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkTinggi1.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkTinggi2.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkTinggi3.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkTinggi4.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(PddkTinggi5.toString()),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        height: screenHeight * 0.06,
                                        color: Colors.green,
                                        child: const Center(
                                          child: Text(
                                            "Jumlah",
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
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            (PddkRendah1 +
                                                    PddkMenengah1 +
                                                    PddkTinggi1)
                                                .toStringAsFixed(0),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            (PddkRendah2 +
                                                    PddkMenengah2 +
                                                    PddkTinggi2)
                                                .toStringAsFixed(0),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            (PddkRendah3 +
                                                    PddkMenengah3 +
                                                    PddkTinggi3)
                                                .toStringAsFixed(0),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            (PddkRendah4 +
                                                    PddkMenengah4 +
                                                    PddkTinggi4)
                                                .toStringAsFixed(0),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.green,
                                        height: screenHeight * 0.06,
                                        child: Center(
                                          child: Text(
                                            (PddkRendah5 +
                                                    PddkMenengah5 +
                                                    PddkTinggi5)
                                                .toStringAsFixed(0),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            const Divider(
                              color: Colors.white,
                              height: 15,
                              thickness: 10,
                            ),

                            //Grafik
                            SizedBox(
                              height: screenHeight * 0.45,
                              width: screenWidth,
                              child: SfCartesianChart(
                                  title: ChartTitle(
                                      text:
                                          'Distribusi Persentase Pendapatan Penduduk Kabupaten Cilacap menurut Kriteria Bank Dunia, $th1-$th5',
                                      // Aligns the chart title to left
                                      alignment: ChartAlignment.center,
                                      textStyle: const TextStyle(
                                        color: Color.fromARGB(255, 10, 10, 10),
                                        fontFamily: 'Roboto',
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      )),
                                  primaryXAxis: CategoryAxis(),
                                  legend: Legend(
                                      // Visibility of legend
                                      overflowMode: LegendItemOverflowMode.wrap,
                                      textStyle: const TextStyle(
                                        fontSize: 11,
                                      ),
                                      isVisible: true,
                                      position: LegendPosition.bottom),
                                  primaryYAxis: NumericAxis(
                                      majorGridLines:
                                          const MajorGridLines(width: 0),
                                      minimum: 0,
                                      maximum: 70,
                                      interval: 15),
                                  tooltipBehavior: tooltip,
                                  series: <CartesianSeries>[
                                    ColumnSeries<_ChartData, String>(
                                      dataSource: data,
                                      xValueMapper: (_ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (_ChartData data, _) =>
                                          data.y,
                                      // Sorting based on the specified field
                                      //sortingOrder: SortingOrder.descending,
                                      //sortFieldValueMapper: (_ChartData data, _) =>
                                      //data.y,
                                      dataLabelSettings:
                                          const DataLabelSettings(
                                              // Renders the data label
                                              isVisible: true,
                                              textStyle:
                                                  TextStyle(fontSize: 10)),
                                      name: 'Pddk 40% bawah',
                                      color: const Color.fromARGB(
                                          255, 240, 164, 50),
                                    ),
                                    ColumnSeries<_ChartData, String>(
                                      dataSource: data,
                                      xValueMapper: (_ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (_ChartData data, _) =>
                                          data.y1,
                                      // Sorting based on the specified field
                                      //sortingOrder: SortingOrder.descending,
                                      //sortFieldValueMapper: (_ChartData data, _) =>
                                      //data.y,
                                      dataLabelSettings:
                                          const DataLabelSettings(
                                              // Renders the data label
                                              isVisible: true,
                                              textStyle:
                                                  TextStyle(fontSize: 10)),
                                      name: 'Pddk 40% menengah',
                                      color: const Color.fromARGB(
                                          255, 170, 240, 80),
                                    ),
                                    ColumnSeries<_ChartData, String>(
                                      dataSource: data,
                                      xValueMapper: (_ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (_ChartData data, _) =>
                                          data.y2,
                                      // Sorting based on the specified field
                                      //sortingOrder: SortingOrder.descending,
                                      //sortFieldValueMapper: (_ChartData data, _) =>
                                      //data.y,
                                      dataLabelSettings:
                                          const DataLabelSettings(
                                              // Renders the data label
                                              isVisible: true,
                                              textStyle:
                                                  TextStyle(fontSize: 10)),
                                      name: 'Pddk 20% tinggi',
                                      color: Color.fromARGB(255, 94, 156, 236),
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
                  return const Center(
                      child: CircularProgressIndicator(strokeWidth: 3));
                }
              },
            )));
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.y1, this.y2);

  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}
