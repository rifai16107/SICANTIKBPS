import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const NakerkabkotLapusC());

class NakerkabkotLapusC extends StatelessWidget {
  const NakerkabkotLapusC({super.key});

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
  var url = Uri.parse('https://bps-3301-asap.my.id/api/nakerkabkot-lapus');
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
  final String lapus1_n3;
  final String lapus2_n3;
  final String lapus3_n3;
  final String tahun;

  Data({
    required this.id,
    required this.wilayah,
    required this.lapus1_n3,
    required this.lapus2_n3,
    required this.lapus3_n3,
    required this.tahun,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      wilayah: json['wilayah'],
      lapus1_n3: json['lapus1_n3'],
      lapus2_n3: json['lapus2_n3'],
      lapus3_n3: json['lapus3_n3'],
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
      dataRowMinHeight: screenHeight * 0.028,
      dataRowMaxHeight: screenHeight * 0.028,
      headingRowColor: WidgetStateProperty.all(
        const Color.fromRGBO(34, 150, 243, 1),
      ),
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey, width: 1)),
      ),
      columns: [
        DataColumn(
          label: SizedBox(
            width: screenWidth * 0.28,
            child: const Text(
              textAlign: TextAlign.center,
              'Kabupaten/Kota',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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
                '01. Cilacap',
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
                '02. Banyumas',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '03. Purbalingga',
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
                '04. Banjarnegara',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '05. Kebumen',
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
                '06. Purworejo',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '07. Wonosobo',
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
                '08. Magelang',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '09. Boyolali',
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
                '10. Klaten',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '11. Sukoharjo',
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
                '12. Wonogiri',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '13. Karanganyar',
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
                '14. Sragen',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '15. Grobogan',
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
                '16. Blora',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '17. Rembang',
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
                '18. Pati',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '19. Kudus',
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
                '20. Jepara',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '21. Demak',
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
                '22. Semarang',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '23. Temanggung',
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
                '24. Kendal',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '25. Batang',
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
                '26. Pekalongan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '27. Pemalang',
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
                '28. Tegal',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '29. Brebes',
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
                '71. Kota Magelang',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '72. Kota Surakarta',
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
                '73. Kota Salatiga',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '74. Kota Semarang',
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
                '75. Kota Pekalongan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '76. Kota Tegal',
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
                'Jawa Tengah',
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
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                    color: Colors.white,
                  ),
                  headingRowColor: WidgetStateColor.resolveWith(
                    (states) => const Color.fromRGBO(34, 150, 243, 1),
                  ),
                  columns: [
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.20,
                        child: const Text(
                          'Lap. Pekerjaan Utama A',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.20,
                        child: const Text(
                          'Lap. Pekerjaan Utama B',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.20,
                        child: const Text(
                          'Lap. Pekerjaan Utama C',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
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
                        width: screenWidth * 0.18,
                        child: const Text(
                          'Jumlah',
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
                            (Format.convertTo(
                              double.tryParse(data.lapus1_n3),
                              0,
                            )),
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
                              double.tryParse(data.lapus2_n3),
                              0,
                            )),
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
                              double.tryParse(data.lapus3_n3),
                              0,
                            )),
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
                              (double.tryParse(data.lapus1_n3)! +
                                  double.tryParse(data.lapus2_n3)! +
                                  double.tryParse(data.lapus3_n3)!),
                              0,
                            )),
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
      height: 0.40 * screenHeight,
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(1),
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    text: 'Sumber:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Survei Angkatan Kerja Nasional (Sakernas)',
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Keterangan:",
                  style: TextStyle(
                    fontSize: 14,
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
                    text: 'Lap. Pekerjaan Utama A:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Pertanian, Kehutanan, Perikanan.',
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
                    text: 'Lap. Pekerjaan Utama B:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Pertambangan dan Penggalian; Industri Pengolahan; Pengadaan Listrik dan Gas; Pengadaan Air; Pengelolaan Sampah, Limbah, dan Daur Ulang; Konstruksi.',
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
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    text: 'Lap. Pekerjaan Utama C:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Perdagangan Besar dan Eceran; Reparasi Mobil dan Sepeda Motor; Transportasi dan Pergudangan; Penyediaan Akomodasi dan Makan Minum; Informasi dan Komunikasi; Jasa Keuangan dan Asuransi; Real Estat; Jasa Perusahaan; Administrasi Pemerintahan, Pertahanan, dan Jaminan Sosial Wajib; Jasa Pendidikan; Jasa Kesehatan dan Kegiatan Sosial; Jasa Lainnya',
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
