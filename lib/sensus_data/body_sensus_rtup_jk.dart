import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tani_23/rtup_jk.dart';
import 'package:bps_cilacap/sensus_tani_grafik/body_grafik_rtup_jk.dart';
import 'package:bps_cilacap/sensus_tani_grafik/body_grafik_rtup_jk_kab.dart';
import 'package:flutter/material.dart';

class BodySensusRtupJk extends StatefulWidget {
  const BodySensusRtupJk({super.key});

  @override
  State<BodySensusRtupJk> createState() => _BodySensusRtupJk();
}

class _BodySensusRtupJk extends State<BodySensusRtupJk> {
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
                'RTUP Menurut Jenis Kelamin KRT',
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
                  children: <Widget>[
                    SizedBox(
                      height: screenHeight * 1.05,
                      width: screenWidth,
                      child: Column(
                        children: const [
                          Flexible(
                            child: RtupJk(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "btn1",
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const BodyGrafikRtupJk(),
                              direction: AxisDirection.left));
                    },
                    mini: true,
                    child: const Icon(Icons.stacked_bar_chart),
                  ),
                  FloatingActionButton(
                    heroTag: "btn2",
                    onPressed: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: const BodyGrafikRtupJkKab(),
                              direction: AxisDirection.left));
                    },
                    mini: true,
                    child: const Icon(Icons.pie_chart),
                  )
                ],
              ),
            )));
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
