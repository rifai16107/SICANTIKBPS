// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_kabkot/series_penganggurankabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran/pengangguran_cilacap/perkembangan_pengangguran.dart';
import 'package:bps_cilacap/restAPI/repository_tenaga_kerja_tpt.dart';
import 'package:flutter/material.dart';

class pengangguranContent extends StatefulWidget {
  const pengangguranContent({Key? key}) : super(key: key);

  @override
  State<pengangguranContent> createState() => _pengangguranContentState();
}

RepositoryPengangguran repositorypengangguran = RepositoryPengangguran();

class _pengangguranContentState extends State<pengangguranContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'PENGANGGURAN',
            style: TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Center(
              child: Icon(
                BackIcons.circle_arrow,
                size: 40,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return ListView(children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "BEBERAPA KONSEP KETENAGAKERJAAN",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Penduduk Usia Kerja",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Penduduk yang berusia 15 tahun sampai dengan 64 tahun.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Angkatan Kerja (AK)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Banyaknya penduduk usia kerja (15 tahun ke atas) yang bekerja, atau punya pekerjaan namun sementara tidak bekerja dan pengangguran",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Bukan Angkatan Kerja (BAK)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Bukan angkatan kerja adalah penduduk usia kerja (15 tahun dan lebih) yang masih sekolah, mengurus rumah tangga atau melaksanakan kegiatan lainnya selain kegiatan pribadi.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Tingkat Partisipasi Angkatan Kerja (TPAK)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Tingkat Partisipasi Angkatan Kerja (TPAK) adalah persentase banyaknya angkatan kerja terhadap banyaknya penduduk usia kerja.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Tingkat Pengangguran Terbuka (TPT)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Persentase jumlah pengangguran terhadap jumlah angkatan kerja.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Konsep Bekerja",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Bekerja adalah kegiatan melakukan pekerjaan dengan maksud memperoleh atau  membantu memperoleh penghasilan atau keuntungan paling sedikit  selama satu jam. Termasuk ke dalam konsep bekerja adalah orang yang sementara tidak bekerja.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Konsep Penduduk Pengangguran",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   penduduk pengangguran adalah penduduk tidak bekerja dan :",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "a). Sebulan yang lalu aktif mencari pekerjaan atau mempersiapkan suatu usaha, dan siap/bersedia bekerja dalam selang waktu dua minggu ke depan, ",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "b). Sebulan yang lalu aktif mencari pekerjaan atau mempersiapkan usaha dan jika seminggu terakhir ada tawaran pekerjaan siap/bersedia menerima, atau 2 minggu ke depan siap/bersedia, ",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "c). Tidak mencari pekerjaan dengan alasan sudah diterima bekerja tetapi belum mulai bekerja, dimulainya pekerjaan tersebut dalam kurun waktu  kurang dari 3 bulan ke depan, dan mengaku saat ini dalam kondisi siap/bersedia untuk segera bekerja dalam selang waktu dua minggu kedepan. ",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Setengah Pengangguran",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   adalah orang yang bekerja kurang dari 35 jam per minggu, tetapi masih mencari pekerjaan atau bersedia menerima pekerjaan.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ]);
                    },
                  );
                },
                icon: const Icon(Icons.info_outlined))
          ],
        ),
        body: FutureBuilder(
          future: repositorypengangguran.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isipengangguran = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th5 = isipengangguran[index = 4].created_at[0] +
                      isipengangguran[index = 4].created_at[1] +
                      isipengangguran[index = 4].created_at[2] +
                      isipengangguran[index = 4].created_at[3];
                  double tpak5 = double.parse(isipengangguran[index = 4].tpak);
                  double tpt5 = double.parse(isipengangguran[index = 4].tpt);

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 3,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.black,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 5,
                                        ),
                                        child: Text(
                                          "Di Kabupaten Cilacap pada Tahun " +
                                              th5 +
                                              " Tingkat Pengangguran Terbuka (TPT) tercatat sebesar  " +
                                              tpt5.toStringAsFixed(2) +
                                              " dengan Tingkat Partisipasi Angkatan Kerja (TPAK) sebesar  " +
                                              tpak5
                                                  .toStringAsFixed(2)
                                                  .toString(),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    color: Colors.transparent,
                                  ),
                                )
                              ],
                            )),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(10, 100, 31, 0.886))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                      child: const PerkembanganPengangguran(),
                                      direction: AxisDirection.left));
                            },
                            child: SizedBox(
                                width: screenWidth,
                                height: screenHeight * 0.1,
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 10,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        "Perkembangan TPT dan TPAK Kabupaten Cilacap",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Icon(
                                        (Icons.arrow_right),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        const Divider(
                          height: 5,
                          color: Colors.transparent,
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(10, 100, 31, 0.886))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                      child: const SeriesPengangguranKabkot(),
                                      direction: AxisDirection.left));
                            },
                            child: SizedBox(
                                width: screenWidth,
                                height: screenHeight * 0.1,
                                child: Row(
                                  children: [
                                    const Flexible(
                                      flex: 10,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        "TPT dan TPAK Kabupaten/Kota di Jawa Tengah",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Icon(
                                        (Icons.arrow_right),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return const Text('Database Error');
            } else {
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 3));
            }
          },
        ));
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
      : super(
            transitionDuration: const Duration(milliseconds: 200),
            reverseTransitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(animation),
        child: child,
      );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
