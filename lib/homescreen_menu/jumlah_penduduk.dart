// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/series_registrasi.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/series_registrasi_kelum.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi/series_proyeksi.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/series_pendudukkabkot.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi/series_proyeksi_kelum.dart';
import 'package:bps_cilacap/restAPI/repository_penduduk.dart';
import 'package:flutter/material.dart';

class jumlahPenduduk extends StatefulWidget {
  const jumlahPenduduk({Key? key}) : super(key: key);

  @override
  State<jumlahPenduduk> createState() => _jumlahPendudukState();
}

RepositoryJumlahPenduduk repositoryJumlahPenduduk = RepositoryJumlahPenduduk();

class _jumlahPendudukState extends State<jumlahPenduduk> {
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
          'JUMLAH PENDUDUK',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
      ),
      body: FutureBuilder(
        future: repositoryJumlahPenduduk.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isijumlahpenduduk = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String thn1 = isijumlahpenduduk[index = 16].tahun;
                String thn2 = isijumlahpenduduk[index = 0].tahun;

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
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
                                      "Jumlah Penduduk Tahun " +
                                          thn1 +
                                          "-" +
                                          thn2 +
                                          " Berdasarkan Proyeksi Penduduk dan Catatan Registrasi ",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
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

                      //Proyeksi
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
                                child: const SeriesProyeksi(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.08,
                            child: Row(
                              children: const [
                                Flexible(
                                  flex: 16,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "Penduduk Kabupaten Cilacap Menurut Kecamatan (Hasil Sensus dan Proyeksi Penduduk, Sumber: BPS)",
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
                      const Divider(height: 3, color: Colors.transparent),

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
                                child: const SeriesProyeksiKelum(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.086,
                            child: Row(
                              children: const [
                                Flexible(
                                  flex: 16,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "Penduduk Kabupaten Cilacap Menurut Kelompok Umur (Hasil Sensus dan Proyeksi Penduduk, Sumber: BPS)",
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

                      const Divider(height: 3, color: Colors.transparent),
                      // Penduduk Registrasi
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
                                child: const SeriesRegistrasi(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.08,
                            child: Row(
                              children: const [
                                Flexible(
                                  flex: 16,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "Penduduk Kabupaten Cilacap Menurut Kecamatan (Hasil Registrasi Penduduk, Sumber: Disdukcapil)",
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
                      const Divider(height: 3, color: Colors.transparent),

                      // Penduduk Registrasi
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
                                child: const SeriesRegistrasiKelum(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.087,
                            child: Row(
                              children: const [
                                Flexible(
                                  flex: 16,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "Penduduk Kabupaten Cilacap Menurut Kelompok Umur (Hasil Registrasi Penduduk, Sumber: Disdukcapil)",
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
                      const Divider(height: 3, color: Colors.transparent),
                      //Penduduk Kab/kota di jateng
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
                                child: const SeriesPddkKabkot(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.08,
                            child: Row(
                              children: const [
                                Flexible(
                                  flex: 16,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "Penduduk Kabupaten/Kota di Jawa Tengah (Hasil Sensus dan Proyeksi Penduduk, Sumber: BPS)",
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
