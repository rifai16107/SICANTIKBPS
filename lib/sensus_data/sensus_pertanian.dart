// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_data/body_sensus_pertanian.dart';
import 'package:flutter/material.dart';

class SensusPertanian extends StatefulWidget {
  const SensusPertanian({super.key});

  @override
  State<SensusPertanian> createState() => _SensusPertanianState();
}

class _SensusPertanianState extends State<SensusPertanian> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HASIL PENCACAHAN LENGKAP ST2023",
          style: TextStyle(fontSize: 14, color: Colors.white),
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
                              "METADATA/PENJELASAN INDIKATOR",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga yang memelihara/menguasai/melakukan minimal satu jenis kegiatan pertanian dengan tujuan sebagian atau seluruh hasilnya untuk dijual/ditukar.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Pengelola Usaha Pertanian Perorangan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya orang yang mengelola sekaligus memiliki tanggung jawab teknis, yuridis, dan ekonomis pada unit usaha pertanian perorangan (selain unit usaha pertanian berbadan hukum dan usaha pertanian lain).",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Petani Tanaman Pangan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga usaha pertanian yang mengusahakan/menguasai/melakukan kegiatan di subsektor tanaman pangan. Mengacu ke rumah tangga usaha pertanian (RTUP) tanaman pangan. Satu rumah tangga dapat mengusahakan lebih dari satu subsektor.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Petani Hortikultura",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga usaha pertanian yang mengusahakan/menguasai/melakukan kegiatan di subsektor hortikultura. Mengacu pada rumah tangga usaha pertanian (RTUP) hortikultura. Satu rumah tangga dapat mengusahakan lebih dari satu subsektor.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Petani Perkebunan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga usaha pertanian yang mengusahakan/menguasai/melakukan kegiatan di subsektor perkebunan. Mengacu pada rumah tangga usaha pertanian (RTUP) perkebunan. Satu rumah tangga dapat mengusahakan lebih dari satu subsektor.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Petani Peternakan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga usaha pertanian yang mengusahakan/menguasai/melakukan kegiatan di subsektor peternakan. Mengacu pada rumah tangga usaha pertanian (RTUP) peternakan. Satu rumah tangga dapat mengusahakan lebih dari satu subsektor.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Perikanan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga usaha pertanian yang mengusahakan kegiatan di subsektor perikanan. Mengacu pada rumah tangga usaha pertanian (RTUP) perikanan. Satu rumah tangga dapat mengusahakan lebih dari satu subsektor.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Kegiatan di subsektor perikanan ini terdiri dari kegiatan budidaya ikan ataupun kegiatan penangkapan ikan.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Petani Hutan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga yang terdapat salah seorang anggota rumah tangga sebagai petani tanaman pangan, hortikultura, perkebunan, dan/atau peternakan, dan juga melakukan usaha di bidang kehutanan, di dalam dan di luar kawasan hutan. Mengacu pada rumah tangga usaha pertanian (RTUP) kehutanan. Satu rumah tangga dapat mengusahakan lebih dari satu subsektor.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Jasa Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya rumah tangga usaha pertanian yang melakukan kegiatan usaha atas dasar balas jasa atau kontrak/secara borongan, seperti: melayani usaha di bidang pertanian antara lain Jasa pertanian tanaman pangan/hortikultura/perkebunan, Jasa peternakan, Jasa perikanan, Jasa kehutanan. Mengacu pada rumah tangga usaha pertanian (RTUP) jasa pertanian. Satu rumah tangga dapat mengusahakan lebih dari satu subsektor.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          // UTP per sub sektor
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan Tanaman Pangan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya kegiatan pertanian yang menghasilkan produk tanaman pangan (padi dan palawija) termasuk usaha pembibitan tanaman pangan, yang dikelola oleh perorangan dan bukan sebagai buruh tani atau pekerja keluarga.	",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan Hortikultura",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya usaha pertanian yang menghasilkan produk tanaman sayuran, tanaman buah-buahan, tanaman hias, dan tanaman obat, termasuk pembibitan tanaman hortikultura, yang dikelola oleh perorangan.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan Perkebunan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya kegiatan perkebunan yang menghasilkan produk tanaman perkebunan, termasuk pembibitan tanaman perkebunan, dengan tujuan sebagian atau seluruh hasilnya dijual/ditukar atas risiko usaha, yang dikelola oleh perorangan.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan Peternakan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya kegiatan pemeliharaan ternak (meliputi penggemukan/pembibitan/pengembangbiakan/pemacekan) yang menghasilkan produk peternakan dengan tujuan sebagian atau seluruh hasilnya dijual/ditukar atas risiko usaha, yang penanggung jawabnya dan pengelolaannya dilakukan oleh satu orang.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan Perikanan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya usaha yang dilaksanakan dengan sistem bisnis perikanan (tahap praproduksi, produksi, pascaproduksi, pengolahan, dan pemasara) yang dikelola oleh perorangan, mencakup usaha budi daya perikanan dan penangkapan ikan.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan Kehutanan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya usaha pertanian pada subsektor kehutanan yang dikelola oleh perorangan, mencakup usaha budi daya dan pembibitan tanaman kehutanan, pengangkaran satwa/tumbuhan liar, pemungutan hasil hutan, dan pengangkapan satwa liar.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),

                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan Jasa Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "Banyaknya usaha pertanian yang dikelola oleh perorangan dan mengusahakan jasa pertanian.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Pertanian (RTUP) Pengguna Lahan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya rumah tangga usaha pertanian (RTUP) yang menggunakan lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) dan lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal) atau yang memiliki luas lahan tempat tinggal (merujuk pada Sensus Pertanian 2013) lebih dari nol hektare. Lahan pertanian tersebut digunakan untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan) atau tanaman tahunan (tanaman hortikultura dan perkebunan), mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha budidaya ikan (termasuk udang, rumput laut, dll) menggunakan wadah budidaya yaitu tambak, kolam, mina padi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Pertanian (RTUP) Gurem",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya rumah tangga usaha pertanian (RTUP) yang menguasai lahan kurang dari setengah hektare. Lahan yang dimaksud mencakup lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum), lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal), serta lahan tempat tinggal). Lahan pertanian tersebut digunakan untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha budidaya ikan (termasuk udang, rumput laut, dll) menggunakan wadah budidaya yaitu tambak, kolam, minapadi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan (UTP) Pengguna Lahan Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya unit usaha pertanian perorangan (UTP) yang menggunakan lahan pertanian (tidak termasuk lahan Budi daya di laut atau perairan umum) untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha Budi daya ikan (termasuk udang, rumput laut, dll) menggunakan wadah Budi daya merupakan tambak, kolam, minapadi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan (UTP) Gurem",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya usaha pertanian perorangan (UTP) yang menguasai lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) kurang dari setengah hectare dan tidak termasuk lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal). Lahan pertanian tersebut digunakan untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha budidaya ikan (termasuk udang, rumput laut, dll) menggunakan wadah budidaya yaitu tambak, kolam, minapadi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Petani Pengguna Lahan Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya orang dan/atau beserta keluarganya yang menggunakan lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) dan lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal). Lahan pertanian tersebut untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak dengan tujuan utama pemeliharaan ternak diantaranya (pengembangbiakan, penggemukan, pembibitan, pembesaran ternak betina (rearing), atau produksi telur/susu/madu/kokon/liur).",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Petani Gurem",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya orang seorang dan/atau beserta keluarganya yang menguasai lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) kurang dari setengah hectare dan tidak termasuk lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal). Lahan pertanian tersebut untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak dengan tujuan utama pemeliharaan ternak diantaranya (pengembangbiakan, penggemukan, pembibitan, pembesaran ternak betina (rearing), atau produksi telur/susu/madu/kokon/liur).",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Petani",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan orang seorang dan/atau beserta keluarganya yang melakukan usaha pertanian di bidang tanaman pangan, hortikultura, perkebunan, dan/atau peternakan.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Pertanian (RTUP) Urban Farming",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "adalah banyaknya rumah tangga usaha pertanian yang berada di wilayah perkotaan (klasifikasi desa/kelurahaan perkotaan) yang mengusahakan pertaniannya di lahan yang terbatas, sebagian besar menggunakan media tanam, tidak di permukaan tanah secara langsung atau menggunakan pot dan sejenisnya, serta menggunakan teknologi seperti hidroponik, aquaponik, vertikulture, media terpal dan sejenisnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Unit Usaha Pertanian Perorangan (UTP) Urban Farming",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "adalah banyaknya unit usaha pertanian yang berada di wilayah perkotaan (klasifikasi desa/kelurahaan perkotaan) yang mengusahakan pertaniannya di lahan yang terbatas, sebagian besar menggunakan media tanam tidak di permukaan tanah secara langsung atau menggunakan pot dan sejenisnya, serta dalam mengusahakan pertaniannya media tanamnya menggunakan teknologi seperti hidroponik, aquaponik, vertikulture, media terpal dan sejenisnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Petani Milenial",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya warga negara Indonesia (WNI) berusia 19 (sembilan belas) tahun sampai dengan 39 (tiga puluh sembilan) tahun yang melakukan usaha pertanian di bidang tanaman pangan, hortikultura, perkebunan, dan/atau peternakan, atau melakukan usaha pertanian menggunakan teknologi digital serta penggunaan teknologi modern.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Penggunaan teknologi digital",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "mencakup penggunaan internet/ telepon pintar/ teknologi informasi, penggunaan drone, dan penggunaan kecerdasan buatan untuk kegiatan usaha pertanian.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Penggunaan teknologi modern",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "adalah penggunaan unsur teknologi sehingga praktik pertanian menjadi efektif dan efisien dibanding ketika tidak menggunakannya. Contoh teknologi modern dalam pertanian adalah alat dan mesin pertanian yang menggunakan teknologi terkini baik mekanis maupun digital.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
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
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
              child: SizedBox(
                height: screenHeight,
                child: const BodySensusPertanian(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
