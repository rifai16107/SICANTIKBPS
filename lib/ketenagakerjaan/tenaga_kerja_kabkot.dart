// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/series_nakerlapus_kabkot.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_kegiatan/series_nakerkegiatan_kabkot.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_bak/series_nakerbak_kabkot.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_umk/series_nakerumk_kabkot.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_upahburuh/series_nakerupahburuh_kabkot.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_formalin/series_nakerformalin_kabkot.dart';
import 'package:flutter/material.dart';

class tenagaKerjaKabkot extends StatefulWidget {
  const tenagaKerjaKabkot({Key? key}) : super(key: key);

  @override
  State<tenagaKerjaKabkot> createState() => _tenagaKerjaKabkotState();
}

class _tenagaKerjaKabkotState extends State<tenagaKerjaKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KABUPATEN/KOTA JAWA TENGAH',
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
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 10,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 120,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Kondisi Ketenagakerjaan Kabupaten/Kota di Jawa Tengah",
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
                    child: Container(height: 120, color: Colors.transparent),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesNakerLapusKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Jumlah Penduduk Usia 15+ yang Bekerja Menurut Lapangan Usaha",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesNakerKegiatanKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Jumlah Penduduk 15+ yang Bekerja, Menganggur dan Jumlah Bukan Angkatan Kerja",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesNakerBakkabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Jumlah Penduduk 15+ yang Bukan Angkatan Kerja Menurut Kegiatan Utama",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesNakerkabkotUmk(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Upah Minimum Kabupaten/Kota Di Jawa Tengah",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesNakerkabkotUpah(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Rata-Rata Upah Buruh/Karyawan/Pegawai",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesNakerkabkotFormalin(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Rata-Rata Pendapatan Bersih Pekerja Formal dan Informal",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
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
