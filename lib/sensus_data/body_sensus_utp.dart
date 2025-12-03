import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tani_23/utp.dart';
import 'package:bps_cilacap/sensus_tani_grafik/body_grafik_utp.dart';
import 'package:flutter/material.dart';

class BodySensusUtp extends StatefulWidget {
  const BodySensusUtp({super.key});

  @override
  State<BodySensusUtp> createState() => _BodySensusUtp();
}

class _BodySensusUtp extends State<BodySensusUtp> {
  @override
  Widget build(BuildContext context) {
    var screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'UTP Menurut Sub Sektor',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) {
                    return ListView(
                      children: [
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
                                "Satu Rumah Tangga Usaha Pertanian (RTUP) dapat terdiri atas satu Usaha Pertanian Perorangan (UTP) atau lebih.",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: const [
                                  Text(
                                    "Satu RTUP dan UTP dapat mengusahakan lebih dari satu subsektor usaha pertanian, sehingga jumlah unit RTUP dan UTP di Sektor Pertanian bukan merupakan penjumlahan dari masing-masing subsektor.",
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.info_outlined),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: screenHeight * 1.05,
                  width: screenWidth,
                  child: Column(children: const [Flexible(child: Utp())]),
                ),
              ],
            ),
          ],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              CustomPageRoute(
                child: const BodyGrafikUtp(),
                direction: AxisDirection.left,
              ),
            );
          },
          mini: true,
          child: const Icon(Icons.bar_chart),
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
