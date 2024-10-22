import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const PddkJatengKelum());

class PddkJatengKelum extends StatelessWidget {
  const PddkJatengKelum({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.060 * screenHeight,
          flexibleSpace: Center(
            child: Column(
              children: const [
                Text(
                  'Penduduk Menurut Kelompok Umur dan Jenis Kelamin di Jawa Tengah Hasil Sensus Penduduk 2020',
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
  var url =
      Uri.parse('https://bps-3301-asap.my.id/api/sensus-pddk-jateng-kelum');
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
  final String kelum;
  final String lk;
  final String pr;
  final String lkpr;
  final String tahun;

  Data(
      {required this.id,
      required this.kelum,
      required this.lk,
      required this.pr,
      required this.lkpr,
      required this.tahun});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      kelum: json['kelum'],
      lk: json['lk'],
      pr: json['pr'],
      lkpr: json['lkpr'],
      tahun: json['tahun'],
    );
  }
}

class FixedColumnWidget extends StatelessWidget {
  const FixedColumnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DataTable(
      columnSpacing: 5,
      dataRowHeight: screenHeight * 0.035,
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
                width: screenWidth * 0.20,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Kelompok Umur',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text(
            '          0 - 4',
            textAlign: TextAlign.center,
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
                '          5 - 9',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        10 - 14',
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
                '        15 - 19',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        20 - 24',
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
                '        25 - 29',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        30 -34',
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
                '        35 - 39',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        40 - 44',
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
                '        45 - 49',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        50 - 54',
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
                '        55 - 59',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        60 - 64',
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
                '        65 - 69',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        70 - 74',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 13,
            ),
          ))
        ]),
        DataRow(
            color: MaterialStatePropertyAll(Color.fromRGBO(34, 150, 243, 0.2)),
            cells: [
              DataCell(Text(
                '            75+',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '        Jumlah',
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
                  dataRowHeight: screenHeight * 0.035,
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
                          width: screenWidth * 0.18,
                          child: const Text(
                            'Lk',
                            //maxLines: 2,
                            //overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: screenWidth * 0.18,
                          child: const Text(
                            'Pr',
                            //maxLines: 2,
                            //overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: screenWidth * 0.18,
                          child: const Text(
                            'Total',
                            //maxLines: 2,
                            //overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                  ],
                  rows: List<DataRow>.generate(
                    snapshot.data!.length,
                    (index) {
                      var data = snapshot.data![index];
                      return DataRow(
                          color: MaterialStateColor.resolveWith((states) =>
                              index % 2 == 1
                                  ? const Color.fromRGBO(34, 150, 243, 0.2)
                                  : const Color.fromARGB(0, 140, 233, 148)),
                          cells: [
                            DataCell(
                              Text(
                                (Format.convertTo(double.tryParse(data.lk), 0)),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                (Format.convertTo(double.tryParse(data.pr), 0)),
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
                                (Format.convertTo(
                                    double.tryParse(data.lkpr), 0)),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
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
