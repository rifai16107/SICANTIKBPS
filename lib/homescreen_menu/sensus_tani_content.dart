// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_data/sensus_pertanian.dart';
import 'package:bps_cilacap/sensus_data/sensustani_milenial_urban.dart';
import 'package:bps_cilacap/sensus_data/sensustani_dominan_spk.dart';
import 'package:bps_cilacap/sensus_data/sensus_tabel_content.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SensusTaniContent(),
  ),
);

class SensusTaniContent extends StatefulWidget {
  const SensusTaniContent({Key? key}) : super(key: key);

  @override
  _SensusTaniContentState createState() => _SensusTaniContentState();
}

class _SensusTaniContentState extends State<SensusTaniContent> {
  @override
  Widget build(BuildContext context) {
    var screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    var screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HASIL-HASIL SENSUS', style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                backgroundColor: Colors.black,
                iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
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
                  return ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "SENSUS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Sensus atau pendataan lengkap dilakukan oleh BPS 3 (tiga) kali dalam 10 (sepuluh) tahun. Dimana 3 (tiga) sensus tersebut merupakan sensus yang berbeda. Yang pertama Sensus Penduduk dilaksanakan pada tahun berakhiran 0, kemudian Sensus Pertanian dilaksanakan setiap tahun yang berakhiran 3 dan Sensus Ekonomi dilaksanakan pada setiap tahun yang berakhiran 6 ",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Sensus Penduduk",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Sensus Penduduk telah dilaksanakan sebanyak 7 (tujuh) kali yaitu pada tahun 1961, 1971, 1980, 1990, 2000, 2010 dan 2020",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Sensus Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Sensus Pertanian sampai saat ini juga telah dilaksanakan sebanyak 7 (tujuh) kali yaitu pada tahun 1963, 1973, 1983, 1993, 2003, 2013 dan 2023",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Sensus Ekonomi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Sensus Ekonomi sampai saat ini telah dilaksanakan sebanyak 4 (empat kali) kali. Sensus Ekonomi pertama kali dilaksankan pada tahun 1986. Kemudian dilaksanakan kembali pada tahun 1996, 2006, dan 2016",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.info_outlined),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          //animasi atas
          SizedBox(
            width: screenWidth * 0.95,
            height: screenHeight * 0.14,
            child: const Center(
              child: Text(
                'HASIL-HASIL SENSUS PERTANIAN 2023 (ST2023) DAPAT ANDA LIHAT DISINI.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(5, 76, 36, 1),
                  fontFamily: 'Robo',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth,
            child: const Center(
              child: Text(
                '(Sentuh/tekan pada icon gambar)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(5, 76, 36, 1),
                  fontFamily: 'Robo',
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          Divider(height: screenHeight * 0.02, thickness: 2),

          //summary 1
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.11,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 4, top: 2, right: 12),
                  width: screenWidth * 0.30,
                  height: screenHeight * 0.10,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 25, 122, 50),
                          ),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 207, 201, 201),
                      ),
                      shadowColor: WidgetStateProperty.all(Colors.transparent),
                      padding: WidgetStateProperty.all(const EdgeInsets.all(5)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SensusPertanian();
                          },
                        ),
                      );
                    },
                    child: Image.asset('assets/images/sensus/st_2023.png'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 2,
                    bottom: 2,
                    right: 2,
                  ),
                  width: screenWidth * 0.70,
                  height: screenHeight * 0.10,
                  child: const Center(
                    child: Text(
                      "Summary Hasil Sensus Pertanian 2023: Jumlah RUTP dan Jumlah UTP per Sub sektor. ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: screenHeight * 0.015, thickness: 1),

          //summary 2
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.11,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 4, top: 2, right: 12),
                  width: screenWidth * 0.30,
                  height: screenHeight * 0.11,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 25, 122, 50),
                          ),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 207, 201, 201),
                      ),
                      shadowColor: WidgetStateProperty.all(Colors.transparent),
                      padding: WidgetStateProperty.all(const EdgeInsets.all(5)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SensusMilenial();
                          },
                        ),
                      );
                    },
                    child: Image.asset('assets/images/sensus/st_2023.png'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 2,
                    bottom: 2,
                    right: 2,
                  ),
                  width: screenWidth * 0.70,
                  //height:200,
                  height: screenHeight * 0.13,
                  child: const Center(
                    child: Text(
                      "Summary Hasil Sensus Pertanian 2023: Jumlah UTP, UPB, UTL, Jumlah Petani Milenial, Petani Pengguna Lahan dan Petani Gurem. ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Divider(height: screenHeight * 0.015, thickness: 1),

          //summary 3
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.11,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 4, top: 2, right: 12),
                  width: screenWidth * 0.30,
                  height: screenHeight * 0.10,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 25, 122, 50),
                          ),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 207, 201, 201),
                      ),
                      shadowColor: WidgetStateProperty.all(Colors.transparent),
                      padding: WidgetStateProperty.all(const EdgeInsets.all(5)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SensusDominanSpk();
                          },
                        ),
                      );
                    },
                    child: Image.asset('assets/images/sensus/st_2023.png'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 2,
                    bottom: 2,
                    right: 2,
                  ),
                  width: screenWidth * 0.70,
                  //height:200,
                  height: screenHeight * 0.12,
                  child: const Center(
                    child: Text(
                      "Summary Hasil Sensus Pertanian 2023: 10 (Sepuluh) Komoditas pertanian terbanyak yang diusahakan serta Jumlah Sapi dan Kerbau. ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Divider(height: screenHeight * 0.015, thickness: 1),
          //tabulasi ST2023
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.11,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 4, top: 2, right: 12),
                  width: screenWidth * 0.30,
                  height: screenHeight * 0.10,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 25, 122, 50),
                          ),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 207, 201, 201),
                      ),
                      shadowColor: WidgetStateProperty.all(Colors.transparent),
                      padding: WidgetStateProperty.all(const EdgeInsets.all(5)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SensusTabelContent();
                          },
                        ),
                      );
                    },
                    child: Image.asset('assets/images/sensus/st_2023.png'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 12, top: 2, bottom: 2),
                  width: screenWidth * 0.70,
                  height: screenHeight * 0.10,
                  child: const Center(
                    child: Text(
                      "Tabulasi Hasil Sensus Pertanian 2023.                     ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Divider(height: screenHeight * 0.015, thickness: 1),

          // hasil SP2020
        ],
      ),
    );
  }
}
