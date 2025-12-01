import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tab/sensus_pddk_indo_wil.dart';
import 'package:bps_cilacap/sensus_tab/body_grafik_indo_wil_prov.dart';
import 'package:flutter/material.dart';

class BodySensusPddkIndoWil extends StatefulWidget {
  const BodySensusPddkIndoWil({super.key});

  @override
  State<BodySensusPddkIndoWil> createState() => _BodySensusPddkIndoWil();
}

class _BodySensusPddkIndoWil extends State<BodySensusPddkIndoWil> {
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
            'Penduduk Indonesia Hasil SP2020',
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
                  height: screenHeight * 1.36,
                  width: screenWidth,
                  child: Column(
                    children: const [Flexible(child: PddkIndoWil())],
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
                child: const BodyGrafikSensusIndoWil(),
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
