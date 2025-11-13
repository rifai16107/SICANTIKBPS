import 'package:bps_cilacap/Icons/about_icons_icons.dart';
//import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({Key? key}) : super(key: key);

  @override
  State<TentangAplikasi> createState() => _TentangAplikasiState();
}

//<<<<< target url hyperlink
final Uri _url1 = Uri.parse('https://cilacapkab.bps.go.id/');
final Uri _url2 = Uri.parse('https://github.com/rifai16107/sicantik');
final Uri _url3 = Uri.parse('https://goo.gl/maps/Xye9DyrP7zSzifYN8');

//>>>>>
class _TentangAplikasiState extends State<TentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    //<<<<< ukuran layar
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    //>>>>>
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 253, 252, 252),
          width: screenWidth,
          height: screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/logo_berakhlak.png",
                  width: 260,
                  height: 60,
                ),
                Image.asset("assets/images/logo.png", width: 130, height: 130),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  child: const Text(
                    'SiCANTIK',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 7, 4, 177),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: const Text(
                    '-Diseminasi Cilacap Dalam Angka Statistik-',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: const Text(
                    'Aplikasi ini membutuhkan koneksi internet untuk menampilkan data',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.15,
                  width: screenWidth * 0.6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: screenWidth * 0.1,
                              height: screenHeight * 0.05,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                AboutIcons.github_icon,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.05,
                              alignment: Alignment.centerLeft,
                              child: const TextButton(
                                onPressed: _launchUrlGithub,
                                child: Text(
                                  'Work with Us',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: screenWidth * 0.1,
                              height: screenHeight * 0.05,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                AboutIcons.browser_icon,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.05,
                              alignment: Alignment.centerLeft,
                              child: const TextButton(
                                onPressed: _launchUrlBPS,
                                child: Text(
                                  'cilacapkab.bps.go.id',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: screenWidth * 0.1,
                              height: screenHeight * 0.05,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                AboutIcons.cube_outline,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.05,
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                '  Version 8.0.0',
                                //version,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: const Text(
                    'Our Team :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Divider(
                      color: Colors.transparent,
                      indent: screenWidth * 0.05,
                    ),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) {
                            return ListView(
                              children: [
                                Column(
                                  children: [
                                    Divider(
                                      height: screenHeight * 0.05,
                                      color: Colors.transparent,
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Penanggung Jawab:",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Suswandi MSE, MA (Kepala BPS Kabupaten Cilacap)",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Divider(height: screenHeight * 0.05),
                                    const Center(
                                      child: Text(
                                        "     Konsep, Ide, Desain (Project Leader): ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Tim Integrasi Inovasi BPS Kabupaten Cilacap",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Image.asset(
                        "assets/images/logobps.png",
                        height: screenWidth * 0.30,
                      ),
                    ),
                    Divider(indent: screenWidth * 0.20),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) {
                            return ListView(
                              children: [
                                Column(
                                  children: [
                                    Divider(
                                      height: screenHeight * 0.05,
                                      color: Colors.transparent,
                                    ),
                                    const Center(
                                      child: Text(
                                        "    Developer and Programming Team",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: screenHeight * 0.05,
                                      color: Colors.transparent,
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Developer (Team Leader): ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Achmad Rifai, SST (BPS Kabupaten Cilacap)",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: screenHeight * 0.05,
                                      color: Colors.transparent,
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Programing Team (STMIK Komputama) : ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Imam Fahrudin (UI/UX Programmer)",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Amarulloh Miftahul K. (Backend Programmer)",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        "     Puji Apriyanto (Frontend Programmer)",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Image.asset(
                        "assets/images/logotimdev.png",
                        height: screenWidth * 0.3,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Text(
                  "Alamat :",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextButton(
                  onPressed: _launchUrlAlamat,
                  child: Text(
                    "Jl. Dr. Soetomo No.16A, 53212, Sidakaya, Cilacap Selatan, Cilacap, Jawa Tengah Telp (0282) 543328. Email:bps3301@bps.go.id",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                const Text(
                  "Hak Cipta © 2024, BPS Kabupaten Cilacap",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  "   ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//<<<<< proses url github/pujiapri13/BPS_CLC
Future<void> _launchUrlAlamat() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}
//>>>>>

//<<<<< proses url github/pujiapri13/BPS_CLC
Future<void> _launchUrlGithub() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}
//>>>>>

//<<<<< proses url cilacapkab.bps.go.id
Future<void> _launchUrlBPS() async {
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}
//>>>>>