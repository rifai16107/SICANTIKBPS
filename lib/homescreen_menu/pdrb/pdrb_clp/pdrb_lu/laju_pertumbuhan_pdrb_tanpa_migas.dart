// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/body_grafik_laju_pertumb_pdrb.dart';
import 'package:bps_cilacap/tabel/tabel_lp_pdrb_tanpa_migas.dart';
import 'package:flutter/material.dart';

class LajuPertumbuhanPdrbTanpaMigas extends StatefulWidget {
  const LajuPertumbuhanPdrbTanpaMigas({super.key});

  @override
  State<LajuPertumbuhanPdrbTanpaMigas> createState() =>
      _LajuPertumbuhanPdrbTanpaMigasState();
}

class _LajuPertumbuhanPdrbTanpaMigasState
    extends State<LajuPertumbuhanPdrbTanpaMigas> {
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
              'Laju Pertumbuhan PDRB ADHK',
               style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
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
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Kode Lapangan Usaha",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "A = Pertanian, kehutanan, dan perikanan",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("B = Pertambangan dan penggalian",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("C = Industri",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("D = Pengadaan listrik dan gas",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "E = Pengadaan air, pengelolaan sampah/limbah dan daur ulang",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("F = Konstruksi",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "G = Perdagangan, reparasi mobil/motor",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("H = Transportasi dan pergudangan",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "I = Penyediaan akomodasi dan makan minum",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("J = Informasi dan komunikasi",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("K = Jasa keuangan dan asuransi",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("L = Real estate",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("M_N = Jasa perusahaan",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "O = Adm pemerintahan, pertahanan, dam jaminan sosial wajib",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("P = Jasa pendidikan",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "Q = Jasa kesehatan dan kegiatan sosial",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text("R_S_T_U = Jasa lainnya",
                              textAlign: TextAlign.justify),
                        ),
                      ]);
                    },
                  );
                },
                icon: const Icon(Icons.info_outlined),
              ),
            ],
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
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 2),
                      child: const Text(
                        "Laju Pertumbuhan PDRB ADHK Menurut Lapangan Usaha -Tanpa Migas (Persen)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                    height: screenHeight * 0.95,
                    width: screenWidth,
                    child: Column(
                      children: [
                        Flexible(
                          child: TabelLPPdrbTanpaMigas(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.startDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  CustomPageRoute(
                      child: const BodyGrafikLPPdrb(),
                      direction: AxisDirection.left));
            },
            mini: true,
            child: const Icon(Icons.line_axis_rounded),
          )),
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
