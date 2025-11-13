// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_clp_content.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot_content.dart';
import 'package:flutter/material.dart';

class perumahanContent extends StatefulWidget {
  const perumahanContent({Key? key}) : super(key: key);

  @override
  State<perumahanContent> createState() => _perumahanContentState();
}

class _perumahanContentState extends State<perumahanContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PERUMAHAN',
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
                              "Perumahan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Perumahan merupakan salah ukuran kesejahteraan suatu rumah tangga, secara umum semakin baik perekonomian suatu rumah tangga maka akan semakin bagus kondisi rumahnya. Kelayakan suatu bangunan tempat tinggal diantaranya dapat diukur dari kondisi fisik bangunan ataupun fasilitas-fasilitas pokok yang ada pada bangunan tersebut, seperti kondisi dinding, lantai dan atap bangunan serta fasilitas penerangan dan sumber air minum yang digunakan oleh suatu rumah tangga. Semakin tinggi persentase pada kelompok bangunan atau rumah tangga dengan fasilitas perumahan yang baik atau kondisi bangunan yang baik semakin tinggi persentasenya, maka dapat dikatakan kondisi daerah suatu daerah semakin baik/sejahtera",
                                  textAlign: TextAlign.justify,
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
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
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Indikator Perumahan Kabupaten Cilacap dan Kabupaten/Kota Lainnya di Jawa Tengah",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(height: 100, color: Colors.transparent),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(39, 101, 182, 0.882),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const perumahanclpContent(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Kondisi Perumahan di Kabupaten Cilacap",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(236, 138, 20, 0.882),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const perumahankabkotContent(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Text(
                          "Kondisi Perumahan Kabupaten/Kota di Jawa Tengah",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 50, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(color: Colors.transparent),
            ),
          ],
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
