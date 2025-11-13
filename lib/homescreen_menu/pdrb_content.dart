import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/pdrb_lu_conten.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/pdrb_lu_trw_content.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/pdrb_pengel_content.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel_trw/pdrb_pengel_trw_content.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhb_kabkot/series_pdrbadhb_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhk_kabkot/series_pdrbadhk_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/pdrb_kabkot_trw_content.dart';
import 'package:bps_cilacap/restAPI/repository_nilai_pdrb.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PdrbContent extends StatefulWidget {
  const PdrbContent({Key? key}) : super(key: key);

  @override
  State<PdrbContent> createState() => _PdrbContentState();
}

RepositoryNilaiPdrb repositorynilaipdrb = RepositoryNilaiPdrb();

class _PdrbContentState extends State<PdrbContent> {
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
          'PRODUK DOMESTIK REGIONAL BRUTO (PDRB)',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
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
                              "Produk Domestik Regional Bruto (PDRB)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   PDRB pada dasarnya merupakan jumlah nilai tambah yang dihasilkan oleh seluruh unit usaha dalam suatu wilayah/daerah/region tertentu, atau merupakan jumlah nilai barang dan jasa akhir yang dihasilkan oleh seluruh unit ekonomi.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "PDRB atas dasar harga berlaku (ADHB) dan atas dasar harga konstan (ADHK)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   PDRB atas dasar harga berlaku menggambarkan nilai tambah barang dan jasa yang dihitung menggunakan harga yang berlaku pada setiap tahun.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Sedangkan PDRB atas dasar harga konstan menunjukkan nilai tambah barang dan jasa yang dihitung menggunakan harga pada suatu tahun tertentu sebagai dasar.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   PDRB atas dasar harga berlaku dapat digunakan untuk melihat pergeseran struktur ekonomi. PDRB atas dasar harga konstan digunakan untuk mengetahui pertumbuhan ekonomi dari suatu periode ke periode (tahun ke tahun atau triwulan ke triwulan).",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Terdapat tiga pendekatan yang biasanya digunakan dalam menghitung angka-angka PDRB, yaitu:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 5,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "1) Pendekatan Produksi.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   PDRB menurut pendekatan produksi adalah jumlah nilai tambah atas barang dan jasa yang dihasilkan oleh berbagai unit produksi di suatu wilayah/daerah/region dalam jangka waktu tertentu (biasanya satu tahun). Unit-unit produksi tersebut dalam penyajiannya dikelompokkan menjadi 17 kategori lapangan usaha.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 5,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "2) Pendekatan Pengeluaran",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   PDRB menurut pendekatan pengeluaran adalah semua komponen permintaan akhir yang terdiri dari: (1) pengeluaran konsumsi akhir rumah tangga, (2) pengeluaran konsumsi akhir lembaga non profit yang melayani rumah tangga, (3) pengeluaran konsumsi  akhir pemerintah, (4) pembentukan modal tetap domestik bruto, (5) perubahan inventori, dan (6) ekspor neto (ekspor dikurangi impor).",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 5,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "3) Pendekatan Pendapatan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   PDRB menurut pendekatan ini merupakan jumlah balas jasa yang diterima oleh faktor- faktor	produksi	yang	ikut	serta	dalam	proses	produksi	di	suatu wilayah/daerah/region dalam jangka waktu tertentu (biasanya satu tahun). Balas jasa faktor produksi yang dimaksud adalah upah dan gaji, sewa tanah, bunga modal dan keuntungan; semuanya sebelum dipotong pajak penghasilan dan pajak langsung lainnya. Dalam definisi ini, PDRB mencakup juga penyusutan dan pajak tidak langsung neto (pajak atas produksi dan impor dikurangi subsidi).",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Metode Penghitungan PDRB yang telah dilakukan BPS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Saat ini pendekatan Penghitungan PDRB yang telah dilakukan BPS adalah PDRB Produksi (PDRB Menurut Lapangan Usaha) dan PDRB Pengeluaran, secara konsep semua metode itu akan menghasilkan angka yang sama.",
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
      body: FutureBuilder(
        future: repositorynilaipdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String tahun = isipdrb[index = 4].tahun;
                double nilaiadhbmigas5 = double.parse(
                  isipdrb[index = 4].nilai_adhb_migas,
                );
                double nilaiadhkmigas5 = double.parse(
                  isipdrb[index = 4].nilai_adhk_migas,
                );

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
                              flex: 12,
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
                                      "Tahun $tahun , PDRB ADHB (Dengan Migas) Kabupaten Cilacap tercatat sebesar ${Format.convertTo(nilaiadhbmigas5, 2)}, sedangkan PDRB ADHK (Dengan Migas) sebesar ${Format.convertTo(nilaiadhkmigas5, 2)} (dalam Juta Rp)",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(color: Colors.transparent),
                            ),
                          ],
                        ),
                      ),
                      //IPG
                      const Divider(height: 5, color: Colors.transparent),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Color.fromRGBO(39, 101, 182, 0.882),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const PdrbLuContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.1,
                            child: const Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "PDRB Kabupaten Cilacap Menurut Lapangan Usaha",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon((Icons.arrow_right)),
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
                              Color.fromRGBO(39, 101, 182, 0.882),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const pdrblutrwContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.1,
                            child: const Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "PDRB Triwulanan Kabupaten Cilacap Menurut Lapangan Usaha",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon((Icons.arrow_right)),
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
                              Color.fromRGBO(39, 101, 182, 0.882),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const PdrbPengelContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.1,
                            child: const Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "PDRB Kabupaten Cilacap Menurut Komponen Pengeluaran",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon((Icons.arrow_right)),
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
                              Color.fromRGBO(39, 101, 182, 0.882),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const pdrbpengeltrwContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.1,
                            child: const Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "PDRB Triwulanan Kabupaten Cilacap Menurut Komponen Pengeluaran",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon((Icons.arrow_right)),
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
                              Color.fromRGBO(236, 138, 20, 0.882),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const SeriesPdrbadhbKabkot(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.1,
                            child: const Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "PDRB ADHB Menurut Kabupaten/Kota di Jawa Tengah",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon((Icons.arrow_right)),
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
                              Color.fromRGBO(236, 138, 20, 0.882),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const SeriesPdrbadhkKabkot(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.1,
                            child: const Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "PDRB ADHK Menurut Kabupaten/Kota di Jawa Tengah",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon((Icons.arrow_right)),
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
                              Color.fromRGBO(236, 138, 20, 0.882),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const pdrbkabkottrwContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.1,
                            child: const Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "PDRB Triwulanan Menurut Kabupaten/Kota di Jawa Tengah",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon((Icons.arrow_right)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(color: Colors.transparent),
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
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
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
