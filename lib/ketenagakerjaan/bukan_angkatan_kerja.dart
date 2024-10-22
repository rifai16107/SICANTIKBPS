import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/body_bak.dart';
import 'package:flutter/material.dart';

class BukanAngkatanKerja extends StatefulWidget {
  const BukanAngkatanKerja({super.key});

  @override
  State<BukanAngkatanKerja> createState() => _BukanAngkatanKerja();
}

class _BukanAngkatanKerja extends State<BukanAngkatanKerja> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PENDUDUK USIA KERJA (15+ Tahun)",
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
                  constraints: BoxConstraints.tight(
                    Size(screenWidth, screenHeight),
                  ),
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Konsep/definisi ketenagakerjaan yang digunakan BPS merujuk pada rekomendasi International Labor Organization (ILO) sebagaimana tercantum dalam buku ' Surveys of economically Active Population, employment, Unemployment and Underemployment' An ILO Manual on Concept and Methods, ILO 1992.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Hal ini dimaksudkan terutama agar data ketenagakerjaan yang dihasilkan dari berbagai survey di Indonesia dapat dibandingkar secara internasional, tanpa mengesampingkan kondisi ketenagakerjaan spesifik Indonesia.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Tingkat Partisipasi Angkatan Kerja (TPAK)",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Menurut konsep Labor Force Framework, penduduk dibagi ke dalam dua kelompok, yaitu : Usia Kerja dan Bukan Usia Kerja",
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
                          "   Indonesia menggunakan batas bawah usia kerja 15 tahun dan tanpa batas atas usia kerja. Penduduk Usia Kerja dibagi ke dala dua kelompok, yaitu:",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 5),
                        child: const Text(
                          "1. Angkatan Kerja",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 5),
                        child: const Text(
                          "   Konsep angkatan kerja merujuk pada kegiatan utama yang dilakukan oleh penduduk usia kerja selama periode tertentu Angkatan kerja adalah penduduk usia kerja yang bekerja atau punya pekerjaan namun sementara tidak bekerja dan penganggur.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 5),
                        child: const Text(
                          "2. Bukan Angkatan Kerja",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 5),
                        child: const Text(
                          "   Penduduk usia kerja termasuk dalam bukan angkatan kerja mencakup: penduduk yang bersekolah, mengurus rumah tangga, dan melakukan kegiatan lainnya.",
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
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            "   Kegiatan bersekolah di sekolah formal dan nonformal, baik pada pendidikan dasar, pendidikan menengah, atau pendidikai tinggi. Tidak termasuk yang sedang libur sekolah/cuti kuliah.",
                            textAlign: TextAlign.justify),
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
                            textAlign: TextAlign.justify),
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
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.06,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(
                    "Jumlah Penduduk Usia Kerja (15+ tahun) Kabupaten Cilacap Menurut Kegiatan dan Jenis Kelamin",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.85,
                child: const BodyBak(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
