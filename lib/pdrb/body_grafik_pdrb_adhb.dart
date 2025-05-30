// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/grafik/grafik_pdrb_adhb_lu.dart';
import 'package:flutter/material.dart';

class BodyGrafikPdrbAdhb extends StatefulWidget {
  const BodyGrafikPdrbAdhb({super.key});

  @override
  State<BodyGrafikPdrbAdhb> createState() => _BodyGrafikPdrbAdhbState();
}

class _BodyGrafikPdrbAdhbState extends State<BodyGrafikPdrbAdhb> {
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
          'PDRB ADHB Menurut Lapangan Usaha',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.black,
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
                      child: const Text("G = Perdagangan, reparasi mobil/motor",
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
              SizedBox(
                height: screenHeight * 0.75,
                width: screenWidth,
                child: Column(
                  children: [
                    Flexible(
                      child: grafikPdrbAdhb(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
