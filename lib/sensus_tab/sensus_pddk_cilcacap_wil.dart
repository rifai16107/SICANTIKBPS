import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const PddkCilacapWil());

class PddkCilacapWil extends StatelessWidget {
  const PddkCilacapWil({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.065 * screenHeight,
          flexibleSpace: Center(
            child: Column(
              children: const [
                Text(
                  'Penduduk Menurut Kecamatan dan Jenis Kelamin di Kabupaten Cilacap Hasil Sensus Penduduk 2020',
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
      Uri.parse('https://bps-3301-asap.my.id/api/sensus-pddk-cilacap-wil');
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
  final String kecamatan;
  final String lk;
  final String pr;
  final String lkpr;
  final String tahun;

  Data(
      {required this.id,
      required this.kecamatan,
      required this.lk,
      required this.pr,
      required this.lkpr,
      required this.tahun});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      kecamatan: json['kecamatan'],
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DataTable(
      columnSpacing: 5,
      dataRowHeight: screenHeight * 0.028,
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
                  '   Kecamatan',
                  //maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text(
            '010  Dayeuhluhur',
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
                '020  Wanareja',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '030  Majenang',
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
                '040  Cimanggu',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '050  Karangpucung',
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
                '060  Cipari',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '070 Sidareja',
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
                '080  Kedungreja',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '090  Patimuan',
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
                '100  Gandrungmangu',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '110  Bantarsari',
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
                '120  Kawunganten',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '121  Kampung Laut',
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
                '130 Jeruklegi',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '140  Kesugihan',
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
                '150  Adipala',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '160 Maos',
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
                '170  Sampang',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '180  Kroya',
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
                '190  Binangun',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '200  Nusawungu',
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
                '710  Cilacap Selatan',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '720  Cilacap Tengah',
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
                '730  Cilacap Utara',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(
            //color: MaterialStatePropertyAll(Color.fromARGB(223, 57, 190, 88)),
            cells: [
              DataCell(Text(
                'Kabupaten Cilacap',
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
                  dataRowHeight: screenHeight * 0.0280,
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
                          width: screenWidth * 0.20,
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
                          width: screenWidth * 0.20,
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
                          width: screenWidth * 0.20,
                          child: const Text(
                            'Total',
                            //maxLines: 2,
                            //overflow: TextOverflow.ellipsis,
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
