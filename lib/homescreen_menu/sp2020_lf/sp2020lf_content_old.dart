// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/homescreen_menu/pengangguran_content.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class LongformContent extends StatefulWidget {
  const LongformContent({Key? key}) : super(key: key);

  @override
  _LongformContentState createState() => _LongformContentState();
}

class _LongformContentState extends State<LongformContent> {
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
        title: const Text(
          'HASIL PENDATAAN LONG FORM SP2020',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.black,
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
          SizedBox(
            width: screenWidth * 0.95,
            height: screenHeight * 0.10,
            child: const Center(
              child: Text(
                'HASIL PENDATAAN LONG FORM SENSUS PENDUDUK 2020 (SP2020).',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(42, 119, 188, 1),
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
                '(Sentuh icon gambar atau tombol "Selengkapnya..." ")',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(15, 121, 153, 1),
                  fontFamily: 'Robo',
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Divider(height: screenHeight * 0.010, thickness: 2),
          Expanded(
            flex: 80,
            child: Scrollbar(
              thickness: 5,
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //First Row
                    Container(
                      width: screenWidth,
                      //height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                              left: 25,
                              top: 5,
                              right: 5,
                            ),
                            width: screenWidth,
                            //height: screenHeight * 0.13,
                            child: const Text(
                              "INDIKATOR FERTILITAS",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.97,
                      height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.12,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blueAccent,
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 245, 212, 211),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.all(5),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const pengangguranContent();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/sensus/longform_sp2020_fertilitas.png',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.72,
                            height: screenHeight * 0.12,
                            child: RichText(
                              text: const TextSpan(
                                text:
                                    'Dari hasil Pendataan Long Form SP2020 yang dilaksanakan pada tahun 2022 tercatat TFR Cilacap sebesar: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '2,17',
                                    style: TextStyle(
                                      fontFamily: 'Nexa',
                                      color: Color.fromARGB(255, 26, 11, 230),
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' app !',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Tombol Selengkapnya
                    SizedBox(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(5),
                              ),
                              foregroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255),
                              ),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 59, 61, 61),
                              ),
                              shape:
                                  WidgetStateProperty.all<
                                    RoundedRectangleBorder
                                  >(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                        color: Color.fromARGB(255, 59, 61, 61),
                                      ),
                                    ),
                                  ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const pengangguranContent();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Selengkapnya...",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: screenHeight * 0.018, thickness: 2),
                    //Baris ke 2
                    Container(
                      width: screenWidth,
                      //height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 5,
                              right: 25,
                            ),
                            width: screenWidth,
                            //height: screenHeight * 0.13,
                            child: const Text(
                              "INDIKATOR MORTALITAS",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.97,
                      height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.72,
                            height: screenHeight * 0.13,
                            child: const Text(
                              "Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blueAccent,
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 245, 212, 211),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.all(5),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const pengangguranContent();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/sensus/longform_sp2020_mortalitas.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(5),
                              ),
                              foregroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255),
                              ),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 59, 61, 61),
                              ),
                              shape:
                                  WidgetStateProperty.all<
                                    RoundedRectangleBorder
                                  >(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                        color: Color.fromARGB(255, 59, 61, 61),
                                      ),
                                    ),
                                  ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const pengangguranContent();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Selengkapnya...",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(height: screenHeight * 0.018, thickness: 2),

                    //baris ke 3
                    Container(
                      width: screenWidth,
                      //height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                              left: 25,
                              top: 5,
                              right: 5,
                            ),
                            width: screenWidth,
                            //height: screenHeight * 0.13,
                            child: const Text(
                              "INDIKATOR MOBILITAS",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.97,
                      height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blueAccent,
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 245, 212, 211),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.all(5),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const pengangguranContent();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/sensus/longform_sp2020_mobilitas.png',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.72,
                            height: screenHeight * 0.13,
                            child: const Text(
                              "Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020.",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(5),
                              ),
                              foregroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255),
                              ),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 59, 61, 61),
                              ),
                              shape:
                                  WidgetStateProperty.all<
                                    RoundedRectangleBorder
                                  >(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                        color: Color.fromARGB(255, 59, 61, 61),
                                      ),
                                    ),
                                  ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const pengangguranContent();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Selengkapnya...",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: screenHeight * 0.018, thickness: 2),

                    //Baris ke 4
                    Container(
                      width: screenWidth,
                      //height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 5,
                              right: 25,
                            ),
                            width: screenWidth,
                            //height: screenHeight * 0.13,
                            child: const Text(
                              "INDIKATOR PENDIDIKAN",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.97,
                      height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.72,
                            height: screenHeight * 0.13,
                            child: const Text(
                              "Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020.",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blueAccent,
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 245, 212, 211),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.all(5),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const pengangguranContent();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/sensus/longform_sp2020_pendidikan.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(5),
                              ),
                              foregroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255),
                              ),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 59, 61, 61),
                              ),
                              shape:
                                  WidgetStateProperty.all<
                                    RoundedRectangleBorder
                                  >(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                        color: Color.fromARGB(255, 59, 61, 61),
                                      ),
                                    ),
                                  ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const pengangguranContent();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Selengkapnya...",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(height: screenHeight * 0.018, thickness: 2),

                    //Baris ke 5
                    Container(
                      width: screenWidth,
                      //height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                              left: 25,
                              top: 5,
                              right: 5,
                            ),
                            width: screenWidth,
                            //height: screenHeight * 0.13,
                            child: const Text(
                              "INDIKATOR PERUMAHAN",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.97,
                      height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blueAccent,
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 245, 212, 211),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.all(5),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const pengangguranContent();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/sensus/longform_sp2020_perumahan.png',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 0,
                              right: 5,
                            ),
                            width: screenWidth * 0.72,
                            height: screenHeight * 0.13,
                            child: const Text(
                              "Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020. Selayang Pandang Long Form SP2020.",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(5),
                              ),
                              foregroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255),
                              ),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromARGB(255, 59, 61, 61),
                              ),
                              shape:
                                  WidgetStateProperty.all<
                                    RoundedRectangleBorder
                                  >(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                        color: Color.fromARGB(255, 59, 61, 61),
                                      ),
                                    ),
                                  ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const pengangguranContent();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Selengkapnya...",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // space
                    Container(
                      width: screenWidth * 0.96,
                      height: screenHeight * 0.05,
                      color: Colors.transparent,
                    ),
                    //spacew
                  ],
                ),
                //),
              ),
            ),
          ),
        ],
      ),
    );
  }

  WidgetStateProperty<Color> getColor(Color white, Color red) {
    getColor(Set<WidgetState> states) {
      if (states.contains(WidgetState.hovered)) {
        return red;
      } else {
        return white;
      }
    }

    return WidgetStateProperty.resolveWith(getColor);
  }
}
