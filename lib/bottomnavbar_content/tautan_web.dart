//import 'package:bps_cilacap/Icons/about_icons_icons.dart';
//import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class TautanWeb extends StatefulWidget {
  const TautanWeb({
    Key? key,
  }) : super(key: key);

  @override
  State<TautanWeb> createState() => _TautanWebState();
}

// target url hyperlink web BPS Kab/Kota
final Uri _url1 = Uri.parse('https://cilacapkab.bps.go.id/');
final Uri _url2 = Uri.parse('https://banyumaskab.bps.go.id/');
final Uri _url3 = Uri.parse('https://purbalinggakab.bps.go.id/');
final Uri _url4 = Uri.parse('https://banjarnegarakab.bps.go.id/');
final Uri _url5 = Uri.parse('https://kebumenkab.bps.go.id/');
final Uri _url6 = Uri.parse('https://purworejokab.bps.go.id/');
final Uri _url7 = Uri.parse('https://wonosobokab.bps.go.id/');
final Uri _url8 = Uri.parse('https://magelangkab.bps.go.id/');
final Uri _url9 = Uri.parse('https://boyolalikab.bps.go.id/');
final Uri _url10 = Uri.parse('https://klatenkab.bps.go.id/');
final Uri _url11 = Uri.parse('https://sukoharjokab.bps.go.id/');
final Uri _url12 = Uri.parse('https://wonogirikab.bps.go.id/');
final Uri _url13 = Uri.parse('https://karanganyarkab.bps.go.id/');
final Uri _url14 = Uri.parse('https://sragenkab.bps.go.id/');
final Uri _url15 = Uri.parse('https://grobogankab.bps.go.id/');
final Uri _url16 = Uri.parse('https://blorakab.bps.go.id/');
final Uri _url17 = Uri.parse('https://rembangkab.bps.go.id/');
final Uri _url18 = Uri.parse('https://patikab.bps.go.id/');
final Uri _url19 = Uri.parse('https://kuduskab.bps.go.id/');
final Uri _url20 = Uri.parse('https://jeparakab.bps.go.id/');
final Uri _url21 = Uri.parse('https://demakkab.bps.go.id/');
final Uri _url22 = Uri.parse('https://semarangkab.bps.go.id/');
final Uri _url23 = Uri.parse('https://temanggungkab.bps.go.id/');
final Uri _url24 = Uri.parse('https://kendalkab.bps.go.id/');
final Uri _url25 = Uri.parse('https://batangkab.bps.go.id/');
final Uri _url26 = Uri.parse('https://pekalongankab.bps.go.id/');
final Uri _url27 = Uri.parse('https://pemalangkab.bps.go.id/');
final Uri _url28 = Uri.parse('https://tegalkab.bps.go.id/');
final Uri _url29 = Uri.parse('https://brebeskab.bps.go.id/');
final Uri _url30 = Uri.parse('https://magelangkota.bps.go.id/');
final Uri _url31 = Uri.parse('https://surakartakota.bps.go.id/');
final Uri _url32 = Uri.parse('https://salatigakota.bps.go.id/');
final Uri _url33 = Uri.parse('https://semarangkota.bps.go.id/');
final Uri _url34 = Uri.parse('https://pekalongankota.bps.go.id/');
final Uri _url35 = Uri.parse('https://tegalkota.bps.go.id/');

// target url hyperlink web BPS Provinsi
final Uri _url36 = Uri.parse('https://jateng.bps.go.id/');
final Uri _url37 = Uri.parse('https://jatim.bps.go.id/');
final Uri _url38 = Uri.parse('https://jabar.bps.go.id/');
final Uri _url39 = Uri.parse('https://yogyakarta.bps.go.id/');
final Uri _url40 = Uri.parse('https://jakarta.bps.go.id/');
final Uri _url41 = Uri.parse('https://banten.bps.go.id/');

