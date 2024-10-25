// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/carousel/carousel_1.dart';
import 'package:bps_cilacap/carousel/carousel_2.dart';
import 'package:bps_cilacap/carousel/carousel_3.dart';
import 'package:bps_cilacap/carousel/carousel_4.dart';
import 'package:bps_cilacap/carousel/carousel_5.dart';
import 'package:bps_cilacap/carousel/carousel_6.dart';
import 'package:bps_cilacap/homescreen_menu/kemiskinan_content.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan_content.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran_content.dart';
import 'package:bps_cilacap/homescreen_menu/pertumbuhan_ekonomi.dart';
import 'package:bps_cilacap/homescreen_menu/tenaga_kerja.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../homescreen_menu/inflasi_content.dart';
import '../homescreen_menu/sensus_content.dart';
import '../homescreen_menu/pendidikan_content.dart';
import '../homescreen_menu/perumahan_content.dart';
import '../homescreen_menu/pertanian_content.dart';
import '../homescreen_menu/pdrb_content.dart';
import '../homescreen_menu/ipm_content.dart';
import '../homescreen_menu/jumlah_penduduk.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeContent(),
    ));

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final List<Widget> carouselList = [
    const carouselSlider1(),
    const carouselSlider2(),
    const carouselSlider3(),
    const carouselSlider4(),
    const carouselSlider5(),
    const carouselSlider6(),
  ];
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: Column(
          children: <Widget>[
            //animasi atas
            Flexible(
              //fit: FlexFit.tight,
              flex: 5,
              child: Container(
                margin: const EdgeInsets.only(top: 3),
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
                            height: screenHeight * 0.16,
                            //autoPlayInterval: const Duration(seconds: 5),
                            //autoPlayAnimationDuration: const Duration(milliseconds: 700),
                            disableCenter: true,
                            onPageChanged: (index, reason) {
                              setState(() {});
                            }),
                      ),
                    //),
                  ],
                ),
              ),
            ),
            
            Expanded(
                flex:16,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                   
                   //First Row
                      Container(
                              width: screenWidth * 0.96,
                              height: screenHeight * 0.15,
                              color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const jumlahPenduduk();
                                  },
                                ));
                              },
                              child: Image.asset('assets/images/jumlah_penduduk.png'),
                            ),
                          ), 
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const tenagaKerja();
                                  },
                                ));
                              },
                              child: Image.asset(
                                  'assets/images/ketenagakerjaan.png'),
                            ),
                          ),
                          
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                             width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const pengangguranContent();
                                  },
                                ));
                              },
                              child:
                                  Image.asset('assets/images/pengangguran.png'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const kemiskinanContent();
                                  },
                                ));
                              },
                              child:
                                  Image.asset('assets/images/kemiskinan.png'),
                            ),
                          ),
                          
                        ],
                      ),
                    ),

                            //Baris ke 2
                        Container(
                          width: screenWidth * 0.96,
                          height: screenHeight * 0.15,
                          color: Colors.grey.shade200,
                              child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const inflasiContent();
                                  },
                                ));
                              },
                              child: Image.asset('assets/images/inflasi.png'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const PdrbContent();
                                  },
                                ));
                              },
                              child:
                                  Image.asset('assets/images/pdrb.png'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const pertumbuhanEkonomi();
                                  },
                                ));
                              },
                              child: Image.asset(
                                  'assets/images/pertumbuhan_ekonomi.png'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const pertanianContent();
                                  },
                                ));
                              },
                              child: Image.asset('assets/images/pertanian.png'),
                            ),
                          ),                                                   
                          
                        ],
                      ),
                            ),

                        //Baris 3
                        Container(
                              width: screenWidth * 0.96,
                              height: screenHeight * 0.15,
                              color: Colors.transparent,
                              child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const IpmContent();
                                  },
                                ));
                              },
                              child: Image.asset('assets/images/ipm.png'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                             width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const ketimpanganContent();
                                  },
                                ));
                              },
                              child:
                                  Image.asset('assets/images/ketimpangan.png'),
                            ),
                          ),
                          
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const pendidikanContent();
                                  },
                                ));
                              },
                              child:
                                  Image.asset('assets/images/pendidikan.png'),
                            ),
                          ),
                          
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth * 0.24,
                            height: screenHeight * 0.13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 226, 209, 208))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 252, 253, 252),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const perumahanContent();
                                  },
                                ));
                              },
                              child: Image.asset('assets/images/perumahan.png'),
                            ),
                          ),
                        ],
                      ),
                            ),

                            //Baris ke 4
                        Container(
                              width: screenWidth * 0.96,
                              height: screenHeight * 0.14,
                              color: Colors.transparent,
                              child: Row(
                        children: [
                          
                          Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(
                                left: 5, top: 0, right: 5),
                            width: screenWidth*0.96,
                            height: screenHeight * 0.10,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 245, 212, 211))),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 231, 232, 233),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const SensusContent();
                                  },
                                ));
                              },
                              child: Image.asset(
                                  height: screenHeight * 0.12,
                                  width: screenWidth * 0.9,
                                  'assets/images/hasil_sensus.png'),
                            ),
                          ),
                        ],
                       ),
                     ),
                  
                  //baris 5
                  //here
                  
                  ]    
                ),
                //),
              ),
      )],
        ),
      
    );
  }
}
