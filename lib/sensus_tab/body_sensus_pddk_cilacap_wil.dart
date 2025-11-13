import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tab/sensus_pddk_cilcacap_wil.dart';
import 'package:bps_cilacap/sensus_tab/body_grafik_cilacap_wil_kecamatan.dart';
import 'package:flutter/material.dart';

class BodySensusPddkCilacapWil extends StatefulWidget {
  const BodySensusPddkCilacapWil({super.key});

  @override
  State<BodySensusPddkCilacapWil> createState() => _BodySensusPddkCilacapWil();
}

class _BodySensusPddkCilacapWil extends State<BodySensusPddkCilacapWil> {
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
          'Penduduk Cilacap Hasil SP2020',
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
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight * 1.05,
                width: screenWidth,
                child: Column(
                  children: const [
                    Flexible(
                      child: PddkCilacapWil(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
        //backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
              context,
              CustomPageRoute(
                  child: const BodyGrafikSensusCilacapWil(),
                  direction: AxisDirection.left));
        },
        mini: true,
        child: const Icon(Icons.bar_chart),
      ),
    ));
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
