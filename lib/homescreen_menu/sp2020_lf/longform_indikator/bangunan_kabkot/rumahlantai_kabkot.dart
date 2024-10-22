import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const RumahlantaiKabkot());

class RumahlantaiKabkot extends StatelessWidget {
  const RumahlantaiKabkot({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.082 * screenHeight,
          flexibleSpace: Center(
            child: Column(
              children: const [
                Text(
                  'Jumlah Rumah Tangga Menurut Jenis Lantai Terluas Di Jawa Tengah, Hasil Pendataan Long Form SP2020',
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
  var url = Uri.parse('https://bps-3301-asap.my.id/api/longform-rumahlantai');
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
  final String wilayah;
  final String marmer_granit;
  final String keramik;
  final String parket_vinil_karpet_ubin;
  final String kayu_papan;
  final String semen_bata;
  final String tanah;
  final String lainnya;
  final String total;
  final String tahun;

  Data(
      {required this.id,
      required this.wilayah,
      required this.marmer_granit,
      required this.keramik,
      required this.parket_vinil_karpet_ubin,
      required this.kayu_papan,
      required this.semen_bata,
      required this.tanah,
      required this.lainnya,
      required this.total,
      required this.tahun});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      wilayah: json['wilayah'],
      marmer_granit: json['marmer_granit'],
      keramik: json['keramik'],
      parket_vinil_karpet_ubin: json['parket_vinil_karpet_ubin'],
      kayu_papan: json['kayu_papan'],
      semen_bata: json['semen_bata'],
      tanah: json['tanah'],
      lainnya: json['lainnya'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class FixedColumnWidget extends StatelessWidget {
  const FixedColumnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DataTable(
      columnSpacing: 10,
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
      columns: const [
        DataColumn(label: Text(textAlign: TextAlign.left, 'Kabupaten/Kota',
                        style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.white,
            ))),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text(
            '01. Cilacap',
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
                '02. Banyumas',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '03. Purbalingga',
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
                '04. Banjarnegara',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '05. Kebumen',
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
                '06. Purworejo',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '07. Wonosobo',
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
                '08. Magelang',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '09. Boyolali',
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
                '10. Klaten',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '11. Sukoharjo',
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
                '12. Wonogiri',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '13. Karanganyar',
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
                '14. Sragen',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '15. Grobogan',
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
                '16. Blora',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '17. Rembang',
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
                '18. Pati',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '19. Kudus',
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
                '20. Jepara',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '21. Demak',
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
                '22. Semarang',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '23. Temanggung',
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
                '24. Kendal',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '25. Batang',
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
                '26. Pekalongan',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '27. Pemalang',
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
                '28. Tegal',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '29. Brebes',
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
                '71. Kota Magelang',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '72. Kota Surakarta',
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
                '73. Kota Salatiga',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '74. Kota Semarang',
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
                '75. Kota Pekalongan',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              )),
            ]),
        DataRow(cells: [
          DataCell(Text(
            '76. Kota Tegal',
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
                'Jawa Tengah',
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
                  dataRowHeight: screenHeight * 0.028,
                  headingTextStyle: const TextStyle(
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                      letterSpacing: 0.0,
                      color: Colors.white),
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) => const Color.fromRGBO(34, 150, 243, 1),
                  ),
                  columns: const [
                    DataColumn(
                        label: SizedBox(
                          width: 60,
                          child: Text(
                            'Marmer/Granit',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: 60,
                          child: Text(
                            'Keramik',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: 75,
                          child: Text(
                            'Parket/Vinil/Karpet/Ubin/Tegel/Teraso',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            //style: TextStyle(
                            //fontStyle: FontStyle.italic,
                            //fontWeight: FontWeight.bold,
                            //fontSize: 15),
                          ),
                        ),
                        numeric: true),
                    DataColumn(
                        label: SizedBox(
                          width: 60,
                          child: Text(
                            'Kayu/Papan',
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
                    DataColumn(
                        label: SizedBox(
                          width: 70,
                          child: Text(
                            'Semen/Bata Merah',
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
                    DataColumn(
                        label: SizedBox(
                          width: 60,
                          child: Text(
                            'Tanah',
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
                    DataColumn(
                        label: SizedBox(
                          width: 55,
                          child: Text(
                            'Lainnya',
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
                    DataColumn(
                        label: SizedBox(
                          width: 80,
                          child: Text(
                            'Jumlah',
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
                                (Format.convertTo(
                                    double.tryParse(data.marmer_granit), 0)),

                                //data.rtup.toString(),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                (Format.convertTo(
                                    double.tryParse(data.keramik), 0)),
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
                                    double.tryParse(data.parket_vinil_karpet_ubin), 0)),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                (Format.convertTo(
                                    double.tryParse(data.kayu_papan), 0)),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                (Format.convertTo(
                                    double.tryParse(data.semen_bata), 0)),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                (Format.convertTo(
                                    double.tryParse(data.tanah), 0)),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                (Format.convertTo(
                                    double.tryParse(data.lainnya), 0)),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                (Format.convertTo(
                                    double.tryParse(data.total), 0)),
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
