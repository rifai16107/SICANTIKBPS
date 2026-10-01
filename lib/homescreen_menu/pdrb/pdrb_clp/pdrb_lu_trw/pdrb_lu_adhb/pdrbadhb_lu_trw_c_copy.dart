// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//PDRB ADHB 2022-2024

void main() => runApp(const PdrbadhbLuTrwC());

class PdrbadhbLuTrwC extends StatelessWidget {
  const PdrbadhbLuTrwC({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    //double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Row(
              children: const [FixedColumnWidget(), ScrollableColumnWidget()],
            ),
          ),
          const CatatanWidget(),
        ],
      ),
    );
  }
}

Future<List<Data>> fetchData() async {
  var url = Uri.parse('https://bps-3301-asap.my.id/api/pdrb-trw-lapu17-adhb');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    var cokk = jsonDecode(response.body);
    return (cokk['data'] as List).map((data) => Data.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class Data {
  final int id;
  final String sektor;
  final String trw1;
  final String trw2;
  final String trw3;
  final String trw4;
  final String total;
  final String tahun;

  Data({
    required this.id,
    required this.sektor,
    required this.trw1,
    required this.trw2,
    required this.trw3,
    required this.trw4,
    required this.total,
    required this.tahun,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      sektor: json['sektor'],
      trw1: json['trw1'],
      trw2: json['trw2'],
      trw3: json['trw3'],
      trw4: json['trw4'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class FixedColumnWidget extends StatelessWidget {
  const FixedColumnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DataTable(
      columnSpacing: 5,
      dataRowMinHeight: screenHeight * 0.056,
      dataRowMaxHeight: screenHeight * 0.056,
      headingRowColor: WidgetStateProperty.all(
        const Color.fromARGB(255, 255, 165, 0),
      ),
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey, width: 1)),
      ),
      columns: [
        DataColumn(
          label: SizedBox(
            width: screenWidth * 0.25,
            child: const Text(
              textAlign: TextAlign.center,
              'Sektor',
              //maxLines: 2,
              //overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(
              Text(
                'Pertanian, Kehutanan dan Perikanan',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Pertambangan dan Penggalian',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Industr iPengolahan',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Pengadaan Listrik dan Gas',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Pengadaan Air, Pengelolaan Sampah, Limbah dan Daur Ulang',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Konstruksi',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Perdagangan Besar dan Eceran, Reparasi Mobil dan Sepeda Motor',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Transportasi dan Pergudangan',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Penyediaan Akomodasi\n'
                'dan Makan Minum',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Informasi dan\n'
                'Komunikasi',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Jasa Keuangan\n'
                'dan Asuransi',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Real Estate',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Jasa Perusahaan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Administrasi Pemerintahan, Pertahanan,\n'
                'dan Jaminan Sosial Wajib',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Jasa Pendidikan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'Jasa Kesehatan dan\n'
                'Kegiatan Sosial',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Jasa Lainnya',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
          cells: [
            DataCell(
              Text(
                'PDRB',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
      ],
      showBottomBorder: true,
    );
  }
}

class ScrollableColumnWidget extends StatelessWidget {
  const ScrollableColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: FutureBuilder<List<Data>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                child: DataTable(
                  sortColumnIndex: 0,
                  sortAscending: true,
                  border: const TableBorder(
                    horizontalInside: BorderSide(
                      width: 0,
                      color: Color.fromARGB(255, 224, 230, 235),
                      style: BorderStyle.solid,
                    ),
                  ),
                  columnSpacing: 5,
                  dataRowMinHeight: screenHeight * 0.056,
                  dataRowMaxHeight: screenHeight * 0.056,
                  headingTextStyle: const TextStyle(
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                    color: Colors.white,
                  ),
                  headingRowColor: WidgetStateColor.resolveWith(
                    (states) => const Color.fromARGB(255, 255, 165, 0),
                  ),
                  columns: [
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.12,
                        //width: screenWidth * 0.225,
                        child: const Text(
                          'Trw 1',
                          //maxLines: 2,
                          //overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          //style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          //fontWeight: FontWeight.bold,
                          //fontSize: 15),
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.12,
                        //width: screenWidth * 0.225,
                        child: const Text(
                          'Trw 2',
                          //maxLines: 2,
                          //overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          //style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          //fontWeight: FontWeight.bold,
                          //fontSize: 15),
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.12,
                        //width: screenWidth * 0.225,
                        child: const Text(
                          'Trw 3',
                          //maxLines: 2,
                          //overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          //style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          //fontWeight: FontWeight.bold,
                          //fontSize: 15),
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.12,
                        //width: screenWidth * 0.225,
                        child: const Text(
                          'Trw 4',
                          //maxLines: 2,
                          //overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          //style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          //fontWeight: FontWeight.bold,
                          //fontSize: 15),
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.12,
                        child: const Text(
                          'Total',
                          //maxLines: 2,
                          //overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          //style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          //fontWeight: FontWeight.bold,
                          //fontSize: 15),
                        ),
                      ),
                      numeric: true,
                    ),
                  ],
                  rows: List<DataRow>.generate(snapshot.data!.length, (index) {
                    var data = snapshot.data![index];
                    return DataRow(
                      color: WidgetStateColor.resolveWith(
                        (states) => index % 2 == 1
                            ? const Color.fromRGBO(34, 150, 243, 0.2)
                            : const Color.fromARGB(0, 140, 233, 148),
                      ),
                      cells: [
                        DataCell(
                          Text(
                            data.trw1,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.trw2,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                          //textAlign: TextAlign.right,
                        ),
                        DataCell(
                          Text(
                            data.trw3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.trw4,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.total,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  showBottomBorder: true,
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          // By default show a loading spinner.
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class CatatanWidget extends StatelessWidget {
  const CatatanWidget({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth,
      height: 0.28 * screenHeight,
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Keterangan:",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    text: '*     :',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Angka Sementara.',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    text: '**   :',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Angka Sangat Sementara.',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
