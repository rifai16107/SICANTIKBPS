// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:bps_cilacap/carousel/carousel_1.dart';
import 'package:bps_cilacap/carousel/carousel_2.dart';
import 'package:bps_cilacap/carousel/carousel_3.dart';
import 'package:bps_cilacap/carousel/carousel_4.dart';
import 'package:bps_cilacap/carousel/carousel_5.dart';
import 'package:bps_cilacap/carousel/carousel_6.dart';
import 'package:bps_cilacap/carousel/carousel_7.dart';
import 'package:bps_cilacap/homescreen_menu/kemiskinan_content.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan_content.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran_content.dart';
import 'package:bps_cilacap/homescreen_menu/pertumbuhan_ekonomi.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../homescreen_menu/inflasi_content.dart';
import '../homescreen_menu/sensus_tani_content.dart';
import '../homescreen_menu/sensus_pddk_content.dart';
import '../homescreen_menu/pendidikan_content.dart';
import '../homescreen_menu/perumahan_content.dart';
import '../homescreen_menu/pertanian_content.dart';
import '../homescreen_menu/pdrb_content.dart';
import '../homescreen_menu/ipm_content.dart';
import '../homescreen_menu/jumlah_penduduk.dart';
import '../homescreen_menu/ketenagakerjaan_content.dart';
import '../homescreen_menu/sensus_ekonomi/sensus_ekonomi_content.dart';
//import 'package:social_media_flutter/widgets/icons.dart';
//import 'package:social_media_flutter/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../homescreen_menu/song/marststatistik_song.dart';
import '../homescreen_menu/song/lagutema_se2026.dart';

const IconData tiktok = IconData(0xf058c, fontFamily: 'MaterialIcons');

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: HomeContent()),
);

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

final Uri _url1 = Uri.parse('https://cilacapkab.bps.go.id/');
final Uri _url2 = Uri.parse('https://ppid.bps.go.id/?mfd=3301');
final Uri _url3 = Uri.parse('https://www.instagram.com/bpscilacap/');
final Uri _url4 = Uri.parse('https://www.youtube.com/@BPSKabupatenCilacap');
final Uri _url5 = Uri.parse('https://www.tiktok.com/@bpscilacap');
final Uri _url6 = Uri.parse('https://www.facebook.com/bpscilacap');
final Uri _url7 = Uri.parse('https://twitter.com/bpscilacap');
final Uri phoneNumber = Uri.parse('tel:282534328');
final Uri whatsApp = Uri.parse('https://wa.me/6285162823301');

