// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaguTemaSE2026Content(),
    ));

class LaguTemaSE2026Content extends StatefulWidget {
  const LaguTemaSE2026Content({Key? key}) : super(key: key);

  @override
  _LaguTemaSE2026ContentState createState() => _LaguTemaSE2026ContentState();
}

class _LaguTemaSE2026ContentState extends State<LaguTemaSE2026Content> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LAGU TEMA SE2026',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
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
                    return ListView(children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "SENSUS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "   Sensus atau pendataan lengkap dilakukan oleh BPS 3 (tiga) kali dalam 10 (sepuluh) tahun. Dimana 3 (tiga) sensus tersebut merupakan sensus yang berbeda. Yang pertama Sensus Penduduk dilaksanakan pada tahun berakhiran 0, kemudian Sensus Pertanian dilaksanakan setiap tahun yang berakhiran 3 dan Sensus Ekonomi dilaksanakan pada setiap tahun yang berakhiran 6 ",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Sensus Penduduk",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "   Sensus Penduduk telah dilaksanakan sebanyak 7 (tujuh) kali yaitu pada tahun 1961, 1971, 1980, 1990, 2000, 2010 dan 2020",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Sensus Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "   Sensus Pertanian sampai saat ini juga telah dilaksanakan sebanyak 7 (tujuh) kali yaitu pada tahun 1963, 1973, 1983, 1993, 2003, 2013 dan 2023",
                                textAlign: TextAlign.justify),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Sensus Ekonomi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                                "   Sensus Ekonomi sampai saat ini telah dilaksanakan sebanyak 4 (empat kali) kali. Sensus Ekonomi pertama kali dilaksankan pada tahun 1986. Kemudian dilaksanakan kembali pada tahun 1996, 2006, dan 2016",
                                textAlign: TextAlign.justify),
                          ),
                        ],
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],
      ),
      body: Column(
        children: <Widget>[
          //animasi atas
          SizedBox(
            width: screenWidth * 0.93,
            height: screenHeight * 0.070,
            child: const Center(
              child: Text(
                'Lirik Lagu',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(240, 134, 13, 1),
                    fontFamily: 'Robo',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),

          Divider(
            height: screenHeight * 0.005,
            thickness: 2,
          ),
          Expanded(
            flex: 80,
            child: Scrollbar(
              thickness: 4,
              thumbVisibility: true,
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                    //Card 1 SE
                    Container(
                      width: MediaQuery.of(context).size.width,
                    ),
                    Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Wrap(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.94,
                            //height: screenHeight * 0.18,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            margin: const EdgeInsets.only(left: 4, bottom: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "MENCATAT INDONESIA\n"
                                  "(SENSUS EKONOMI 2026)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Mari semua berperan \n'
                                    'Dan teruskan perjuangan \n'
                                    'Yang sudah tergelar kita lanjutkan',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Mari semua bergerak \n'
                                    'Dan sejahterakan bangsa \n'
                                    'Mencerahkan masa yang akan datang',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Merekam perjalanan \n'
                                    'Tentukan arah pembangunan',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Ayo turut serta kembali \n'
                                    'Membangun ekonomi \n'
                                    'Gapai mimpi dengan kolaborasi',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Ayo melangkah dan beraksi \n'
                                    'Wujudkan bangsa yang tangguh \n'
                                    'dan mandiri \n'
                                    'Bersama mencatat indonesia',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Dari Sumatera \n'
                                    'Sampai ujung Papua \n'
                                    'Bersama kita \n'
                                    'Mencatat indonesia',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Dari Sumatera \n'
                                    'Sampai ujung Papua \n'
                                    'Bersama kita \n'
                                    'Mencatat indonesia',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Hadapilah tantangan \n'
                                    'Dengan bergandeng tangan \n'
                                    'Tak ada yang tak bisa \n'
                                    'Kita lakukan bersama',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Merekam perjalanan \n'
                                    'Tentukan arah pembangunan',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    '#ref',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 236, 104, 51),
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 2),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Ayo turut serta kembali \n'
                                    'Membangun ekonomi \n'
                                    'Gapai mimpi dengan kolaborasi',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Ayo melangkah dan beraksi \n'
                                    'Wujudkan bangsa yang tangguh \n'
                                    'dan mandiri \n'
                                    'Bersama mencatat indonesia',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Dari Sumatera \n'
                                    'Sampai ujung Papua \n'
                                    'Bersama kita \n'
                                    'Mencatat indonesia',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Dari Sumatera \n'
                                    'Sampai ujung Papua \n'
                                    'Bersama kita \n'
                                    'Mencatat indonesia',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 2),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'kembali ke #ref',
                                    textAlign: TextAlign
                                        .center, // Optional: Align the text
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 236, 104, 51),
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    //Card 3 Lagus SE 3036
                    Container(
                      width: MediaQuery.of(context).size.width * 0.93,
                    ),
                    Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Wrap(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.93,
                            //height: screenHeight * 0.18,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            margin: const EdgeInsets.only(
                                left: 4, right: 10, bottom: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: screenWidth * 0.89,
                                  height: screenHeight * 0.15,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 10, right: 0),
                                        width: screenWidth * 0.87,
                                        height: screenHeight * 0.15,
                                        child: Image.asset(
                                            'assets/images/sensus_ekonomi/sensus_ekonomi_2026_1.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.89,
                                  //height: screenHeight * 0.24,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 5,
                                            bottom: 2,
                                            right: 0),
                                        width: screenWidth * 0.89,
                                        //height: screenHeight * 0.24,
                                        child: const Text(
                                          "Play Economic Census Official Theme Song",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontFamily: 'Robo',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.89,
                                  //height: screenHeight * 0.24,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 2,
                                            bottom: 20,
                                            right: 5),
                                        width: screenWidth * 0.89,
                                        //height: screenHeight * 0.24,
                                        child: const Text(
                                          'Click Play icon until change to Pause icon... \n'
                                          'and please wait ... while the song loading',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Robo',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/sensus_ekonomi/sensus_ekonomi_2026_2.png',
                                        //width: double.infinity,
                                        height: 120,
                                        //fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Slider(
                                      min: 0,
                                      max: duration.inSeconds.toDouble(),
                                      value: position.inSeconds.toDouble(),
                                      onChanged: (value) async {
                                        final position =
                                            Duration(seconds: value.toInt());
                                        await audioPlayer.seek(position);

                                        await audioPlayer.resume();
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          Container(
                            width: screenWidth * 0.90,
                            padding: const EdgeInsets.only(
                                left: 15, top: 2, bottom: 2, right: 5),
                            //height: screenHeight * 0.24,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(formatTime(position)),
                                Text(formatTime(duration - position)),
                              ],
                            ),
                          ),
                          Center(
                            child: CircleAvatar(
                              radius: 35,
                              child: IconButton(
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                ),
                                iconSize: 50,
                                onPressed: () async {
                                  if (isPlaying) {
                                    await audioPlayer.pause();
                                  } else {
                                    //Theme Song SE26
                                    String url =
                                        'https://drive.usercontent.google.com/download?id=1fZyEw2NiMtoYvYDOHDnfpJ-W6rRMGOn_&export=download&authuser=0&noconfirm=t&uuid=be5d879f-f835-41db-bf00-3f3fdeb865a8&at=AKSUxGOrc_o6XBjuhp3NRUY-w11J:1762186530018';
                                    //Mars Statistik
                                    //String url ='https://drive.usercontent.google.com/download?id=1h8oULkx8MXPzv3sCFpgtoJqXHh8S4sSV&export=download&authuser=0&confirm=t&uuid=f4cda03c-1381-4515-96bc-8dc9052a81df&at=AKSUxGPKBVDyXTAzmIOWsEBvHwws:1762240627859';
                                    //String url ='https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3';
                                    //String url ='https://drive.bps.go.id/apps/files/files/84631128?dir=/2025&openfile=true';
                                    await audioPlayer.play(UrlSource(url));
                                  }
                                },
                              ),
                            ),
                          ),
                          const Divider(
                            height: 25,
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      height: screenHeight * 0.04,
                    ),
                  ])),
            ),
          )
        ],
      ),
    );
  }
}
