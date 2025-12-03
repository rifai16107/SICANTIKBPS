import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tani_23/gurem.dart';
import 'package:bps_cilacap/sensus_tani_grafik/body_grafik_gurem.dart';
import 'package:flutter/material.dart';

class BodySensusGurem extends StatefulWidget {
  const BodySensusGurem({super.key});

  @override
  State<BodySensusGurem> createState() => _BodySensusGurem();
}

class _BodySensusGurem extends State<BodySensusGurem> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
    child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'RTUP, UTP, Petani Pengguna Lahan',
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
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Catatan/penjelasan:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Pertanian (RTUP) Pengguna Lahan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya rumah tangga usaha pertanian (RTUP) yang menggunakan lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) dan lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal) atau yang memiliki luas lahan tempat tinggal (merujuk pada Sensus Pertanian 2013) lebih dari nol hektare. Lahan pertanian tersebut digunakan untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan) atau tanaman tahunan (tanaman hortikultura dan perkebunan), mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha budidaya ikan (termasuk udang, rumput laut, dll) menggunakan wadah budidaya yaitu tambak, kolam, mina padi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Pertanian (RTUP) Gurem",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya rumah tangga usaha pertanian (RTUP) yang menguasai lahan kurang dari setengah hektare. Lahan yang dimaksud mencakup lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum), lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal), serta lahan tempat tinggal). Lahan pertanian tersebut digunakan untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha budidaya ikan (termasuk udang, rumput laut, dll) menggunakan wadah budidaya yaitu tambak, kolam, minapadi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan (UTP) Pengguna Lahan Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya unit usaha pertanian perorangan (UTP) yang menggunakan lahan pertanian (tidak termasuk lahan Budi daya di laut atau perairan umum) untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha Budi daya ikan (termasuk udang, rumput laut, dll) menggunakan wadah Budi daya merupakan tambak, kolam, minapadi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Usaha Pertanian Perorangan (UTP) Gurem",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya usaha pertanian perorangan (UTP) yang menguasai lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) kurang dari setengah hectare dan tidak termasuk lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal). Lahan pertanian tersebut digunakan untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak, mengusahakan tanaman kehutanan, melakukan kegiatan usaha budidaya ikan (termasuk udang, rumput laut, dll) menggunakan wadah budidaya yaitu tambak, kolam, minapadi/sawah, akuarium, dan lainnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Petani Pengguna Lahan Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya orang dan/atau beserta keluarganya yang menggunakan lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) dan lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal). Lahan pertanian tersebut untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak dengan tujuan utama pemeliharaan ternak diantaranya (pengembangbiakan, penggemukan, pembibitan, pembesaran ternak betina (rearing), atau produksi telur/susu/madu/kokon/liur).",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Petani Gurem",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya orang seorang dan/atau beserta keluarganya yang menguasai lahan pertanian (tidak termasuk lahan budidaya di laut atau perairan umum) kurang dari setengah hectare dan tidak termasuk lahan lainnya (bukan lahan pertanian dan bukan lahan tempat tinggal). Lahan pertanian tersebut untuk mengusahakan tanaman semusim (tanaman pangan, hortikultura, dan perkebunan), tanaman hortikultura dan perkebunan tahunan, mengusahakan atau memelihara ternak dengan tujuan utama pemeliharaan ternak diantaranya (pengembangbiakan, penggemukan, pembibitan, pembesaran ternak betina (rearing), atau produksi telur/susu/madu/kokon/liur).",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Petani",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan orang seorang dan/atau beserta keluarganya yang melakukan usaha pertanian di bidang tanaman pangan, hortikultura, perkebunan, dan/atau peternakan.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          ],
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],  
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: screenHeight *1.05,
                width: screenWidth,
                child: Column(
                  children: const [
                    Flexible(
                      child: LahanGurem(),
                    ),
                  ],
                 ),
                
              ),
           ],
          ),
          
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              CustomPageRoute(
                  child: const BodyGrafikGurem(), direction: AxisDirection.left));
        },
        mini: true,
        child: const Icon(Icons.stacked_bar_chart),
      ), 
    )
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