// target url hyperlink web BPS RI
final Uri _url42 = Uri.parse('https://bps.go.id/');
final Uri _url43 = Uri.parse('https://perpustakaan.bps.go.id/');
final Uri _url44 = Uri.parse('https://sirusa.bps.go.id/');
final Uri _url45 = Uri.parse('https://romantik.web.bps.go.id/');
final Uri _url46 = Uri.parse('https://klasifikasi.web.bps.go.id/');
final Uri _url47 = Uri.parse('https://sensus.bps.go.id/');
final Uri _url48 = Uri.parse('https://sig.bps.go.id/');

//target url Pemkab
final Uri _url49 = Uri.parse('https://cilacapkab.go.id/');
final Uri _url50 = Uri.parse('https://kominfo.cilacapkab.go.id/');
final Uri _url51 = Uri.parse('https://bappeda.cilacapkab.go.id/');
final Uri _url52 = Uri.parse('https://dinkes.cilacapkab.go.id/');
final Uri _url53 = Uri.parse('https://pdk.cilacapkab.go.id/');
final Uri _url54 = Uri.parse('https://disdukcapil.cilacapkab.go.id/');
final Uri _url55 = Uri.parse('https://dispertan.cilacapkab.go.id/');

class _TautanWebState extends State<TautanWeb> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = GlobalKey();
  @override
  Widget build(BuildContext context) {
    //<<<<< ukuran layar
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    //>>>>>
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ListView(
                      children: <Widget>[
                        //<<< cardA
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: ExpansionTileCard(
                            baseColor: const Color.fromARGB(199, 255, 255, 255),
                            expandedColor:
                                const Color.fromARGB(199, 255, 255, 255),
                            key: cardA,
                            title: const Text('Website BPS Kabupaten/Kota'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlCILACAP,
                                                child: Text(
                                                    "BPS Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBANYUMAS,
                                                child: Text(
                                                    "BPS Kabupaten Banyumas"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlPURBALINGGA,
                                                child: Text(
                                                    "BPS Kabupaten Purbalingga"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlBANJARNEGARA,
                                                child: Text(
                                                    "BPS Kabupaten Banjarnegara"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlKEBUMEN,
                                                child: Text(
                                                    "BPS Kabupaten Kebumen"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlPURWOREJO,
                                                child: Text(
                                                    "BPS Kabupaten Purworejo"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlWONOSOBO,
                                                child: Text(
                                                    "BPS Kabupaten Wonosobo"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlMAGELANG,
                                                child: Text(
                                                    "BPS Kabupaten Magelang"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBOYOLALI,
                                                child: Text(
                                                    "BPS Kabupaten Boyolali"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlKLATEN,
                                                child: Text(
                                                    "BPS Kabupaten Klaten"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlSUKOHARJO,
                                                child: Text(
                                                    "BPS Kabupaten Sukoharjo"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlWONOGIRI,
                                                child: Text(
                                                    "BPS Kabupaten Wonogiri"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlKARANGANYAR,
                                                child: Text(
                                                    "BPS Kabupaten Karanganyar"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlSRAGEN,
                                                child: Text(
                                                    "BPS Kabupaten Sragen"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlGROBOGAN,
                                                child: Text(
                                                    "BPS Kabupaten Grobogan"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBLORA,
                                                child:
                                                    Text("BPS Kabupaten Blora"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlREMBANG,
                                                child: Text(
                                                    "BPS Kabupaten Rembang"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlPATI,
                                                child:
                                                    Text("BPS Kabupaten Pati"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlKUDUS,
                                                child:
                                                    Text("BPS Kabupaten Kudus"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlJEPARA,
                                                child: Text(
                                                    "BPS Kabupaten Jepara"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlDEMAK,
                                                child:
                                                    Text("BPS Kabupaten Demak"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlSEMARANG,
                                                child: Text(
                                                    "BPS Kabupaten Semarang"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlTEMANGGUNG,
                                                child: Text(
                                                    "BPS Kabupaten Temanggung"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlKENDAL,
                                                child: Text(
                                                    "BPS Kabupaten Kendal"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBATANG,
                                                child: Text(
                                                    "BPS Kabupaten Batang"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlPEKALONGAN,
                                                child: Text(
                                                    "BPS Kabupaten Pekalongan"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlPEMALANG,
                                                child: Text(
                                                    "BPS Kabupaten Pemalang"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlTEGAL,
                                                child:
                                                    Text("BPS Kabupaten Tegal"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBREBES,
                                                child: Text(
                                                    "BPS Kabupaten Brebes"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlMAGELANGKOTA,
                                                child:
                                                    Text("BPS Kota Magelang"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlSURAKARTAKOTA,
                                                child:
                                                    Text("BPS Kota Surakarta"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlSALATIGAKOTA,
                                                child:
                                                    Text("BPS Kota Salatiga"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlSEMARANGKOTA,
                                                child:
                                                    Text("BPS Kota Semarang"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlPEKALONGANKOTA,
                                                child:
                                                    Text("BPS Kota Pekalongan"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlTEGALKOTA,
                                                child: Text("BPS Kota Tegal"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ), //>>> /cardA

                        //<<< cardB
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: ExpansionTileCard(
                            baseColor: const Color.fromARGB(199, 255, 255, 255),
                            expandedColor:
                                const Color.fromARGB(199, 255, 255, 255),
                            key: cardB,
                            title: const Text('Website BPS Provinsi'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlJATENG,
                                                child: Text(
                                                    "BPS Provinsi Jawa Tengah"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlJATIM,
                                                child: Text(
                                                    "BPS Provinsi Jawa Timur"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlJABAR,
                                                child: Text(
                                                    "BPS Provinsi Jawa Barat"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlYOGYAKARTA,
                                                child: Text(
                                                    "BPS Provinsi DI Yogyakarta"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlJAKARTA,
                                                child: Text(
                                                    "BPS Provinsi DKI Jakarta"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBANTEN,
                                                child:
                                                    Text("BPS Provinsi Banten"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        //>>> /cardB

                        //<<< cardC
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: ExpansionTileCard(
                            baseColor: const Color.fromARGB(199, 255, 255, 255),
                            expandedColor:
                                const Color.fromARGB(199, 255, 255, 255),
                            key: cardC,
                            title: const Text('Website-Website di BPS RI'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBPSRI,
                                                child: Text(
                                                    "BPS RI (https://bps.go.id)"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    _launchUrlPERPUSTAKAAN,
                                                child: Text(
                                                    "Perpustakaan Online BPS"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlSIRUSA,
                                                child: Text(
                                                    "SIRUSA (Sistem Informasi Rujukan Statistik)"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlROMANTIK,
                                                child: Text(
                                                    "Portal Rekomendasi Statistik (ROMANTIK)"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlKBLI,
                                                child:
                                                    Text("KBKI, KBLI dan KBJI"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlSENSUS,
                                                child: Text(
                                                    "Portal Hasil Sensus BPS"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlSIG,
                                                child: Text(
                                                    "Portal Sistem Informasi Geospasial"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        //>>> /cardC

                        //>>> CARD D
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: ExpansionTileCard(
                            baseColor: const Color.fromARGB(199, 255, 255, 255),
                            expandedColor:
                                const Color.fromARGB(199, 255, 255, 255),
                            key: cardD,
                            title: const Text('Website Pemerintah Kabupaten'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlPEMKAB,
                                                child: Text(
                                                    "Pemerintah Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlKOMINFO,
                                                child: Text(
                                                    "Diskominfo Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlBAPPEDA,
                                                child: Text(
                                                    "Bappeda Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlDINKES,
                                                child: Text(
                                                    "Dinkes Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlPDK,
                                                child: Text(
                                                    "Disdikbud Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlCAPIL,
                                                child: Text(
                                                    "Disdukcapil Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 12,
                                              ),
                                              TextButton(
                                                onPressed: _launchUrlDISPERTAN,
                                                child: Text(
                                                    "Dispertan Kabupaten Cilacap"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        //>>> /Card D
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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

//<<<<< proses url bps kab/kota
Future<void> _launchUrlCILACAP() async {
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}

Future<void> _launchUrlBANYUMAS() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}

Future<void> _launchUrlPURBALINGGA() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}

Future<void> _launchUrlBANJARNEGARA() async {
  if (!await launchUrl(_url4)) {
    throw 'Could not launch $_url4';
  }
}

Future<void> _launchUrlKEBUMEN() async {
  if (!await launchUrl(_url5)) {
    throw 'Could not launch $_url5';
  }
}

Future<void> _launchUrlPURWOREJO() async {
  if (!await launchUrl(_url6)) {
    throw 'Could not launch $_url6';
  }
}

Future<void> _launchUrlWONOSOBO() async {
  if (!await launchUrl(_url7)) {
    throw 'Could not launch $_url7';
  }
}

Future<void> _launchUrlMAGELANG() async {
  if (!await launchUrl(_url8)) {
    throw 'Could not launch $_url8';
  }
}

Future<void> _launchUrlBOYOLALI() async {
  if (!await launchUrl(_url9)) {
    throw 'Could not launch $_url9';
  }
}

Future<void> _launchUrlKLATEN() async {
  if (!await launchUrl(_url10)) {
    throw 'Could not launch $_url10';
  }
}

Future<void> _launchUrlSUKOHARJO() async {
  if (!await launchUrl(_url11)) {
    throw 'Could not launch $_url11';
  }
}

Future<void> _launchUrlWONOGIRI() async {
  if (!await launchUrl(_url12)) {
    throw 'Could not launch $_url12';
  }
}

Future<void> _launchUrlKARANGANYAR() async {
  if (!await launchUrl(_url13)) {
    throw 'Could not launch $_url13';
  }
}

Future<void> _launchUrlSRAGEN() async {
  if (!await launchUrl(_url14)) {
    throw 'Could not launch $_url14';
  }
}

Future<void> _launchUrlGROBOGAN() async {
  if (!await launchUrl(_url15)) {
    throw 'Could not launch $_url15';
  }
}

Future<void> _launchUrlBLORA() async {
  if (!await launchUrl(_url16)) {
    throw 'Could not launch $_url16';
  }
}

Future<void> _launchUrlREMBANG() async {
  if (!await launchUrl(_url17)) {
    throw 'Could not launch $_url17';
  }
}

Future<void> _launchUrlPATI() async {
  if (!await launchUrl(_url18)) {
    throw 'Could not launch $_url18';
  }
}

Future<void> _launchUrlKUDUS() async {
  if (!await launchUrl(_url19)) {
    throw 'Could not launch $_url19';
  }
}

Future<void> _launchUrlJEPARA() async {
  if (!await launchUrl(_url20)) {
    throw 'Could not launch $_url20';
  }
}

Future<void> _launchUrlDEMAK() async {
  if (!await launchUrl(_url21)) {
    throw 'Could not launch $_url21';
  }
}

Future<void> _launchUrlSEMARANG() async {
  if (!await launchUrl(_url22)) {
    throw 'Could not launch $_url22';
  }
}

Future<void> _launchUrlTEMANGGUNG() async {
  if (!await launchUrl(_url23)) {
    throw 'Could not launch $_url23';
  }
}

Future<void> _launchUrlKENDAL() async {
  if (!await launchUrl(_url24)) {
    throw 'Could not launch $_url24';
  }
}

Future<void> _launchUrlBATANG() async {
  if (!await launchUrl(_url25)) {
    throw 'Could not launch $_url25';
  }
}

Future<void> _launchUrlPEKALONGAN() async {
  if (!await launchUrl(_url26)) {
    throw 'Could not launch $_url26';
  }
}

Future<void> _launchUrlPEMALANG() async {
  if (!await launchUrl(_url27)) {
    throw 'Could not launch $_url27';
  }
}

Future<void> _launchUrlTEGAL() async {
  if (!await launchUrl(_url28)) {
    throw 'Could not launch $_url28';
  }
}

Future<void> _launchUrlBREBES() async {
  if (!await launchUrl(_url29)) {
    throw 'Could not launch $_url29';
  }
}

Future<void> _launchUrlMAGELANGKOTA() async {
  if (!await launchUrl(_url30)) {
    throw 'Could not launch $_url30';
  }
}

Future<void> _launchUrlSURAKARTAKOTA() async {
  if (!await launchUrl(_url31)) {
    throw 'Could not launch $_url31';
  }
}

Future<void> _launchUrlSALATIGAKOTA() async {
  if (!await launchUrl(_url32)) {
    throw 'Could not launch $_url32';
  }
}

Future<void> _launchUrlSEMARANGKOTA() async {
  if (!await launchUrl(_url33)) {
    throw 'Could not launch $_url33';
  }
}

Future<void> _launchUrlPEKALONGANKOTA() async {
  if (!await launchUrl(_url34)) {
    throw 'Could not launch $_url34';
  }
}

Future<void> _launchUrlTEGALKOTA() async {
  if (!await launchUrl(_url35)) {
    throw 'Could not launch $_url35';
  }
}

//web BPS Provinsi di Jawa
Future<void> _launchUrlJATENG() async {
  if (!await launchUrl(_url36)) {
    throw 'Could not launch $_url36';
  }
}

Future<void> _launchUrlJATIM() async {
  if (!await launchUrl(_url37)) {
    throw 'Could not launch $_url37';
  }
}

Future<void> _launchUrlJABAR() async {
  if (!await launchUrl(_url38)) {
    throw 'Could not launch $_url38';
  }
}

Future<void> _launchUrlYOGYAKARTA() async {
  if (!await launchUrl(_url39)) {
    throw 'Could not launch $_url39';
  }
}

Future<void> _launchUrlJAKARTA() async {
  if (!await launchUrl(_url40)) {
    throw 'Could not launch $_url40';
  }
}

Future<void> _launchUrlBANTEN() async {
  if (!await launchUrl(_url41)) {
    throw 'Could not launch $_url41';
  }
}

//web BPS RI
Future<void> _launchUrlBPSRI() async {
  if (!await launchUrl(_url42)) {
    throw 'Could not launch $_url42';
  }
}

Future<void> _launchUrlPERPUSTAKAAN() async {
  if (!await launchUrl(_url43)) {
    throw 'Could not launch $_url43';
  }
}

Future<void> _launchUrlSIRUSA() async {
  if (!await launchUrl(_url44)) {
    throw 'Could not launch $_url44';
  }
}

Future<void> _launchUrlROMANTIK() async {
  if (!await launchUrl(_url45)) {
    throw 'Could not launch $_url45';
  }
}

Future<void> _launchUrlKBLI() async {
  if (!await launchUrl(_url46)) {
    throw 'Could not launch $_url46';
  }
}

Future<void> _launchUrlSENSUS() async {
  if (!await launchUrl(_url47)) {
    throw 'Could not launch $_url47';
  }
}

Future<void> _launchUrlSIG() async {
  if (!await launchUrl(_url48)) {
    throw 'Could not launch $_url48';
  }
}

//Website Pemkab
Future<void> _launchUrlPEMKAB() async {
  if (!await launchUrl(_url49)) {
    throw 'Could not launch $_url49';
  }
}

Future<void> _launchUrlKOMINFO() async {
  if (!await launchUrl(_url50)) {
    throw 'Could not launch $_url50';
  }
}

Future<void> _launchUrlBAPPEDA() async {
  if (!await launchUrl(_url51)) {
    throw 'Could not launch $_url51';
  }
}

Future<void> _launchUrlDINKES() async {
  if (!await launchUrl(_url52)) {
    throw 'Could not launch $_url52';
  }
}

Future<void> _launchUrlPDK() async {
  if (!await launchUrl(_url53)) {
    throw 'Could not launch $_url53';
  }
}

Future<void> _launchUrlCAPIL() async {
  if (!await launchUrl(_url54)) {
    throw 'Could not launch $_url54';
  }
}

Future<void> _launchUrlDISPERTAN() async {
  if (!await launchUrl(_url55)) {
    throw 'Could not launch $_url55';
  }
}
