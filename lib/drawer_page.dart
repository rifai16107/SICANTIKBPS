// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'package:bps_cilacap/drawer_menu/konsep_definisi.dart';
//import 'package:bps_cilacap/drawer_menu/tabel.dart';
//import 'package:bps_cilacap/drawer_menu/berita_resmi_statistik.dart';
//import 'package:bps_cilacap/drawer_menu/publikasi.dart';
//import 'package:bps_cilacap/bottomnavbar_content/tentang_aplikasi.dart';
//import 'package:bps_cilacap/drawer_menu/senarai_rencana_terbit.dart';
//import 'package:bps_cilacap/drawer_menu/web_gis.dart';
//import 'drawer_menu/informasi_grafis.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

final Uri _url1 = Uri.parse('https://cilacapkab.bps.go.id/id/publication');
final Uri _url2 = Uri.parse('https://cilacapkab.bps.go.id/id/pressrelease');
final Uri _url3 = Uri.parse('https://cilacapkab.bps.go.id/id/arc');
final Uri _url4 = Uri.parse('https://s.bps.go.id/gissp_3301');
final Uri _url5 = Uri.parse('https://cilacapkab.bps.go.id/id/infographic');
final Uri _url6 = Uri.parse(
  'https://cilacapkab.bps.go.id/id/statistics-table?subject=519',
);
final Uri _url7 = Uri.parse('https://cilacapkab.bps.go.id/id/query-builder');

class _DrawerPageState extends State<DrawerPage> {
  Future<bool> showexitpesan() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('KELUAR APLIKASI'),
        content: const Text('Apakah yakin ingin keluar ?'),
        actions: [
          TextButton(
            child: const Text('YES'),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
          TextButton(
            child: const Text('NO'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final DrawerHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final DrawerWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        showexitpesan();
        return Future.value(false);
      },
      child: Material(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            //satu
            Container(
              height: DrawerHeight * 0.20,
              width: DrawerWidth,
              color: Colors.blue,
              child: Image.asset(
                './assets/images/gedung.jpg',
                fit: BoxFit.fill,
              ),
            ),
            //dua
            Container(
              height: DrawerHeight * 0.65,
              width: DrawerWidth,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  //PUBLIKASI
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _launchUrlPUBLIKASI,
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/publikasi_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Publikasi',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //BRS
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _launchUrlBRS,
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/brs_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Berita Resmi Statistik',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //Statistik Menurut Subyek
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _launchUrlSTATBYSUBJECT,
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/tabel_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Statistik Menurut Subyek',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //TABEL DINAMIS
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _launchUrlTABELDINAMIS,
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/tabel_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Tabel Dinamis',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //INFOGRAFIS
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _launchUrlINFOGRAFIS,
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/infografis_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Infografis',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //RENCANA TERBIT
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _launchUrlARC,
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/srt_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Senarai Rencana Terbit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //GIS SP2020
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _launchUrlWEBGIS,
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/gis_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Web GIS SP2010 dan 2020',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //Konsep Definisi
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const KonsepDefinisi();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/konsepdefinisi_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Konsep & Definisi',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //Flexible(
                  //child: ElevatedButton(
                  //style: ElevatedButton.styleFrom(
                  //backgroundColor: Colors.black),
                  //onPressed: () {
                  //Navigator.push(
                  //context,
                  //MaterialPageRoute(
                  //builder: (context) {
                  //return const TentangAplikasi();
                  //},
                  //),
                  //);
                  //},
                  //child: ListTile(
                  //minLeadingWidth: DrawerWidth * 0.05,
                  //leading: Image.asset(
                  //"assets/images/drawer/about_icon.png",
                  //color: Colors.white,
                  //),
                  //title: const Text(
                  //'Tentang Aplikasi',
                  //style: TextStyle(
                  //color: Colors.white,
                  //),
                  //),
                  //),
                  //),
                  //),
                ],
              ),
            ),
            //tiga
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.black,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    fixedSize: Size(DrawerWidth * 0.35, DrawerHeight * 0.015),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/drawer/keluar_icon.png",
                        width: 25,
                        color: Colors.black,
                      ),
                      const Flexible(
                        child: Text(" KELUAR", textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  onPressed: () {
                    showexitpesan();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrlTABELDINAMIS() async {
  if (!await launchUrl(_url7)) {
    throw 'Could not launch $_url7';
  }
}

Future<void> _launchUrlSTATBYSUBJECT() async {
  if (!await launchUrl(_url6)) {
    throw 'Could not launch $_url6';
  }
}

Future<void> _launchUrlINFOGRAFIS() async {
  if (!await launchUrl(_url5)) {
    throw 'Could not launch $_url5';
  }
}

Future<void> _launchUrlWEBGIS() async {
  if (!await launchUrl(_url4)) {
    throw 'Could not launch $_url4';
  }
}

Future<void> _launchUrlPUBLIKASI() async {
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}

Future<void> _launchUrlBRS() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}

Future<void> _launchUrlARC() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}