class _HomeContentState extends State<HomeContent> {
  final List<Widget> carouselList = [
    const carouselSlider1(),
    const carouselSlider2(),
    const carouselSlider3(),
    const carouselSlider4(),
    const carouselSlider5(),
    const carouselSlider6(),
    const carouselSlider7(),
  ];
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    var screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    var screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: Column(
        children: <Widget>[
          //animasi atas
          SizedBox(
            height: 0.17 * screenHeight,
            //flex: 25,
            child: Container(
              margin: const EdgeInsets.only(top: 0, bottom: 0),
              //height: 0.15*screenHeight,
              height: screenHeight * 0.16,
              width: double.infinity,
              child: Column(
                children: [
                  //Expanded(
                  CarouselSlider(
                    items: carouselList,
                    carouselController: _controller,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      //autoPlayCurve: Curves.decelerate,
                      //height:105,
                      height: screenHeight * 0.16,
                      //autoPlayInterval: const Duration(seconds: 5),
                      //autoPlayAnimationDuration: const Duration(milliseconds: 700),
                      disableCenter: true,
                      onPageChanged: (index, reason) {
                        setState(() {});
                      },
                    ),
                  ),
                  //),
                ],
              ),
            ),
          ),
          const Divider(height: 0),
          const Divider(height: 2, color: Colors.transparent),
          Expanded(
            //flex: 80,
            child: Container(
              margin: const EdgeInsets.only(bottom: 2),
              height: 0.85 * screenHeight,
              child: Scrollbar(
                thickness: 5,
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //First Row
                      Container(
                        width: screenWidth * 0.94,
                        height: screenHeight * 0.16,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.blueGrey,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const jumlahPenduduk();
                                          },
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/jumlah_penduduk.png',
                                          fit: BoxFit.cover,
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                        ),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'PENDUDUK',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
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
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const ketenagakerjaanContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/ketenagakerjaan.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'TENAGA KERJA',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const pengangguranContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/pengangguran.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'PENGANGGURAN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Baris ke 2
                      Container(
                        width: screenWidth * 0.94,
                        height: screenHeight * 0.16,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const kemiskinanContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/kemiskinan.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'KEMISKINAN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const ketimpanganContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/ketimpangan.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.095,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'GINI RASIO &\n'
                                            'KETIMPANGAN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.5,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const IpmContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/ipm.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'IPM, IPG & IDG',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Baris 3
                      Container(
                        width: screenWidth * 0.94,
                        height: screenHeight * 0.16,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const inflasiContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/inflasi.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'INFLASI',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const pertumbuhanEkonomi();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/pertumbuhan_ekonomi.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.095,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'PERTUMBUHAN\n'
                                            'EKONOMI',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.5,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const PdrbContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/pdrb.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'PDRB',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Baris ke 4
                      Container(
                        width: screenWidth * 0.94,
                        height: screenHeight * 0.16,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const pendidikanContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/pendidikan.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'PENDIDIKAN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const perumahanContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/perumahan.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'PERUMAHAN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.31,
                              height: screenHeight * 0.15,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const pertanianContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/pertanian.png',
                                          width: screenWidth * 0.30,
                                          height: screenHeight * 0.115,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.30,
                                          color: Colors.blue,
                                          child: const Text(
                                            'PERTANIAN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 5),
                      //Baris 4a song SE dan mars Statistik
                      Container(
                        width: screenWidth * 0.96,
                        height: screenHeight * 0.15,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.46,
                              height: screenHeight * 0.14,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const LaguMarsStatistikContent();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/song/logo_lagu_mars.png',
                                          width: screenWidth * 0.44,
                                          height: screenHeight * 0.105,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.44,
                                          color: Colors.blue,
                                          child: const Text(
                                            'MARS STATISTIK',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ), //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.46,
                              height: screenHeight * 0.14,
                              child: Material(
                                //color: const Color.fromARGB(255, 232, 240, 248),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        121,
                                        123,
                                        126,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const LaguTemaSE2026Content();
                                          },
                                        ),
                                      );
                                    },
                                    splashColor: Colors.blueGrey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/song/logo_lagu_se.png',
                                          width: screenWidth * 0.44,
                                          height: screenHeight * 0.105,
                                          fit: BoxFit.cover,
                                        ),
                                        //const SizedBox(height:6),
                                        Container(
                                          width: screenWidth * 0.44,
                                          color: Colors.blue,
                                          child: const Text(
                                            'THEME SONG SE2026',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        //const SizedBox(height:10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 5),

                      //Baris ke 5
                      Container(
                        width: screenWidth * 0.92,
                        height: screenHeight * 0.12,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(
                                left: 0,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.11,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.blueGrey,
                                  side: const BorderSide(
                                    width: 1.5,
                                    color: Color.fromARGB(255, 121, 123, 126),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SensusPddkContent();
                                      },
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  width: screenWidth * 0.92,
                                  height: screenHeight * 0.11,
                                  'assets/images/hasil_sp.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //baris 6
                      Container(
                        width: screenWidth * 0.92,
                        height: screenHeight * 0.12,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(
                                left: 0,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.11,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.blueGrey,
                                  side: const BorderSide(
                                    width: 1.5,
                                    color: Color.fromARGB(255, 121, 123, 126),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SensusTaniContent();
                                      },
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  width: screenWidth * 0.92,
                                  height: screenHeight * 0.11,
                                  'assets/images/hasil_st.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // baris 7 SE
                      Container(
                        width: screenWidth * 0.92,
                        height: screenHeight * 0.12,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(
                                left: 0,
                                top: 0,
                                right: 5,
                              ),
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.11,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.blueGrey,
                                  side: const BorderSide(
                                    width: 1.5,
                                    color: Color.fromARGB(255, 121, 123, 126),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SensusEkonomiContent();
                                      },
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  width: screenWidth * 0.92,
                                  height: screenHeight * 0.11,
                                  'assets/images/logo_se2026.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Visit Web dan PPID
                      Divider(height: screenHeight * 0.020, thickness: 0),

                      Container(
                        width: screenWidth,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              width: 0.5 * screenWidth,
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                              ),
                              child: const Text(
                                "Visit Us:",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Container(
                              width: 0.5 * screenWidth,
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 15,
                              ),
                              child: const Text(
                                "Contact Us:",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: _launchUrlBPSCILACAP,
                                  splashColor: Colors.blueGrey,
                                  child: IntrinsicHeight(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/homecontent/web_icon.png',
                                            fit: BoxFit.cover,
                                            width:
                                                screenWidth *
                                                0.065 *
                                                (screenHeight / screenWidth),
                                            height: screenHeight * 0.065,
                                          ),
                                          SizedBox(width: screenWidth * 0.06),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: _launchUrlPPIDCILACAP,
                                  splashColor: Colors.blueGrey,
                                  child: IntrinsicHeight(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        //mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/homecontent/ppid_icon.png',
                                            fit: BoxFit.cover,
                                            width:
                                                screenWidth *
                                                0.11 *
                                                (screenHeight / screenWidth),
                                            height: screenHeight * 0.03,
                                          ),
                                          SizedBox(
                                            width:
                                                screenWidth -
                                                (0.87 * screenWidth),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: _launchUrlWACILACAP,
                                  splashColor: Colors.blueGrey,
                                  child: IntrinsicHeight(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        //mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/medsos/whatsapp.png',
                                            fit: BoxFit.cover,
                                            width:
                                                screenWidth *
                                                0.06 *
                                                (screenHeight / screenWidth),
                                            height: screenHeight * 0.06,
                                          ),
                                          SizedBox(width: screenWidth * 0.055),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: _launchUrlTELPCILACAP,
                                  splashColor: Colors.blueGrey,
                                  child: IntrinsicHeight(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        //mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/medsos/phone.png',
                                            fit: BoxFit.cover,
                                            width:
                                                screenWidth *
                                                0.06 *
                                                (screenHeight / screenWidth),
                                            height: screenHeight * 0.06,
                                          ),
                                          const SizedBox(width: 0),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //Sosial Media
                      Divider(height: screenHeight * 0.020, thickness: 0),

                      Container(
                        width: screenWidth,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 25,
                              ),
                              child: const Text(
                                "Follow Us:",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10),
                            Container(
                              color: Colors.transparent,
                              height: screenHeight * 0.09,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: _launchUrlIGCILACAP,
                                    splashColor: Colors.blueGrey,
                                    child: IntrinsicHeight(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/medsos/ig.png',
                                              fit: BoxFit.cover,
                                              width:
                                                  screenWidth *
                                                  0.06 *
                                                  (screenHeight / screenWidth),
                                              height: screenHeight * 0.06,
                                            ),
                                            SizedBox(width: screenWidth * 0.05),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: _launchUrlYOUTUBECILACAP,
                                    splashColor: Colors.blueGrey,
                                    child: IntrinsicHeight(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/medsos/youtube.png',
                                              fit: BoxFit.cover,
                                              width:
                                                  screenWidth *
                                                  0.06 *
                                                  (screenHeight / screenWidth),
                                              height: screenHeight * 0.06,
                                            ),
                                            SizedBox(width: screenWidth * 0.05),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: _launchUrlTIKTOKCILACAP,
                                    splashColor: Colors.blueGrey,
                                    child: IntrinsicHeight(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/medsos/tiktok.png',
                                              fit: BoxFit.cover,
                                              width:
                                                  screenWidth *
                                                  0.06 *
                                                  (screenHeight / screenWidth),
                                              height: screenHeight * 0.06,
                                            ),
                                            SizedBox(width: screenWidth * 0.05),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: _launchUrlTWITTERCILACAP,
                                    splashColor: Colors.blueGrey,
                                    child: IntrinsicHeight(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/medsos/twitter.png',
                                              fit: BoxFit.cover,
                                              width:
                                                  screenWidth *
                                                  0.06 *
                                                  (screenHeight / screenWidth),
                                              height: screenHeight * 0.06,
                                            ),
                                            SizedBox(width: screenWidth * 0.05),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: _launchUrlFACEBOOKCILACAP,
                                    splashColor: Colors.blueGrey,
                                    child: IntrinsicHeight(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 5.0,
                                          top: 5,
                                          bottom: 5,
                                          right: 10,
                                        ),
                                        child: Row(
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/medsos/fb.png',
                                              fit: BoxFit.cover,
                                              width:
                                                  screenWidth *
                                                  0.06 *
                                                  (screenHeight / screenWidth),
                                              height: screenHeight * 0.06,
                                            ),
                                            const SizedBox(width: 0.0),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //here
                      // space
                      Container(
                        width: screenWidth * 0.96,
                        height: screenHeight * 0.04,
                        color: Colors.transparent,
                      ),
                      //spacew
                    ],
                  ),
                  //),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color white, Color teal) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered)) {
        return teal;
      } else {
        return white;
      }
    }

    return MaterialStateProperty.resolveWith(getColor);
  }
}

Future<void> _launchUrlBPSCILACAP() async {
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}

Future<void> _launchUrlPPIDCILACAP() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}

Future<void> _launchUrlIGCILACAP() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}

//Future<void> _launchUrlIGCILACAP() async {
//if (!await launchUrl(_url3)) {
//throw 'Could not launch $_url3';
//}
//}

Future<void> _launchUrlYOUTUBECILACAP() async {
  if (!await launchUrl(_url4)) {
    throw 'Could not launch $_url4';
  }
}

Future<void> _launchUrlTIKTOKCILACAP() async {
  if (!await launchUrl(_url5)) {
    throw 'Could not launch $_url5';
  }
}

Future<void> _launchUrlFACEBOOKCILACAP() async {
  if (!await launchUrl(_url6)) {
    throw 'Could not launch $_url6';
  }
}

Future<void> _launchUrlTWITTERCILACAP() async {
  if (!await launchUrl(_url7)) {
    throw 'Could not launch $_url7';
  }
}

Future<void> _launchUrlWACILACAP() async {
  if (!await launchUrl(whatsApp)) {
    throw 'Could not launch $whatsApp';
  }
}

Future<void> _launchUrlTELPCILACAP() async {
  if (!await launchUrl(phoneNumber)) {
    throw 'Could not launch $phoneNumber';
  }
}
