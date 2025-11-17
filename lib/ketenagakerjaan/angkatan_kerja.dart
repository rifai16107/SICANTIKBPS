// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_kerja_lpu_kelamin.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_kerja_pendidikan_kelamin.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_kerja_umur_kelamin.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_tkk.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_tpt.dart';
import 'package:flutter/material.dart';

class AngkatanKerja extends StatefulWidget {
  const AngkatanKerja({Key? key}) : super(key: key);

  @override
  State<AngkatanKerja> createState() => _AngkatanKerjaState();
}

class _AngkatanKerjaState extends State<AngkatanKerja> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANGKATAN KERJA', style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
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
                            "Persentase Penduduk yang Bekerja dibagi berdasarkan kategori :",
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
                      child: const AKKerjaUmurKelamin(),
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
                          padding: const EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Persentase Penduduk yang Bekerja menurut\n' 
                            'Kelompok Umur dan Jenis Kelamin',
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
                      child: const AKKerjaPendidikanKelamin(),
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
                          padding: const EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Persentase Penduduk yang Bekerja menurut\n'
                            'Tingkat Pendidikan dan Jenis Kelamin',
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
                      child: const AKKerjaLPUKelamin(),
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
                          padding: const EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Persentase Penduduk yang Bekerja menurut\n'
                            'Lapangan Pekerjaan Utama dan Jenis Kelamin',
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
                      child: const AkTPT(),
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
                          padding: const EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Tingkat Pengangguran Terbuka\n' 
                            'menurut Jenis Kelamin',
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
                      child: const AkTKK(),
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
                          padding: const EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Tingkat Kesempatan Kerja\n'
                            'menurut Jenis Kelamin',
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
