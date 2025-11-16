import 'dart:async';
import 'dart:convert';
//import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const Utl());

class Utl extends StatelessWidget {
  const Utl({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.075 * screenHeight,
          flexibleSpace: Center(
            child: Column(
              children: const [
                Text(
                  'Jumlah Usaha Pertanian Lainnya (UTL) Menurut Kecamatan dan Subsektor di Kabupaten Cilacap (unit)',
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
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Row(
              children: const [FixedColumnWidget(), ScrollableColumnWidget()],
            ),
          ),
        ),
      ),
    );
  }
}

Future<List<Data>> fetchData() async {
  var url = Uri.parse('https://bps-3301-asap.my.id/api/sensus-tani-upb-utl');
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
  final String utl;
  final String pangan_utl;
  final String horti_utl;
  final String kebun_utl;
  final String ternak_utl;
  final String ikan_utl;
  final String hutan_utl;
  final String jasa_utl;
  final String tahun;

  Data({
    required this.id,
    required this.kecamatan,
    required this.utl,
    required this.pangan_utl,
    required this.horti_utl,
    required this.kebun_utl,
    required this.ternak_utl,
    required this.ikan_utl,
    required this.hutan_utl,
    required this.jasa_utl,
    required this.tahun,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      kecamatan: json['kecamatan'],
      utl: json['utl'],
      pangan_utl: json['pangan_utl'],
      horti_utl: json['horti_utl'],
      kebun_utl: json['kebun_utl'],
      ternak_utl: json['ternak_utl'],
      ikan_utl: json['ikan_utl'],
      hutan_utl: json['hutan_utl'],
      jasa_utl: json['jasa_utl'],
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
    return DataTable(
      columnSpacing: 10,
      dataRowMinHeight: screenHeight * 0.028,
      dataRowMaxHeight: screenHeight * 0.028,
      headingRowColor: WidgetStateProperty.all(
        const Color.fromARGB(223, 57, 190, 88),
      ),
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey, width: 1)),
      ),
      columns: const [
        DataColumn(label: Text(textAlign: TextAlign.center, '     Kecamatan')),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(
              Text(
                '010  Dayeuhluhur',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '020  Wanareja',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '030  Majenang',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '040  Cimanggu',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '050  Karangpucung',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '060  Cipari',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '070 Sidareja',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '080  Kedungreja',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '090  Patimuan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '100  Gandrungmangu',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '110  Bantarsari',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '120  Kawunganten',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '121  Kampung Laut',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '130 Jeruklegi',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '140  Kesugihan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '150  Adipala',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '160 Maos',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '170  Sampang',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '180  Kroya',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '190  Binangun',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '200  Nusawungu',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '710  Cilacap Selatan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '720  Cilacap Tengah',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          color: WidgetStatePropertyAll(Color.fromARGB(255, 192, 241, 211)),
          cells: [
            DataCell(
              Text(
                '730  Cilacap Utara',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          //color: MaterialStatePropertyAll(Color.fromARGB(223, 57, 190, 88)),
          cells: [
            DataCell(
              Text(
                'Kabupaten Cilacap',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
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
                  columnSpacing: 10,
                  dataRowMinHeight: screenHeight * 0.028,
                  dataRowMaxHeight: screenHeight * 0.028,
                  headingTextStyle: const TextStyle(
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                    color: Colors.black,
                  ),
                  headingRowColor: WidgetStateColor.resolveWith(
                    (states) => const Color.fromARGB(223, 57, 190, 88),
                  ),
                  columns: const [
                    DataColumn(
                      label: SizedBox(
                        width: 50,
                        child: Text(
                          'UTL',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: 80,
                        child: Text(
                          'UTL  Tan.Pangan',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: 80,
                        child: Text(
                          'UTL Hortikultura',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                        width: 80,
                        child: Text(
                          'UTL Perkebunan',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                        width: 70,
                        child: Text(
                          'UTL Peternakan',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                        width: 70,
                        child: Text(
                          'UTL Perikanan',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                        width: 70,
                        child: Text(
                          'UTL Kehutanan',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                        width: 70,
                        child: Text(
                          'UTL Jasa Pertanian',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                            ? const Color.fromARGB(255, 192, 241, 211)
                            : const Color.fromARGB(0, 140, 233, 148),
                      ),

                      cells: [
                        DataCell(
                          Text(
                            data.utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.pangan_utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                          //textAlign: TextAlign.right,
                        ),
                        DataCell(
                          Text(
                            data.horti_utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.kebun_utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.ternak_utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.ikan_utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.hutan_utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.jasa_utl.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
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
