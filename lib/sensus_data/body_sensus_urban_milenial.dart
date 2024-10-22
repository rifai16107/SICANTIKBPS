import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tani_23/urban_milenial.dart';
import 'package:bps_cilacap/sensus_tani_grafik/body_grafik_urban_milenial.dart';
import 'package:flutter/material.dart';

class BodySensusUrbanMilenial extends StatefulWidget {
  const BodySensusUrbanMilenial({super.key});

  @override
  State<BodySensusUrbanMilenial> createState() => _BodySensusUrbanMilenial();
}

class _BodySensusUrbanMilenial extends State<BodySensusUrbanMilenial> {
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
          'Urban Farming dan Petani Milenial',
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
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Column(
                        children: [
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
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Rumah Tangga Usaha Pertanian (RTUP) Urban Farming",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "adalah banyaknya rumah tangga usaha pertanian yang berada di wilayah perkotaan (klasifikasi desa/kelurahaan perkotaan) yang mengusahakan pertaniannya di lahan yang terbatas, sebagian besar menggunakan media tanam, tidak di permukaan tanah secara langsung atau menggunakan pot dan sejenisnya, serta menggunakan teknologi seperti hidroponik, aquaponik, vertikulture, media terpal dan sejenisnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Unit Usaha Pertanian Perorangan (UTP) Urban Farming",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "adalah banyaknya unit usaha pertanian yang berada di wilayah perkotaan (klasifikasi desa/kelurahaan perkotaan) yang mengusahakan pertaniannya di lahan yang terbatas, sebagian besar menggunakan media tanam tidak di permukaan tanah secara langsung atau menggunakan pot dan sejenisnya, serta dalam mengusahakan pertaniannya media tanamnya menggunakan teknologi seperti hidroponik, aquaponik, vertikulture, media terpal dan sejenisnya.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah Petani Milenial",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "merupakan banyaknya warga negara Indonesia (WNI) berusia 19 (sembilan belas) tahun sampai dengan 39 (tiga puluh sembilan) tahun yang melakukan usaha pertanian di bidang tanaman pangan, hortikultura, perkebunan, dan/atau peternakan, atau melakukan usaha pertanian menggunakan teknologi digital serta penggunaan teknologi modern.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Penggunaan teknologi digital",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "mencakup penggunaan internet/ telepon pintar/ teknologi informasi, penggunaan drone, dan penggunaan kecerdasan buatan untuk kegiatan usaha pertanian.",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Penggunaan teknologi modern",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "adalah penggunaan unsur teknologi sehingga praktik pertanian menjadi efektif dan efisien dibanding ketika tidak menggunakannya. Contoh teknologi modern dalam pertanian adalah alat dan mesin pertanian yang menggunakan teknologi terkini baik mekanis maupun digital.",
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
                      child: UrbanMilenial(),
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
                  child: const BodyGrafikUrbanMilenial(), direction: AxisDirection.left));
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