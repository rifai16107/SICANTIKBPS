

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
//import 'package:bps_cilacap/sensus_tani_23/rtup.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/rumahlantai_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/body_grafik_rumahlantai.dart';
import 'package:flutter/material.dart';

class BodyRumahlantaiKabkot extends StatefulWidget {
  const BodyRumahlantaiKabkot({super.key});

  @override
  State<BodyRumahlantaiKabkot> createState() => _BodyRumahlantaiKabkot();
}

class _BodyRumahlantaiKabkot extends State<BodyRumahlantaiKabkot> {
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
          'Jenis Lantai Terluas',
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
        
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: screenHeight *1.35,
                width: screenWidth,
                child: Column(
                  children: const [
                    Flexible(
                      child: RumahlantaiKabkot(),
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
                  child: const BodyGrafikRumahlantaiLF(), direction: AxisDirection.left));
        },
        mini: true,
        child: const Icon(Icons.pie_chart),
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