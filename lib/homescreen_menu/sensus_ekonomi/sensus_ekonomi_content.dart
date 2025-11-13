// ignore_for_file: library_private_types_in_public_api
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SensusEkonomiContent(),
    ));

class SensusEkonomiContent extends StatefulWidget {
  const SensusEkonomiContent({Key? key}) : super(key: key);

  @override
  _SensusEkonomiContentState createState() => _SensusEkonomiContentState();
}

class _SensusEkonomiContentState extends State<SensusEkonomiContent> {
  static final List<String> imgSlider = [
    'ujicoba_se2026_1.png',
    'ujicoba_se2026_2.png',
    'ujicoba_se2026_3.png',
    'ujicoba_se2026_4.png',
    'ujicoba_se2026_5.png',
  ];
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
    final CarouselSlider autoPlayImage = CarouselSlider(
        items: imgSlider.map((fileImage) {
          return Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                'assets/images/slider/$fileImage',
                width: 10000,
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          //height: screenHeight * 0.20,
          viewportFraction: 0.95,
          height: 220,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 0.5,
        ));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SENSUS EKONOMI',
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
            width: screenWidth * 0.95,
            height: screenHeight * 0.070,
            child: const Center(
              child: Text(
                'SELAYANG PANDANG SENSUS EKONOMI 2026.',
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
                            width: MediaQuery.of(context).size.width * 0.93,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "APA ITU SENSUS EKONOMI?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Container(
                                  width: screenWidth * 0.90,
                                  //height: screenHeight * 0.25,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 15, right: 5),
                                        width: screenWidth * 0.25,
                                        //height: screenHeight * 0.25,
                                        child: Image.asset(
                                            'assets/images/sensus_ekonomi/sensus_ekonomi_2016.png'),
                                      ),
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 15,
                                            bottom: 10,
                                            right: 5),
                                        width: screenWidth * 0.64,
                                        //height: screenHeight * 0.25,
                                        child: const Text(
                                          "     Sensus Ekonomi merupakah salah satu Sensus dari 3 (tiga) jenis sensus yang dilaksanakan oleh Badan Pusat Statistik. Sensus Ekonomi (SE) dilaksanakan pada tahun yang berakhiran angka 6 (enam). Sensus Ekonomi pertama kali dilaksanakan pada tahun 1986, kemudian dilaksanakan kembali pada tahun 1996, 2006, 2016 dan akan dilaksanakan kembali pada tahun 2026 sebagai Sensus Ekonomi yang ke 5 (lima) kali.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontFamily: 'Robo',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.91,
                                  //height: screenHeight * 0.16,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 121, 123, 126)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 0, right: 0),
                                        width: screenWidth * 0.90,
                                        //height: screenHeight * 0.17,
                                        child: Image.asset(
                                            'assets/images/sensus_ekonomi/sensus_ekonomi_2016.jpg'),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.only(
                                      left: 0, top: 10, bottom: 5, right: 5),
                                  width: screenWidth * 0.90,
                                  //height: screenHeight * 0.15,
                                  child: const Text(
                                    "     Sensus Ekonomi merupakan kegiatan pendataan lengkap atas seluruh unit usaha/perusahaan yang berada dalam batas-batas wilayah suatu negara. Seluruh informasi yang dikumpulkan bermanfaat untuk mengetahui gambaran tentang performa dan struktur ekonomi suatu negara baik menurut wilayah, lapangan usaha, maupun skala usaha.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontFamily: 'Robo',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Tujuan pengumpulan data pada kegiatan Sensus Ekonomi (SE2016) diantaranya adalah sebagai berikut:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                      "Menyajikan data dasar unit usaha/perusahaan dan aktivitas usaha di luar usaha pertanian sampai wilayah administrasi yang terkecil (small area statistics).",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12),
                                      textAlign: TextAlign.justify),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                      "Menyusun peta dan direktori perusahaan usaha menengah besar (UMB) yang lengkap dan terpadu untuk setiap wilayah Kabupaten/Kota",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12),
                                      textAlign: TextAlign.justify),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                      "Memperoleh populasi dari UMB dan usaha mikro kecil (UMK) menurut wilayah maupun lapangan usaha.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12),
                                      textAlign: TextAlign.justify),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                      "Menyusun kerangka sampel (sampling frame) untuk kegiatan survei bidang ekonomi.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12),
                                      textAlign: TextAlign.justify),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                      "Mendapatkan informasi lain seperti penggunaan internet dalam kegiatan usaha (on-line), sistem waralaba (franchise), serta kepemilikan unit usaha/ perusahaan (ownership).",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12),
                                      textAlign: TextAlign.justify),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    //card 2 sekilas SE 2026
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
                            margin: const EdgeInsets.only(left: 4, bottom: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "SEKILAS SENSUS EKONOMI 2026",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Container(
                                  width: screenWidth * 0.91,
                                  height: screenHeight * 0.15,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 20, right: 5),
                                        width: screenWidth * 0.90,
                                        height: screenHeight * 0.15,
                                        child: Image.asset(
                                            'assets/images/sensus_ekonomi/sensus_ekonomi_2026_1.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.90,
                                  //height: screenHeight * 0.24,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 5, right: 5),
                                        width: screenWidth * 0.89,
                                        //height: screenHeight * 0.24,
                                        child: const Text(
                                          "     Sensus Ekonomi 2026 (SE 2026) akan menjadi sensus ekonomi ke 5 (lima) yang dilaksanakan oleh Badan Pusat Statistik Republik Indonesia (BPS RI), setelah Sensus Ekonomi pertama kali dilaksanakan pada tahun 1986. Sebelum pelaksanaan Sensus Ekonomi 2026 perencanaan dan persiapan telah dilakukan BPS RI seoptimal mungkin, diantaranya dengan melaksanakan Pendataan Potensi Desa 2024 sebagai salah satu kegiatan mengidentifikasi Potensi Ekonomi yang ada di desa/keluarahan, Update Direktori Usaha/Perusahaan Ekonomi (UDPE) dikenal juga sebagai kegiatan pemutakhiran Statistical Business Register (SBR), dan pelaksnaan ujicoba  Sensus Ekonomi di 6 (enam) kabupaten/kota.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontFamily: 'Robo',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.only(
                                      left: 0, top: 5, bottom: 5, right: 5),
                                  width: screenWidth * 0.90,
                                  //height: screenHeight * 0.15,
                                  child: const Text(
                                    "     Selain itu pada tahun 2025 juga direncanakan akan dilaksanakan pemutakhiran wilayah kerja SLS (Satuan Lingkungan Setempat) atau disebut juga dengan kegiatan pemetaan wilayah kerja statistik berbasis SLS, dimana kegiatan tersebut bertujuan mengidentifikasi keberadaan dan perkiraaan awal banyaknya usaha/kegiatan ekonomi pada wilayah kerja terkecil yaitu SLS. Hasil dari kegiatan pemutakhiran wilayah kerja SLS tersebut nantinya akan menjadi dasar untuk perencanaan kegiatan lapangan Sensus Ekonomi diantaranya untuk menentukan berapa banyak petugas pendata dan pengawas yang harus direkrut. ",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontFamily: 'Robo',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.only(
                                      left: 0, top: 5, bottom: 5, right: 5),
                                  width: screenWidth * 0.90,
                                  //height: screenHeight * 0.15,
                                  child: const Text(
                                    "     Pelaksanaan uji coba Sensus Ekonomi Tahap I dilaksanakan pada periode 1-31 Juli 2024. Tujuan uji coba ini antara lain mengujicobakan instrumen pendaftaran usaha (listing), prosedur operasional pencacahan, dan proses pengolahan. Enam kabupaten/kota yang menjadi wilayah uji coba adalah Kabupaten Nias (Sumatera Utara), Kota Administrasi Jakarta Pusat (DKI Jakarta), Kota Bandung (Jawa Barat), Kabupaten Tabanan (Bali), Kabupaten Barito Kuala (Kalimantan Selatan), dan Kota Makassar (Sulawesi Selatan).",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontFamily: 'Robo',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Foto-foto  Dokumentasi Uji Coba Sensus Ekonomi Tahap I:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                Card(
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        autoPlayImage,
                                      ],
                                    )),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Sumber : BPS RI (Foto-foto diambil dari Instagram BPS RI)",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    //Card 3 Lagus SE 3036
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
                            margin: const EdgeInsets.only(left: 4, bottom: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "THEME SONG SENSUS EKONOMI 2026",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Container(
                                  width: screenWidth * 0.91,
                                  height: screenHeight * 0.15,
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 20, right: 5),
                                        width: screenWidth * 0.90,
                                        height: screenHeight * 0.15,
                                        child: Image.asset(
                                            'assets/images/sensus_ekonomi/sensus_ekonomi_2026_1.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.90,
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
                                            right: 5),
                                        width: screenWidth * 0.89,
                                        //height: screenHeight * 0.24,
                                        child: const Text(
                                          "Play Theme Song of Economic Census 2026",
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
                                  width: screenWidth * 0.90,
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
                                        width: screenWidth * 0.90,
                                        //height: screenHeight * 0.24,
                                        child: const Text(
                                          "Click play button below...and please wait...while loading.",
                                          textAlign: TextAlign.justify,
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
                            width: screenWidth * 0.95,
                            padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 2,
                                            bottom: 2,
                                            right: 5),
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
                                    //String url ='https://drive.usercontent.google.com/download?id=1fZyEw2NiMtoYvYDOHDnfpJ-W6rRMGOn_&export=download&authuser=0&noconfirm=t&uuid=be5d879f-f835-41db-bf00-3f3fdeb865a8&at=AKSUxGOrc_o6XBjuhp3NRUY-w11J:1762186530018';
                                    //Mars Statistik
                                    String url =
                                        'https://drive.usercontent.google.com/download?id=1h8oULkx8MXPzv3sCFpgtoJqXHh8S4sSV&export=download&authuser=0&confirm=t&uuid=f4cda03c-1381-4515-96bc-8dc9052a81df&at=AKSUxGPKBVDyXTAzmIOWsEBvHwws:1762240627859';
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
