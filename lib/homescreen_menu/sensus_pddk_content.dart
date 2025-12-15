// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_data/sensus_penduduk.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/sp2020lf_content.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SensusPddkContent(),
  ),
);

class SensusPddkContent extends StatefulWidget {
  const SensusPddkContent({Key? key}) : super(key: key);

  @override
  _SensusPddkContentState createState() => _SensusPddkContentState();
}

class _SensusPddkContentState extends State<SensusPddkContent> {
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
          'HASIL-HASIL SENSUS',
          style: TextStyle(fontSize: 16, color: Colors.white),
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
                'HASIL-HASIL SENSUS PENDUDUK 2020 (SP2020) DAN SP2020 LONG FORM DAPAT ANDA LIHAT DISINI.',
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
                '(Sentuh/tekan pada icon gambar)',
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

          Divider(height: screenHeight * 0.02, thickness: 2),

          //summary 1

          // hasil SP2020

          //First Row
          SizedBox(
            width: screenWidth,
            height: 80,
            //color: Colors.transparent,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                  width: screenWidth * 0.30,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 89, 151, 212),
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
                            return const SensusPendudukContent();
                          },
                        ),
                      );
                    },
                    child: Image.asset('assets/images/sensus/sp_2020.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                  width: screenWidth * 0.68,
                  height: 80,
                  child: const Text(
                    "Summary Hasil Sensus Penduduk 2020, jumlah penduduk menurut wilayah, jumlah penduduk menurut generasi dan kelompok umur. ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: screenHeight * 0.010, thickness: 1),

          //Baris ke 2, hasil Long
          SizedBox(
            width: screenWidth,
            height: 80,
            //color: Colors.transparent,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                  width: screenWidth * 0.30,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 89, 151, 212),
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
                            return const LongformContent();
                          },
                        ),
                      );
                    },
                    child: Image.asset('assets/images/sensus/sp_2020_lf.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                  width: screenWidth * 0.68,
                  height: 80,
                  child: const Text(
                    "Hasil Sensus Penduduk 2020 Long Form, Indikator Fertilitas, Mortalitas, Pendidikan, Ketenagakerjaan dan Perumahan ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: screenHeight * 0.010, thickness: 1),
          Expanded(
            flex: 80,
            child: Scrollbar(
              thickness: 5,
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      height: screenHeight * 0.010,
                      color: Colors.transparent,
                    ),

                    //text
                    SizedBox(
                      width: screenWidth,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 0,
                              right: 10,
                            ),
                            width: screenWidth,
                            child: const Text(
                              "SELAYANG PANDANG LONG FORM FORM SP2020.",
                              style: TextStyle(
                                color: Color.fromRGBO(42, 119, 188, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: screenHeight * 0.020,
                      color: Colors.transparent,
                    ),

                    //text
                    SizedBox(
                      width: screenWidth,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 0,
                              right: 10,
                            ),
                            width: screenWidth,
                            child: const Text(
                              "Sensus Penduduk 2020 (SP2020) merupakan upaya Indonesia untuk menuju satu data kependudukan. Pelaksanaan SP2020 beralih menggunakan metode kombinasi melalui pemanfaatan data administrasi kependudukan dari Kementerian Dalam Negeri sebagai data dasar dalam pelaksanaan SP2020.",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      height: screenHeight * 0.020,
                      color: Colors.transparent,
                    ),

                    //text
                    SizedBox(
                      width: screenWidth,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 0,
                              right: 10,
                            ),
                            width: screenWidth,
                            child: const Text(
                              "Rangkaian kegiatan SP2020 dilaksanakan ke dalam dua tahapan. Tahapan pertama yaitu pendataan penduduk dengan menggunakan short form dan instrumen lainnya yang telah dilaksanakan pada tahun 2020. Tahapan selanjutnya pendataan berupa sensus sampel sebagai kelanjutan sensus penduduk menggunakan kuesioner yang memuat pertanyaan yang lebih banyak dan lebih kompleks atau disebut sebagai Pendataan Long Form SP2020. Pendataan Long Form SP2020 awalnya akan dilaksanakan pada tahun 2021, tapi karena adanya pandemi Covid-19 membuat Pendataan Long Form SP2020 digeser pada tahun 2022.",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      height: screenHeight * 0.020,
                      color: Colors.transparent,
                    ),

                    //text
                    SizedBox(
                      width: screenWidth,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 0,
                              right: 10,
                            ),
                            width: screenWidth,
                            child: const Text(
                              "Pendataan Long Form SP2020 dilakukan untuk mendapatkan parameter demografi yang akurat dimana pendataannya dilaksanakan dengan mengumpulkan data-data yang lebih lengkap tidak hanya terkait parameter demografi, tetapi juga terkait pendidikan, disabilitas, maupun perumahan.",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      height: screenHeight * 0.020,
                      color: Colors.transparent,
                    ),

                    //text
                    SizedBox(
                      width: screenWidth,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 0,
                              right: 10,
                            ),
                            width: screenWidth,
                            child: const Text(
                              "Pendataan Long Form SP2020 ini dilaksanakan di seluruh wilayah di Indonesia dengan jumlah sampel sebanyak 4.294.896 rumah tangga dalam 268.431 blok sensus (BS). Pendataan Long Form SP2020 ini dilakukan hanya kepada sampel rumah tangga terpilih dan pelaksanaannya terbagi menjadi dua tahap. Tahap pertama merupakan pemutakhiran dan tahap kedua pencacahan. Pemutakhiran dilakukan pada periode 15-31 Mei 2022 terhadap seluruh rumah tangga yang tinggal di blok sensus terpilih yang tersebar di 514 kabupaten/kota di seluruh Indonesia. Setelah dilakukan pemutakhiran, kemudian dilakukan pengambilan sampel sebanyak 16 rumah tangga. Hanya sebanyak 16 rumah tangga yang terpilih sebagai sampel di tiap-tiap blok sensus tadi yang kemudian dilakukan pendataan dengan kuesioner pada periode 1-30 Juni 2022.",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify,
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
}
