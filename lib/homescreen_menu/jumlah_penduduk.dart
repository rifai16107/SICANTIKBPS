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
                              flex: 2,
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

                      //Proyeksi Kecamatan
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
                                child: const SeriesProyeksi(),
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
                                  SizedBox(
                                    width: screenWidth * 0.80,
                                    child: Text(
                                      'Penduduk Kabupaten Cilacap Menurut\n'
                                      'Kecamatan Hasil Sensus dan Proyeksi\n'
                                      'Penduduk, (Sumber: BPS)',
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
                      //Proyeksi Kelum
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
                                child: const SeriesProyeksiKelum(),
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
                                  SizedBox(
                                    width: screenWidth * 0.80,
                                    child: Text(
                                      'Penduduk Kabupaten Cilacap Menurut\n'
                                      'Kelompok Umur Hasil Sensus dan Proyeksi\n'
                                      'Penduduk, (Sumber: BPS)',
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
                      // Penduduk Registrasi Per Kecamatan
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
                                child: const SeriesRegistrasi(),
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
                                  SizedBox(
                                    width: screenWidth * 0.80,
                                    child: Text(
                                      'Penduduk Kabupaten Cilacap Menurut\n'
                                      'Kecamatan,Hasil Registrasi Penduduk\n'
                                      '(Sumber: Disdukcapil)',
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

                      // Penduduk Registrasi
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
                                child: const SeriesRegistrasiKelum(),
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
                                  SizedBox(
                                    width: screenWidth * 0.80,
                                    child: Text(
                                      'Penduduk Kabupaten Cilacap Menurut\n'
                                      'Kelompok Umur, Hasil Registrasi Penduduk\n'
                                      '(Sumber: Disdukcapil)',
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
                      //Penduduk Kab/kota di jateng
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
                                child: const SeriesPddkKabkot(),
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
                                  SizedBox(
                                    width: screenWidth * 0.80,
                                    child: Text(
                                      'Penduduk Kabupaten/Kota di Jawa Tengah\n'
                                      'Hasil Sensus dan Proyeksi\n'
                                      'Penduduk (Sumber: BPS)',
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
