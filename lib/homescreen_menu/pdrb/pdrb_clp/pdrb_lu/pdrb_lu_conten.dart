// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/distribusi_pdrb_adhb.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/distribusi_pdrb_adhb_tanpa_migas.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/sumber_pertumb_pdrb_adhk.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/sumber_pertumb_adhk_tanpa_migas.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/laju_pertumbuhan_pdrb.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/laju_pertumbuhan_pdrb_tanpa_migas.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/pdrb_adhb_mlu.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/pdrb_adhb_mlu_tanpa_migas.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/pdrb_adhk_mlu.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/pdrb_adhk_mlu_tanpa_migas.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/nilai_pdrb.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class PdrbLuContent extends StatefulWidget {
  const PdrbLuContent({Key? key}) : super(key: key);

  @override
  _PdrbLuContentState createState() => _PdrbLuContentState();
}

class _PdrbLuContentState extends State<PdrbLuContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text(
              'PDRB MENURUT LAPANGAN USAHA',
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
                            "PDRB Menurut Lapangan Usaha",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   PDRB menurut lapangan usaha dirinci menurut total nilai tambah dari seluruh lapangan usaha yang mencakup 17 kategori yaitu: Pertanian, Kehutanan, dan Perikanan; Pertambangan dan Penggalian; Industri Pengolahan; Pengadaan Listrik dan Gas; Pengadaan Air, Pengelolaan Sampah, Limbah dan Daur Ulang; Konstruksi; Perdagangan Besar dan Eceran, Reparasi Mobil dan Sepeda Motor; Transportasi dan Pergudangan;		Penyediaan Akomodasi dan Makan Minum; Informasi dan Komunikasi; Jasa Keuangan dan Asuransi; Real Estat; Jasa Perusahaan; Administrasi	Pemerintahan, Pertahanan dan Jaminan Sosial Wajib; Jasa Pendidikan; Jasa Kesehatan dan Kegiatan Sosial; dan Jasa lainnya.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   PDRB (Produk Domestik Regional Bruto) adalah nilai tambah produksi yang diciptakan oleh sektor-sektor ekonomi.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Nilai tambah merupakan nilai yang ditambahkan atas nilai barang dan jasa sebagai biaya antara agar menjadi output.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Oleh karenanya secara matematis nilai tersebut dapat dihitung menggunakan formula sederhana sebagai berikut :",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Nilai Tambah Bruto (NTB) = Output - Input antara",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   NTB merupakan balas jasa faktor produksi, yang terdiri dari komponen :",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text("1) Pendapatan faktor"),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text("2) Penyusutan barang modal tetap"),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text("3) pajak tak langsung neto"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Apabila penyusutan dikeluarka dari NTB maka akan diperoleh Nilai Tambah Neto.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Pendapatan faktor merupakan nilai tambah produsen atas penggunaan faktor-faktor produksi dalam proses produksi, yang terdiri dari unsur-unsur :",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "1) Upah dan gaji sebagai balas jasa pegawai",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "2) Sewa tanah sebagai balas jasa tanah",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "3) Bunga sebagai balas jasa modal",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 20,
                            right: 5,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "4) Keuntungan sebagai balas jasa kewiraswastaan",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Penghitungan PDRB mempertimbangkan produksi domestik tanpa mempertimbangan kepemilikan faktor produksi.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Nilai PDRB disajikan melalui dua jenis harga, yaitu Atas Dasar Harga Berlaku (ADHB)/at current market prices, dan Atas Dasar Harga Konstan (ADHK)/constant prices.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Konsep atas dasar harga kosntan merupakan PDRB atas dasar harga berlaku yang telah 'dihilangkan' pengaruh perubahan harga.",
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
              const Divider(height: 2, color: Colors.transparent),

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
                        child: const NilaiPdrb(),
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
                            width: screenWidth * 0.10,
                            height: screenHeight * 0.05,
                          ),
                          const SizedBox(width: 2),
                          Container(
                            alignment: Alignment.center,
                            width: screenWidth * 0.83,
                            height: screenHeight * 0.06,
                            child: Text(
                              'Nilai PDRB ADHB dan ADHK Menurut Lap. Usaha',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.5,
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
                        child: const NilaiPdrb(),
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
                            "Nilai PDRB ADHB dan ADHK Menurut Lap. Usaha",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const PdrbLapUs(),
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
                            "PDRB ADHB Menurut Lap. Usaha (dengan Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const PdrbLapUsTanpaMigas(),
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
                            "PDRB ADHB Menurut Lap. Usaha (tanpa Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const PdrbAdhkLapUs(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "PDRB ADHK Menurut Lap. Usaha (dengan Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const PdrbAdhkLapUsTanpaMigas(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "PDRB ADHK Menurut Lap. Usaha (tanpa Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const DistribusiPdrb(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Distribusi PDRB ADHB Menurut Lap. Usaha (dengan Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const DistribusiPdrbTanpaMigas(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Distribusi PDRB ADHB Menurut Lap. Usaha (tanpa Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const SumberPertumbPdrbAdhk(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Sumber Pertumbuhan PDRB ADHK (dengan Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const SumberPertumbPdrbAdhkTanpaMigas(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Sumber Pertumbuhan PDRB ADHK (tanpa Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const LajuPertumbuhanPdrb(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Laju Pertumbuhan PDRB ADHK (dengan Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                        child: const LajuPertumbuhanPdrbTanpaMigas(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Laju Pertumbuhan PDRB ADHK (tanpa Migas)",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
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
                          "- ADHK : Atas dasar Harga Konstan",
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
