import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const RumahkabkotLantaiC());

class RumahkabkotLantaiC extends StatelessWidget {
  const RumahkabkotLantaiC({super.key});

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
  var url = Uri.parse('https://bps-3301-asap.my.id/api/rumahkabkot-lantai');
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
  final String marmer_granit_n3;
  final String keramik_n3;
  final String parket_vinil_n3;
  final String kayu_papan_n3;
  final String semen_bata_n3;
  final String bambu_n3;
  final String tanah_n3;
  final String lainnya_n3;
  final String total_n3;
  final String tahun;

  Data({
    required this.id,
    required this.wilayah,
    required this.marmer_granit_n3,
    required this.keramik_n3,
    required this.parket_vinil_n3,
    required this.kayu_papan_n3,
    required this.semen_bata_n3,
    required this.bambu_n3,
    required this.tanah_n3,
    required this.lainnya_n3,
    required this.total_n3,
    required this.tahun,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      wilayah: json['wilayah'],
      marmer_granit_n3: json['marmer_granit_n3'],
      keramik_n3: json['keramik_n3'],
      parket_vinil_n3: json['parket_vinil_n3'],
      kayu_papan_n3: json['kayu_papan_n3'],
      semen_bata_n3: json['semen_bata_n3'],
      bambu_n3: json['bambu_n3'],
      tanah_n3: json['tanah_n3'],
      lainnya_n3: json['lainnya_n3'],
      total_n3: json['total_n3'],
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
                  dataRowHeight: screenHeight * 0.0280,
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
                        width: screenWidth * 0.15,
                        child: const Text(
                          'Marmer/Keramik',
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
                        width: screenWidth * 0.14,
                        child: const Text(
                          'Keramik',
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
                        width: screenWidth * 0.22,
                        child: Column(
                          children: const [
                            Text(
                              "Parket/Vinil/",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Karpet/Ubin/",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Tegel/Teraso",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.14,
                        child: const Text(
                          'Kayu/Papan',
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
                        width: screenWidth * 0.185,
                        child: Column(
                          children: const [
                            Text(
                              "",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Semen/",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Bata Merah",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      numeric: true,
                    ),
                    DataColumn(
                      label: SizedBox(
                        width: screenWidth * 0.14,
                        child: const Text(
                          'Bambu',
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
                        width: screenWidth * 0.14,
                        child: const Text(
                          'Tanah',
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
                        width: screenWidth * 0.14,
                        child: const Text(
                          'Lainnya',
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
                        width: screenWidth * 0.14,
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
                            data.marmer_granit_n3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.keramik_n3,
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
                            data.parket_vinil_n3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.kayu_papan_n3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.semen_bata_n3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.bambu_n3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.tanah_n3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.lainnya_n3,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.total_n3,
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
                        text: ' Survei Sosial Ekonomi Nasional (Susenas)',
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
                padding: const EdgeInsets.all(2),
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    text: 'Keterangan:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    text:
                        'Tanda strip (-), menunjukkan bahwa data bernilai nol (0) mutlak yang berarti tidak ada data/nilai estimasi pada sel tabel tersebut.',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 2, right: 2, top: 4),
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    text:
                        'NA (Not Applicable), menunjukkan bahwa data tidak dapat ditampilkan karena nilai relative standard error (RSE) lebih dari 50 persen.',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.transparent, height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
