// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/bukan_angkatan_kerja.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/nakerlapus_kabkot.dart';
import 'package:flutter/material.dart';

class tenagaKerjaKabkot extends StatefulWidget {
  const tenagaKerjaKabkot({Key? key}) : super(key: key);

  @override
  State<tenagaKerjaKabkot> createState() => _tenagaKerjaKabkotState();
}

class _tenagaKerjaKabkotState extends State<tenagaKerjaKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'KABUPATEN/KOTA JAWA TENGAH',
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Container(
                            height: 120,
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
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(10, 100, 31, 0.886))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const NakerkabkotLapus(),
                              direction: AxisDirection.left));
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
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Icon(Icons.arrow_right),
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
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(10, 100, 31, 0.886))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const BukanAngkatanKerja(),
                              direction: AxisDirection.left));
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
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Icon(Icons.arrow_right),
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
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(10, 100, 31, 0.886))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const BukanAngkatanKerja(),
                              direction: AxisDirection.left));
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
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Icon(Icons.arrow_right),
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
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(10, 100, 31, 0.886))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const BukanAngkatanKerja(),
                              direction: AxisDirection.left));
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
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Icon(Icons.arrow_right),
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
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(10, 100, 31, 0.886))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const BukanAngkatanKerja(),
                              direction: AxisDirection.left));
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
                                "Rata-rata Upah Buruh/Karyawan/Pegawai",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Icon(Icons.arrow_right),
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
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(10, 100, 31, 0.886))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const BukanAngkatanKerja(),
                              direction: AxisDirection.left));
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
                                "Rata-rata Pendapatan Bersih Pekerja Formal dan Informal",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Icon(Icons.arrow_right),
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
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ],
            )));
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
