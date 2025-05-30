// ignore_for_file: non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_bkn_angkatan_kerja.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:bps_cilacap/format_angka.dart';

class IsiBakB extends StatefulWidget {
  const IsiBakB({super.key});

  @override
  State<IsiBakB> createState() => _IsiBakBState();
}

RepositoryBknAngkatanKerja repositoryBknAngkatanKerja =
    RepositoryBknAngkatanKerja();

class _IsiBakBState extends State<IsiBakB> {
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
      future: repositoryBknAngkatanKerja.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ignore: unused_local_variable
          List isitenagakerja = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // isi data

              int akPr = int.parse(isitenagakerja[index = 8].angkatan_kerja);
              int bkjPr = int.parse(isitenagakerja[index = 8].bekerja);
              int pgrPr = int.parse(isitenagakerja[index = 8].pengangguran);
              int bakPr =
                  int.parse(isitenagakerja[index = 8].bkn_angkatan_kerja);
              int sklPr = int.parse(isitenagakerja[index = 8].sekolah);
              int rutaPr = int.parse(isitenagakerja[index = 8].urus_ruta);
              int lainPr = int.parse(isitenagakerja[index = 8].lainnya);
              int jumlahPr = int.parse(isitenagakerja[index = 8].jumlah);

              int akLk = int.parse(isitenagakerja[index = 3].angkatan_kerja);
              int bkjLk = int.parse(isitenagakerja[index = 3].bekerja);
              int pgrLk = int.parse(isitenagakerja[index = 3].pengangguran);
              int bakLk =
                  int.parse(isitenagakerja[index = 3].bkn_angkatan_kerja);
              int sklLk = int.parse(isitenagakerja[index = 3].sekolah);
              int rutaLk = int.parse(isitenagakerja[index = 3].urus_ruta);
              int lainLk = int.parse(isitenagakerja[index = 3].lainnya);
              int jumlahLk = int.parse(isitenagakerja[index = 3].jumlah);

              double JmlBekerja =
                  double.parse(isitenagakerja[index = 8].bekerja) +
                      double.parse(isitenagakerja[index = 3].bekerja);
              double JmlPenganggur =
                  double.parse(isitenagakerja[index = 8].pengangguran) +
                      double.parse(isitenagakerja[index = 3].pengangguran);
              double JmlSekolah =
                  double.parse(isitenagakerja[index = 8].sekolah) +
                      double.parse(isitenagakerja[index = 3].sekolah);
              double JmlRuta =
                  double.parse(isitenagakerja[index = 8].urus_ruta) +
                      double.parse(isitenagakerja[index = 3].urus_ruta);
              double JmlLainnya =
                  double.parse(isitenagakerja[index = 8].lainnya) +
                      double.parse(isitenagakerja[index = 3].lainnya);

              toString();
              data = [
                _ChartData("Bekerja", JmlBekerja),
                _ChartData("Pengangguran", JmlPenganggur),
                _ChartData("Sekolah", JmlSekolah),
                _ChartData("Urus Rumah Tangga", JmlRuta),
                _ChartData("Lainnya", JmlLainnya),
              ];
              tooltip = TooltipBehavior(enable: true);

              return Container(
                padding: const EdgeInsets.all(2),
                child: Column(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Jenis Kegiatan",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.green,
                                  height: screenHeight * 0.05,
                                  child: const Center(
                                    child: Text(
                                      "Lk",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.green,
                                  height: screenHeight * 0.05,
                                  child: const Center(
                                    child: Text(
                                      "Pr",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.green,
                                  height: screenHeight * 0.05,
                                  child: const Center(
                                    child: Text(
                                      "Lk+Pr",
                                      style: TextStyle(
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
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Text(
                                    "Angkatan Kerja",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(akLk, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(akPr, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo((akLk + akPr), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Text(
                                    "Bekerja",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(bkjLk, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(bkjPr, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo((bkjLk + bkjPr), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 5),
                                  height: screenHeight * 0.06,
                                  child: const Text(
                                    "Pengangguran Terbuka",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(pgrLk, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(pgrPr, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo((pgrLk + pgrPr), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Text(
                                    "Bukan Angkatan Kerja",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(bakLk, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(bakPr, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo((bakLk + bakPr), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Text(
                                    "Sekolah",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(sklLk, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(sklPr, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo((sklLk + sklPr), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Text(
                                    "Urus Rumah Tangga",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(rutaLk, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(rutaPr, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo((rutaLk + rutaPr), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 5),
                                  height: screenHeight * 0.04,
                                  child: const Text(
                                    "Lainnya",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(lainLk, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(lainPr, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo((lainLk + lainPr), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  color: Colors.green,
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  child: const Text(
                                    "Penduduk Usia Kerja",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  color: Colors.green,
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 0),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(jumlahLk, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  color: Colors.green,
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 0),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(jumlahPr, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  color: Colors.green,
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 0),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(
                                          (jumlahLk + jumlahPr), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                                    SizedBox(
                                      height: screenHeight * 0.45,
                                      width: screenWidth,
                                      child: SfCartesianChart(
                                          title: ChartTitle(
                                              text:
                                                  'Penduduk Usia Kerja Menurut Kegiatan Utama di Kabupaten Cilacap',
                                              // Aligns the chart title to left
                                              alignment: ChartAlignment.center,
                                              textStyle: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 10, 10, 10),
                                                fontFamily: 'Roboto',
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                              )),
                                          primaryXAxis: CategoryAxis(
                                            labelRotation: -45,
                                          ),
                                          legend: Legend(
                                            // Visibility of legend

                                            overflowMode:
                                                LegendItemOverflowMode.wrap,
                                            textStyle: const TextStyle(
                                              fontSize: 11,
                                            ),
                                            //isVisible: true,
                                            //position: LegendPosition.bottom
                                          ),
                                          primaryYAxis: NumericAxis(
                                              numberFormat:
                                                  NumberFormat.decimalPattern(
                                                      'vi_VN'),
                                              majorGridLines:
                                                  const MajorGridLines(
                                                      width: 0),
                                              minimum: 0,
                                              maximum: 1000000,
                                              interval: 200000),
                                          tooltipBehavior: tooltip,
                                          series: <CartesianSeries>[
                                            ColumnSeries<_ChartData, String>(
                                              dataSource: data,
                                              xValueMapper:
                                                  (_ChartData data, _) =>
                                                      data.x,
                                              yValueMapper:
                                                  (_ChartData data, _) =>
                                                      data.y,
                                              // Sorting based on the specified field
                                              //sortingOrder: SortingOrder.descending,
                                              //sortFieldValueMapper: (_ChartData data, _) =>
                                              //data.y,
                                              dataLabelSettings:
                                                  const DataLabelSettings(
                                                      // Renders the data label
                                                      isVisible: true,
                                                      textStyle: TextStyle(
                                                          fontSize: 10)),
                                              name: 'Jumlah Penduduk',
                                              color: const Color.fromARGB(
                                                  255, 6, 103, 230),
                                            ),
                                          ]),
                                    )
                                  ],
                                ))
                          ]),
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
        } else {
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        }
      },
    ));
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
