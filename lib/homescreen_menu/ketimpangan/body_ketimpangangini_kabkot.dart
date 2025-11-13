import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan/ketimpangangini_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan/body_grafik_ginikabkot.dart';
import 'package:flutter/material.dart';

class BodyGiniKabkot extends StatefulWidget {
  const BodyGiniKabkot({super.key});

  @override
  State<BodyGiniKabkot> createState() => _BodyGiniKabkot();
}

class _BodyGiniKabkot extends State<BodyGiniKabkot> {
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
            'Gini Rasio Kabupaten/Kota di Jawa Tengah',
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
        ),
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 0.90,
                  width: screenWidth,
                  child: const Column(
                    children: [Flexible(child: GiniKabkot())],
                  ),
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
                child: const BodyGrafikGiniKabkot(),
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
