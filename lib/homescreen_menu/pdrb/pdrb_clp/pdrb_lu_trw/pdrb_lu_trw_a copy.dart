import 'dart:async';
import 'dart:convert';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const PdrbLuTrw());

class PdrbLuTrw extends StatelessWidget {
  const PdrbLuTrw({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.1 * screenHeight,
          flexibleSpace: Center(
            child: Column(
              children: const [
                Text(
                  'PDRB Triwulanan ADHK (2010=100) Dengan Migas Menurut Lapangan Usaha di Kabupaten Cilacap (Milyar Rupiah)',
                  style: TextStyle(
                    color: Color.fromARGB(255, 17, 17, 17),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                    'geser kolom berisi data ke kiri untuk melihat isian kolom lainnya',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 17, 17),
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                    )),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Row(
              children: const [
                FixedColumnWidget(),
                ScrollableColumnWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<List<Data>> fetchData() async {
  var url = Uri.parse('https://bps-3301-asap.my.id/api/pdrb-trw-lapu');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    var cokk = jsonDecode(response.body);
    return (cokk['data'] as List).map((data) => Data.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

// ignore_for_file: non_constant_identifier_names
class Data {
  final int id;
  final String komponen;
  final String trw1;
  final String trw2;
  final String trw3;
  final String trw4;
  final String total;
  final String dis_trw1;
  final String dis_trw2;
  final String dis_trw3;
  final String dis_trw4;
  final String dis_total;
  final String tahun;

  Data(
      {required this.id,
      required this.komponen,
      required this.trw1,
      required this.trw2,
      required this.trw3,
      required this.trw4,
      required this.total,
      required this.dis_trw1,
      required this.dis_trw2,
      required this.dis_trw3,
      required this.dis_trw4,
      required this.dis_total,
      required this.tahun});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      komponen: json['komponen'],
      trw1: json['trw1'],
      trw2: json['trw2'],
      trw3: json['trw3'],
      trw4: json['trw4'],
      total: json['total'],
      dis_trw1: json['dis_trw1'],
      dis_trw2: json['dis_trw2'],
      dis_trw3: json['dis_trw3'],
      dis_trw4: json['dis_trw4'],
      dis_total: json['dis_total'],
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
      dataRowHeight: screenHeight * 0.05,
      headingRowColor: MaterialStateProperty.all(
        const Color.fromRGBO(34, 150, 243, 1),
      ),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      columns: [
        DataColumn(
            label: SizedBox(
                width: screenWidth * 0.25,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Lap. Usaha',
                  //maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text(
            'Sektor Primer',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 13,
            ),
          )),
        ]),
        DataRow(
            color: MaterialStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
            cells: [
              DataCell(Text(
                'Sektor Sekunder',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            'Sektor Tersier',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 13,
            ),
          )),
        ]),
        DataRow(
            color: MaterialStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
            cells: [
              DataCell(Text(
                'PDRB',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              )),
            ]),
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
                          style: BorderStyle.solid)),
                  columnSpacing: 10,
                  dataRowHeight: screenHeight * 0.050,
                  headingTextStyle: const TextStyle(
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                      letterSpacing: 0.0,
                      color: Colors.white),
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) => const Color.fromRGBO(34, 150, 243, 1),
                  ),
                  columns: [
                    DataColumn(
                        label: SizedBox(
                          width: screenWidth * 0.16,
                          child: const Text(
                            'Triwulan 1',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: screenWidth * 0.16,
                          child: const Text(
                            'Triwulan 2',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: screenWidth * 0.16,
                          child: const Text(
                            'Triwulan 3',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: screenWidth * 0.16,
                          child: const Text(
                            'Triwulan 4',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: screenWidth * 0.14,
                          child: const Text(
                            'Total',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            //style: TextStyle(
                            //fontStyle: FontStyle.italic,
                            //fontWeight: FontWeight.bold,
                            //fontSize: 15),
                          ),
                        ),
                        numeric: true),
                  ],
                  rows: List<DataRow>.generate(
                    4,
                    (index) {
                      var data = snapshot.data![index + 0];
                      return DataRow(
                          color: MaterialStateColor.resolveWith((states) =>
                              index % 2 == 1
                                  ? const Color.fromRGBO(34, 150, 243, 0.2)
                                  : const Color.fromARGB(0, 140, 233, 148)),
                          cells: [
                            DataCell(
                              Text(
                                data.trw1,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.5,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                data.trw2,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.5,
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
                                 fontSize: 12.5,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                data.trw4,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.5,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                data.total,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                 fontSize: 12.5,
                                ),
                              ),
                            ),
                          ]);
                    },
                  ).toList(),
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
