// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/tenaga_kerja.dart';
import 'package:bps_cilacap/ketenagakerjaan/tenaga_kerja_kabkot.dart';

import 'package:flutter/material.dart';

class ketenagakerjaanContent extends StatefulWidget {
  const ketenagakerjaanContent({Key? key}) : super(key: key);

  @override
  State<ketenagakerjaanContent> createState() => _ketenagakerjaanContentState();
}

class _ketenagakerjaanContentState extends State<ketenagakerjaanContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'KETENAGAKERJAAN',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
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
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "BEBERAPA KONSEP KETENAGAKERJAAN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Konsep/definisi ketenagakerjaan yang digunakan BPS merujuk pada rekomendasi International Labor Organization (ILO) sebagaimana tercantum dalam buku 'Surveys of Economically Active Population, Employment, Unemployment and Underemployment' An ILO Manual on Concept and Methods, ILO 1992.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Hal ini dimaksudkan terutama agar data ketenagakerjaan yang dihasilkan dari berbagai survey di Indonesia dapat dibandingkar secara internasional, tanpa mengesampingkan kondisi ketenagakerjaan spesifik Indonesia.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "TINGKAT PARTISIPASI ANGKATAN KERJA (TPAK)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   TPAK adalah persentase Angkatan Kerja (AK) terhadap Penduduk Usia Kerja (PUK).",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Menurut konsep Labor Force Framework, penduduk dibagi ke dalam dua kelompok, yaitu : Usia Kerja dan Bukan Usia Kerja",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "PENDUDUK USIA KERJA (PUK)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Indonesia menggunakan batas bawah usia kerja 15 tahun dan tanpa batas atas usia kerja. Penduduk Usia Kerja dibagi ke dala dua kelompok, yaitu:",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                          top: 8,
                        ),
                        child: const Text(
                          "1. ANGKATAN KERJA (AK)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                          top: 5,
                        ),
                        child: const Text(
                          "   Konsep angkatan kerja merujuk pada kegiatan utama yang dilakukan oleh penduduk usia kerja selama periode tertentu Angkatan kerja adalah penduduk usia kerja yang bekerja atau punya pekerjaan namun sementara tidak bekerja dan penganggur.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Bekerja",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(1),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Adalah kegiatan ekonomi yang dilakukan seseorang dengan maksud memperoleh atau membantu memperoleh pendapatan atau keuntungan paling sedikit 1 (satu) jam secar tidak terputus selama seminggu yang lalu. Kegiatan ini mencakup, baik yang sedang bekerja maupun yang punya pekerjaan tetapi dalam seminggu yang lalu sementara tidak bekerja, misalnya karena cuti, sakit, dan sejenisnya.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Tingkat Kesempatan Kerja (TKK)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   TKK diukur sebagai persentase jumlah penduduk yang bekerja terhadap jumlah penduduk yang termasuk angkatan kerja.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Penganggur",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "  Angkatan kerja yang tergolong dalam penganggur adalah mereka yang : ",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 5,
                          bottom: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text("- Sedang mencari pekerjaan."),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 5,
                          bottom: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text("- Mempersiapkan usaha."),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 5,
                          bottom: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "- Tidak mencari pekerjaan karena merasa tidak mungkin mendapatkan pekerjaan.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 5,
                          bottom: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "- Sudah punya pekerjaan tetapi belum mulai bekerja, dan pada waktu yang bersamaan mereka tidak bekerja (Jobless).",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "  Penganggur dengan konsep/definisi tersebut biasanya disebut dengan penganggur terbuka (open unemployment).",
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
                          "   TPT dihitung berdasarkan perbandingan antara jumlah penganggur dengan jumlah angkatan kerja dan dinyatakan dalam persentase.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 5,
                          right: 5,
                        ),
                        child: const Text(
                          "2. BUKAN ANGKATAN KERJA (BAK)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 5,
                        ),
                        child: const Text(
                          "   Penduduk usia kerja yang tergolong ke dalam bukan angkatan kerja mencakup: penduduk yang bersekolah, mengurus rumah tangga, dan melakukan kegiatan lainnya.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Sekolah",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Kegiatan bersekolah di sekolah formal dan nonformal, baik pada pendidikan dasar, pendidikan menengah, atau pendidikai tinggi. Tidak termasuk yang sedang libur sekolah/cuti kuliah.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Mengurus Rumah Tangga",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Adalah kegiatan mengurus rumah tangga atau membantu mengurus rumah tangga tanpa mendapat upah/gaji. Seluruh anggota rumah tangga yang melakukan kegiatan kerumah tanggaan, seperti: memasak, mencuci,membersihkan rumah, dsb digolongkan sebagai mengurus rumah tangga. Bagi Pembantu Rumah Tangga yang mengerjakan hal yang sama tetapi mendapat upah/gaji digolongkan sebagai bekerja.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Kegiatan Lainnya",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Adalah kegiatan selain bekerja, sekolah, dan mengurus rumah tangga. Kegiatan lainnya yang dicakup di sini adalah kegiatan yang bersifat aktif, seperti: olah raga, piknik, kegiatar keagamaan, kegiatan sosial. Tidak termasuk seperti: tidur, malas-malasan, santai, dll.",
                          textAlign: TextAlign.justify,
                        ),
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
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
                Flexible(
                    child: Container(
                      height: 0.12 * screenHeight,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Kondisi Ketenagakerjaan Kabupaten Cilacap dan Kabupaten/Kota Lainnya Di Jawa Tengah",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(height: 20, color: Colors.transparent),
                  ),
                
            
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const tenagaKerja(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.12,
                          child: Text(
                            'Kondisi Ketenagakerjaan Kabupaten Cilacap',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(height: 3, color: Colors.transparent),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const tenagaKerjaKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.12,
                          child: Text(
                            'Kondisi Ketenagakerjaan Kabupaten/Kota\n'
                            'Di Jawa Tengah',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
    : super(
        transitionDuration: const Duration(milliseconds: 200),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) => child,
      );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => SlideTransition(
    position: Tween<Offset>(
      begin: getBeginOffset(),
      end: Offset.zero,
    ).animate(animation),
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
