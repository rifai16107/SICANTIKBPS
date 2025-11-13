// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_nilai_pdrb_adhk.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_dist_pdrb.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_laju_pdrb.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/series_indeks_pdrb.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class PdrbPengelContent extends StatefulWidget {
  const PdrbPengelContent({Key? key}) : super(key: key);

  @override
  _PdrbPengelContentState createState() => _PdrbPengelContentState();
}

class _PdrbPengelContentState extends State<PdrbPengelContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Center(
          child: Text(
            'PDRB MENURUT PENGELUARAN',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
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
                          "PDRB Pengeluaran",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   PDRB menurut pendekatan pengeluaran adalah semua komponen permintaan akhir yang terdiri dari:",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "(1) pengeluaran konsumsi akhir rumah tangga,",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "(2) pengeluaran konsumsi akhir lembaga non profit yang melayani rumah tangga,",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "(3) pengeluaran konsumsi  akhir pemerintah,",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "(4) pembentukan modal tetap domestik bruto,",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "(5) perubahan inventori, dan ",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "(6) ekspor neto (ekspor dikurangi impor).",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "1.	Pengeluaran Konsumsi Akhir Rumah Tangga (PKRT)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Pengeluaran konsumsi akhir rumah tangga (PKRT) adalah pengeluaran atas barang dan jasa oleh rumah tangga untuk tujuan konsumsi. Rumah tangga didefinisikan sebagai individu atau kelompok individu yang tinggal bersama dalam suatu bangunan tempat tinggal. Mereka mengumpulkan pendapatan, dapat memiliki harta dan kewajiban, serta mengkonsumsi barang dan jasa secara bersama-sama.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "2.	Pengeluaran Konsumsi Akhir LNPRT",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Nilai Pengeluaran Konsumsi LNPRT (PKLNPRT) sama dengan nilai output non-pasar yang dihasilkan LNPRT. Nilai output non pasar tersebut dihitung berdasarkan nilai seluruh pengeluaran LNPRT dalam rangka melakukan kegiatan operasionalnya. Pengeluaran dimaksud terdiri dari: (a) Konsumsi antara, (b) Kompensasi tenaga kerja, (c) Penyusutan, dan (d) Pajak lainnya atas produksi dikurangi subsidi ",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "3.	Pengeluaran Konsumsi Akhir Pemerintah (PKP)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Besarnya nilai pengeluaran konsumsi akhir pemerintah (PK-P) sama dengan nilai produksi barang dan jasa yang dihasilkan pemerintah untuk dikonsumsi pemerintah itu sendiri. PKP mencakup pembelian barang dan jasa yang bersifat rutin, pembayaran upah dan gaji pegawai, transfer sosial dalam bentuk barang, perkiraan penyusutan barang modal, dan nilai output dari Bank Indonesia, dikurangi dengan nilai penjualan barang dan jasa yang dihasilkan unit produksi yang tidak dapat dipisahkan dari aktivitas pemerintahan.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "4.	Pembentukan Modal Tetap Bruto (PMTB)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   PMTB erat kaitannya dengan keberadaan aset tetap (fixed asset) yang dilibatkan dalam proses produksi. Secara garis besar aset tetap dapat diklasifikasi menurut jenis barang modal seperti: bangunan dan konstruksi lain, mesin dan perlengkapan, kendaraan, tumbuhan, ternak, dan barang modal lainnya.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   PMTB didefinisikan sebagai penambahan dan pengurangan aset tetap pada suatu unit produksi, dalam kurun waktu tertentu. Penambahan barang modal mencakup pengadaan, pembuatan, pembelian, sewa beli (financial leasing) barang modal baru dari dalam negeri serta barang modal baru dan bekas dari luar negeri (termasuk perbaikan besar, transfer atau barter barang modal), dan pertumbuhan aset sumberdaya hayati yang dibudidaya. Sedangkan pengurangan barang modal mencakup penjualan, transfer atau barter, dan sewa beli (financial leasing) barang modal bekas pada pihak lain. Pengecualian kehilangan yang disebabkan oleh bencana alam tidak dicatat sebagai pengurangan.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "5.	Perubahan Inventori",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Pengertian sederhana dari inventori (persediaan) adalah barang yang dikuasai oleh produsen untuk tujuan diolah lebih lanjut (intermediate consumption) menjadi barang dalam bentuk lain, yang mempunyai nilai ekonomi maupun nilai manfaat yang lebih tinggi. Termasuk dalam pengertian ini adalah barang yang masih dalam proses pengerjaan (work in progress), serta barang jadi yang belum dipasarkan dan masih dikuasai oleh pihak produsen.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Perubahan inventori adalah selisih antara nilai inventori pada akhir periode akuntansi dengan nilai inventori pada awal periode akuntansi. Perubahan inventori menjelaskan tentang perubahan posisi barang inventori, yang dapat bermakna pertambahan (tanda positif) atau pengurangan (bertanda negatif).",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "5. Ekspor Impor Barang dan Jasa",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Ekspor-impor di suatu wilayah didefinisikan sebagai alih kepemilikan ekonomi (baik penjualan/pembelian, barter, hadiah ataupun hibah) atas barang dan jasa antara residen wilayah tersebut dengan non-residen yang berada di luar wilayah tersebut.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Ekspor-Impor pada suatu wilayah terdiri dari:",
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "a.	Ekspor/impor barang dari/ke Luar Negeri ke/dari provinsi tersebut",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "b.	Ekspor/impor jasa dari/ke Luar Negeri ke/dari provinsi tersebut. Cakupan jasa meliputi jasa pengangkutan, asuransi, komunikasi, pariwisata, dan jasa lainnya",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "c.	Net Ekspor antar daerah, (1) Ekspor antar daerah, (2)	Impor antar daerah",
                          textAlign: TextAlign.left,
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
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Produk Domestik Regional Bruto (PDRB) ADHB dan ADHK Kabupaten Cilacap Menurut Komponen Pengeluaran",
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
                    child: Container(height: 2, color: Colors.transparent),
                  ),
                ],
              ),
            ),
            const Divider(height: 2, color: Colors.transparent),
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
                      child: const SeriesPdrbAdhb(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "PDRB ADHB Menurut Komponen Pengeluaran",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14),
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
            const Divider(height: 4, color: Colors.transparent),
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
                      child: const SeriesPdrbAdhk(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "PDRB ADHK (2010) Menurut Komponen Pengeluaran",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14),
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
            const Divider(height: 4, color: Colors.transparent),
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
                      child: const SeriesDistPdrb(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.06,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Distribusi Persentase PDRB ADHB Menurut Komponen Pengeluaran",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14),
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
            const Divider(height: 4, color: Colors.transparent),
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
                      child: const SeriesLajuPdrb(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.06,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Laju Pertumbuhan PDRB ADHK (2010) Menurut Komponen Pengeluaran",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14),
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
            const Divider(height: 4, color: Colors.transparent),
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
                      child: const SeriesIndeksImplisit(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.06,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Indeks Implisit PDRB ADHK (2010) Menurut Komponen Pengeluaran",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14),
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
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 0.95,
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        "Catatan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(color: Colors.transparent, height: 5),
                    SizedBox(
                      width: screenWidth * 0.95,
                      child: const Text(
                        "- ADHB : Atas Dasar Harga Berlaku.",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.95,
                      child: const Text(
                        "- ADHK : Atas Dasar Harga Konstan.",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
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
