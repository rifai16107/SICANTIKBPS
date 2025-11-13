import 'package:bps_cilacap/restAPI/repository_longform_fertil_mortal.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class AsfrKabkot extends StatefulWidget {
  const AsfrKabkot({Key? key}) : super(key: key);

  @override
  State<AsfrKabkot> createState() => _AsfrKabkotState();
}

RepositoryLongformFertilMortal repositorylongform =
    RepositoryLongformFertilMortal();

class _AsfrKabkotState extends State<AsfrKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Age Spesific Fertility Rate (ASFR)',
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
      body: FutureBuilder(
          future: repositorylongform.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isilongform = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String kabkota1 = isilongform[index = 0].wilayah;
                  String kabkota2 = isilongform[index = 1].wilayah;
                  String kabkota3 = isilongform[index = 2].wilayah;
                  String kabkota4 = isilongform[index = 3].wilayah;
                  String kabkota5 = isilongform[index = 4].wilayah;
                  String kabkota6 = isilongform[index = 5].wilayah;
                  String kabkota7 = isilongform[index = 6].wilayah;
                  String kabkota8 = isilongform[index = 7].wilayah;
                  String kabkota9 = isilongform[index = 8].wilayah;
                  String kabkota10 = isilongform[index = 9].wilayah;
                  String kabkota11 = isilongform[index = 10].wilayah;
                  String kabkota12 = isilongform[index = 11].wilayah;
                  String kabkota13 = isilongform[index = 12].wilayah;
                  String kabkota14 = isilongform[index = 13].wilayah;
                  String kabkota15 = isilongform[index = 14].wilayah;
                  String kabkota16 = isilongform[index = 15].wilayah;
                  String kabkota17 = isilongform[index = 16].wilayah;
                  String kabkota18 = isilongform[index = 17].wilayah;
                  String kabkota19 = isilongform[index = 18].wilayah;
                  String kabkota20 = isilongform[index = 19].wilayah;
                  String kabkota21 = isilongform[index = 20].wilayah;
                  String kabkota22 = isilongform[index = 21].wilayah;
                  String kabkota23 = isilongform[index = 22].wilayah;
                  String kabkota24 = isilongform[index = 23].wilayah;
                  String kabkota25 = isilongform[index = 24].wilayah;
                  String kabkota26 = isilongform[index = 25].wilayah;
                  String kabkota27 = isilongform[index = 26].wilayah;
                  String kabkota28 = isilongform[index = 27].wilayah;
                  String kabkota29 = isilongform[index = 28].wilayah;
                  String kabkota30 = isilongform[index = 29].wilayah;
                  String kabkota31 = isilongform[index = 30].wilayah;
                  String kabkota32 = isilongform[index = 31].wilayah;
                  String kabkota33 = isilongform[index = 32].wilayah;
                  String kabkota34 = isilongform[index = 33].wilayah;
                  String kabkota35 = isilongform[index = 34].wilayah;
                  String kabkota36 = isilongform[index = 35].wilayah;

                  double asfr1519_1 =
                      double.parse(isilongform[index = 0].asfr1519);
                  double asfr1519_2 =
                      double.parse(isilongform[index = 1].asfr1519);
                  double asfr1519_3 =
                      double.parse(isilongform[index = 2].asfr1519);
                  double asfr1519_4 =
                      double.parse(isilongform[index = 3].asfr1519);
                  double asfr1519_5 =
                      double.parse(isilongform[index = 4].asfr1519);
                  double asfr1519_6 =
                      double.parse(isilongform[index = 5].asfr1519);
                  double asfr1519_7 =
                      double.parse(isilongform[index = 6].asfr1519);
                  double asfr1519_8 =
                      double.parse(isilongform[index = 7].asfr1519);
                  double asfr1519_9 =
                      double.parse(isilongform[index = 8].asfr1519);
                  double asfr1519_10 =
                      double.parse(isilongform[index = 9].asfr1519);
                  double asfr1519_11 =
                      double.parse(isilongform[index = 10].asfr1519);
                  double asfr1519_12 =
                      double.parse(isilongform[index = 11].asfr1519);
                  double asfr1519_13 =
                      double.parse(isilongform[index = 12].asfr1519);
                  double asfr1519_14 =
                      double.parse(isilongform[index = 13].asfr1519);
                  double asfr1519_15 =
                      double.parse(isilongform[index = 14].asfr1519);
                  double asfr1519_16 =
                      double.parse(isilongform[index = 15].asfr1519);
                  double asfr1519_17 =
                      double.parse(isilongform[index = 16].asfr1519);
                  double asfr1519_18 =
                      double.parse(isilongform[index = 17].asfr1519);
                  double asfr1519_19 =
                      double.parse(isilongform[index = 17].asfr1519);
                  double asfr1519_20 =
                      double.parse(isilongform[index = 18].asfr1519);
                  double asfr1519_21 =
                      double.parse(isilongform[index = 19].asfr1519);
                  double asfr1519_22 =
                      double.parse(isilongform[index = 20].asfr1519);
                  double asfr1519_23 =
                      double.parse(isilongform[index = 21].asfr1519);
                  double asfr1519_24 =
                      double.parse(isilongform[index = 23].asfr1519);
                  double asfr1519_25 =
                      double.parse(isilongform[index = 24].asfr1519);
                  double asfr1519_26 =
                      double.parse(isilongform[index = 25].asfr1519);
                  double asfr1519_27 =
                      double.parse(isilongform[index = 26].asfr1519);
                  double asfr1519_28 =
                      double.parse(isilongform[index = 27].asfr1519);
                  double asfr1519_29 =
                      double.parse(isilongform[index = 28].asfr1519);
                  double asfr1519_30 =
                      double.parse(isilongform[index = 29].asfr1519);
                  double asfr1519_31 =
                      double.parse(isilongform[index = 30].asfr1519);
                  double asfr1519_32 =
                      double.parse(isilongform[index = 31].asfr1519);
                  double asfr1519_33 =
                      double.parse(isilongform[index = 32].asfr1519);
                  double asfr1519_34 =
                      double.parse(isilongform[index = 33].asfr1519);
                  double asfr1519_35 =
                      double.parse(isilongform[index = 34].asfr1519);
                  double asfr1519_36 =
                      double.parse(isilongform[index = 35].asfr1519);

                  double asfr2024_1 =
                      double.parse(isilongform[index = 0].asfr2024);
                  double asfr2024_2 =
                      double.parse(isilongform[index = 1].asfr2024);
                  double asfr2024_3 =
                      double.parse(isilongform[index = 2].asfr2024);
                  double asfr2024_4 =
                      double.parse(isilongform[index = 3].asfr2024);
                  double asfr2024_5 =
                      double.parse(isilongform[index = 4].asfr2024);
                  double asfr2024_6 =
                      double.parse(isilongform[index = 5].asfr2024);
                  double asfr2024_7 =
                      double.parse(isilongform[index = 6].asfr2024);
                  double asfr2024_8 =
                      double.parse(isilongform[index = 7].asfr2024);
                  double asfr2024_9 =
                      double.parse(isilongform[index = 8].asfr2024);
                  double asfr2024_10 =
                      double.parse(isilongform[index = 9].asfr2024);
                  double asfr2024_11 =
                      double.parse(isilongform[index = 10].asfr2024);
                  double asfr2024_12 =
                      double.parse(isilongform[index = 11].asfr2024);
                  double asfr2024_13 =
                      double.parse(isilongform[index = 12].asfr2024);
                  double asfr2024_14 =
                      double.parse(isilongform[index = 13].asfr2024);
                  double asfr2024_15 =
                      double.parse(isilongform[index = 14].asfr2024);
                  double asfr2024_16 =
                      double.parse(isilongform[index = 15].asfr2024);
                  double asfr2024_17 =
                      double.parse(isilongform[index = 16].asfr2024);
                  double asfr2024_18 =
                      double.parse(isilongform[index = 17].asfr2024);
                  double asfr2024_19 =
                      double.parse(isilongform[index = 18].asfr2024);
                  double asfr2024_20 =
                      double.parse(isilongform[index = 19].asfr2024);
                  double asfr2024_21 =
                      double.parse(isilongform[index = 20].asfr2024);
                  double asfr2024_22 =
                      double.parse(isilongform[index = 21].asfr2024);
                  double asfr2024_23 =
                      double.parse(isilongform[index = 22].asfr2024);
                  double asfr2024_24 =
                      double.parse(isilongform[index = 23].asfr2024);
                  double asfr2024_25 =
                      double.parse(isilongform[index = 24].asfr2024);
                  double asfr2024_26 =
                      double.parse(isilongform[index = 25].asfr2024);
                  double asfr2024_27 =
                      double.parse(isilongform[index = 26].asfr2024);
                  double asfr2024_28 =
                      double.parse(isilongform[index = 27].asfr2024);
                  double asfr2024_29 =
                      double.parse(isilongform[index = 28].asfr2024);
                  double asfr2024_30 =
                      double.parse(isilongform[index = 29].asfr2024);
                  double asfr2024_31 =
                      double.parse(isilongform[index = 30].asfr2024);
                  double asfr2024_32 =
                      double.parse(isilongform[index = 31].asfr2024);
                  double asfr2024_33 =
                      double.parse(isilongform[index = 32].asfr2024);
                  double asfr2024_34 =
                      double.parse(isilongform[index = 33].asfr2024);
                  double asfr2024_35 =
                      double.parse(isilongform[index = 34].asfr2024);
                  double asfr2024_36 =
                      double.parse(isilongform[index = 35].asfr2024);

                  double asfr2529_1 =
                      double.parse(isilongform[index = 0].asfr2529);
                  double asfr2529_2 =
                      double.parse(isilongform[index = 1].asfr2529);
                  double asfr2529_3 =
                      double.parse(isilongform[index = 2].asfr2529);
                  double asfr2529_4 =
                      double.parse(isilongform[index = 3].asfr2529);
                  double asfr2529_5 =
                      double.parse(isilongform[index = 4].asfr2529);
                  double asfr2529_6 =
                      double.parse(isilongform[index = 5].asfr2529);
                  double asfr2529_7 =
                      double.parse(isilongform[index = 6].asfr2529);
                  double asfr2529_8 =
                      double.parse(isilongform[index = 7].asfr2529);
                  double asfr2529_9 =
                      double.parse(isilongform[index = 8].asfr2529);
                  double asfr2529_10 =
                      double.parse(isilongform[index = 9].asfr2529);
                  double asfr2529_11 =
                      double.parse(isilongform[index = 10].asfr2529);
                  double asfr2529_12 =
                      double.parse(isilongform[index = 11].asfr2529);
                  double asfr2529_13 =
                      double.parse(isilongform[index = 12].asfr2529);
                  double asfr2529_14 =
                      double.parse(isilongform[index = 13].asfr2529);
                  double asfr2529_15 =
                      double.parse(isilongform[index = 14].asfr2529);
                  double asfr2529_16 =
                      double.parse(isilongform[index = 15].asfr2529);
                  double asfr2529_17 =
                      double.parse(isilongform[index = 16].asfr2529);
                  double asfr2529_18 =
                      double.parse(isilongform[index = 17].asfr2529);
                  double asfr2529_19 =
                      double.parse(isilongform[index = 18].asfr2529);
                  double asfr2529_20 =
                      double.parse(isilongform[index = 19].asfr2529);
                  double asfr2529_21 =
                      double.parse(isilongform[index = 20].asfr2529);
                  double asfr2529_22 =
                      double.parse(isilongform[index = 21].asfr2529);
                  double asfr2529_23 =
                      double.parse(isilongform[index = 22].asfr2529);
                  double asfr2529_24 =
                      double.parse(isilongform[index = 23].asfr2529);
                  double asfr2529_25 =
                      double.parse(isilongform[index = 24].asfr2529);
                  double asfr2529_26 =
                      double.parse(isilongform[index = 25].asfr2529);
                  double asfr2529_27 =
                      double.parse(isilongform[index = 26].asfr2529);
                  double asfr2529_28 =
                      double.parse(isilongform[index = 27].asfr2529);
                  double asfr2529_29 =
                      double.parse(isilongform[index = 28].asfr2529);
                  double asfr2529_30 =
                      double.parse(isilongform[index = 29].asfr2529);
                  double asfr2529_31 =
                      double.parse(isilongform[index = 30].asfr2529);
                  double asfr2529_32 =
                      double.parse(isilongform[index = 31].asfr2529);
                  double asfr2529_33 =
                      double.parse(isilongform[index = 32].asfr2529);
                  double asfr2529_34 =
                      double.parse(isilongform[index = 33].asfr2529);
                  double asfr2529_35 =
                      double.parse(isilongform[index = 34].asfr2529);
                  double asfr2529_36 =
                      double.parse(isilongform[index = 35].asfr2529);

                  double asfr3034_1 =
                      double.parse(isilongform[index = 0].asfr3034);
                  double asfr3034_2 =
                      double.parse(isilongform[index = 1].asfr3034);
                  double asfr3034_3 =
                      double.parse(isilongform[index = 2].asfr3034);
                  double asfr3034_4 =
                      double.parse(isilongform[index = 3].asfr3034);
                  double asfr3034_5 =
                      double.parse(isilongform[index = 4].asfr3034);
                  double asfr3034_6 =
                      double.parse(isilongform[index = 5].asfr3034);
                  double asfr3034_7 =
                      double.parse(isilongform[index = 6].asfr3034);
                  double asfr3034_8 =
                      double.parse(isilongform[index = 7].asfr3034);
                  double asfr3034_9 =
                      double.parse(isilongform[index = 8].asfr3034);
                  double asfr3034_10 =
                      double.parse(isilongform[index = 9].asfr3034);
                  double asfr3034_11 =
                      double.parse(isilongform[index = 10].asfr3034);
                  double asfr3034_12 =
                      double.parse(isilongform[index = 11].asfr3034);
                  double asfr3034_13 =
                      double.parse(isilongform[index = 12].asfr3034);
                  double asfr3034_14 =
                      double.parse(isilongform[index = 13].asfr3034);
                  double asfr3034_15 =
                      double.parse(isilongform[index = 14].asfr3034);
                  double asfr3034_16 =
                      double.parse(isilongform[index = 15].asfr3034);
                  double asfr3034_17 =
                      double.parse(isilongform[index = 16].asfr3034);
                  double asfr3034_18 =
                      double.parse(isilongform[index = 17].asfr3034);
                  double asfr3034_19 =
                      double.parse(isilongform[index = 18].asfr3034);
                  double asfr3034_20 =
                      double.parse(isilongform[index = 19].asfr3034);
                  double asfr3034_21 =
                      double.parse(isilongform[index = 20].asfr3034);
                  double asfr3034_22 =
                      double.parse(isilongform[index = 21].asfr3034);
                  double asfr3034_23 =
                      double.parse(isilongform[index = 22].asfr3034);
                  double asfr3034_24 =
                      double.parse(isilongform[index = 23].asfr3034);
                  double asfr3034_25 =
                      double.parse(isilongform[index = 24].asfr3034);
                  double asfr3034_26 =
                      double.parse(isilongform[index = 25].asfr3034);
                  double asfr3034_27 =
                      double.parse(isilongform[index = 26].asfr3034);
                  double asfr3034_28 =
                      double.parse(isilongform[index = 27].asfr3034);
                  double asfr3034_29 =
                      double.parse(isilongform[index = 28].asfr3034);
                  double asfr3034_30 =
                      double.parse(isilongform[index = 29].asfr3034);
                  double asfr3034_31 =
                      double.parse(isilongform[index = 30].asfr3034);
                  double asfr3034_32 =
                      double.parse(isilongform[index = 31].asfr3034);
                  double asfr3034_33 =
                      double.parse(isilongform[index = 32].asfr3034);
                  double asfr3034_34 =
                      double.parse(isilongform[index = 33].asfr3034);
                  double asfr3034_35 =
                      double.parse(isilongform[index = 34].asfr3034);
                  double asfr3034_36 =
                      double.parse(isilongform[index = 35].asfr3034);

                  double asfr3539_1 =
                      double.parse(isilongform[index = 0].asfr3539);
                  double asfr3539_2 =
                      double.parse(isilongform[index = 1].asfr3539);
                  double asfr3539_3 =
                      double.parse(isilongform[index = 2].asfr3539);
                  double asfr3539_4 =
                      double.parse(isilongform[index = 3].asfr3539);
                  double asfr3539_5 =
                      double.parse(isilongform[index = 4].asfr3539);
                  double asfr3539_6 =
                      double.parse(isilongform[index = 5].asfr3539);
                  double asfr3539_7 =
                      double.parse(isilongform[index = 6].asfr3539);
                  double asfr3539_8 =
                      double.parse(isilongform[index = 7].asfr3539);
                  double asfr3539_9 =
                      double.parse(isilongform[index = 8].asfr3539);
                  double asfr3539_10 =
                      double.parse(isilongform[index = 9].asfr3539);
                  double asfr3539_11 =
                      double.parse(isilongform[index = 10].asfr3539);
                  double asfr3539_12 =
                      double.parse(isilongform[index = 11].asfr3539);
                  double asfr3539_13 =
                      double.parse(isilongform[index = 12].asfr3539);
                  double asfr3539_14 =
                      double.parse(isilongform[index = 13].asfr3539);
                  double asfr3539_15 =
                      double.parse(isilongform[index = 14].asfr3539);
                  double asfr3539_16 =
                      double.parse(isilongform[index = 15].asfr3539);
                  double asfr3539_17 =
                      double.parse(isilongform[index = 16].asfr3539);
                  double asfr3539_18 =
                      double.parse(isilongform[index = 17].asfr3539);
                  double asfr3539_19 =
                      double.parse(isilongform[index = 18].asfr3539);
                  double asfr3539_20 =
                      double.parse(isilongform[index = 19].asfr3539);
                  double asfr3539_21 =
                      double.parse(isilongform[index = 20].asfr3539);
                  double asfr3539_22 =
                      double.parse(isilongform[index = 21].asfr3539);
                  double asfr3539_23 =
                      double.parse(isilongform[index = 22].asfr3539);
                  double asfr3539_24 =
                      double.parse(isilongform[index = 23].asfr3539);
                  double asfr3539_25 =
                      double.parse(isilongform[index = 24].asfr3539);
                  double asfr3539_26 =
                      double.parse(isilongform[index = 25].asfr3539);
                  double asfr3539_27 =
                      double.parse(isilongform[index = 26].asfr3539);
                  double asfr3539_28 =
                      double.parse(isilongform[index = 27].asfr3539);
                  double asfr3539_29 =
                      double.parse(isilongform[index = 28].asfr3539);
                  double asfr3539_30 =
                      double.parse(isilongform[index = 29].asfr3539);
                  double asfr3539_31 =
                      double.parse(isilongform[index = 30].asfr3539);
                  double asfr3539_32 =
                      double.parse(isilongform[index = 31].asfr3539);
                  double asfr3539_33 =
                      double.parse(isilongform[index = 32].asfr3539);
                  double asfr3539_34 =
                      double.parse(isilongform[index = 33].asfr3539);
                  double asfr3539_35 =
                      double.parse(isilongform[index = 34].asfr3539);
                  double asfr3539_36 =
                      double.parse(isilongform[index = 35].asfr3539);

                  double asfr4044_1 =
                      double.parse(isilongform[index = 0].asfr4044);
                  double asfr4044_2 =
                      double.parse(isilongform[index = 1].asfr4044);
                  double asfr4044_3 =
                      double.parse(isilongform[index = 2].asfr4044);
                  double asfr4044_4 =
                      double.parse(isilongform[index = 3].asfr4044);
                  double asfr4044_5 =
                      double.parse(isilongform[index = 4].asfr4044);
                  double asfr4044_6 =
                      double.parse(isilongform[index = 5].asfr4044);
                  double asfr4044_7 =
                      double.parse(isilongform[index = 6].asfr4044);
                  double asfr4044_8 =
                      double.parse(isilongform[index = 7].asfr4044);
                  double asfr4044_9 =
                      double.parse(isilongform[index = 8].asfr4044);
                  double asfr4044_10 =
                      double.parse(isilongform[index = 9].asfr4044);
                  double asfr4044_11 =
                      double.parse(isilongform[index = 10].asfr4044);
                  double asfr4044_12 =
                      double.parse(isilongform[index = 11].asfr4044);
                  double asfr4044_13 =
                      double.parse(isilongform[index = 12].asfr4044);
                  double asfr4044_14 =
                      double.parse(isilongform[index = 13].asfr4044);
                  double asfr4044_15 =
                      double.parse(isilongform[index = 14].asfr4044);
                  double asfr4044_16 =
                      double.parse(isilongform[index = 15].asfr4044);
                  double asfr4044_17 =
                      double.parse(isilongform[index = 16].asfr4044);
                  double asfr4044_18 =
                      double.parse(isilongform[index = 17].asfr4044);
                  double asfr4044_19 =
                      double.parse(isilongform[index = 18].asfr4044);
                  double asfr4044_20 =
                      double.parse(isilongform[index = 19].asfr4044);
                  double asfr4044_21 =
                      double.parse(isilongform[index = 20].asfr4044);
                  double asfr4044_22 =
                      double.parse(isilongform[index = 21].asfr4044);
                  double asfr4044_23 =
                      double.parse(isilongform[index = 22].asfr4044);
                  double asfr4044_24 =
                      double.parse(isilongform[index = 23].asfr4044);
                  double asfr4044_25 =
                      double.parse(isilongform[index = 24].asfr4044);
                  double asfr4044_26 =
                      double.parse(isilongform[index = 25].asfr4044);
                  double asfr4044_27 =
                      double.parse(isilongform[index = 26].asfr4044);
                  double asfr4044_28 =
                      double.parse(isilongform[index = 27].asfr4044);
                  double asfr4044_29 =
                      double.parse(isilongform[index = 28].asfr4044);
                  double asfr4044_30 =
                      double.parse(isilongform[index = 29].asfr4044);
                  double asfr4044_31 =
                      double.parse(isilongform[index = 30].asfr4044);
                  double asfr4044_32 =
                      double.parse(isilongform[index = 31].asfr4044);
                  double asfr4044_33 =
                      double.parse(isilongform[index = 32].asfr4044);
                  double asfr4044_34 =
                      double.parse(isilongform[index = 33].asfr4044);
                  double asfr4044_35 =
                      double.parse(isilongform[index = 34].asfr4044);
                  double asfr4044_36 =
                      double.parse(isilongform[index = 35].asfr4044);

                  double asfr4549_1 =
                      double.parse(isilongform[index = 0].asfr4549);
                  double asfr4549_2 =
                      double.parse(isilongform[index = 1].asfr4549);
                  double asfr4549_3 =
                      double.parse(isilongform[index = 2].asfr4549);
                  double asfr4549_4 =
                      double.parse(isilongform[index = 3].asfr4549);
                  double asfr4549_5 =
                      double.parse(isilongform[index = 4].asfr4549);
                  double asfr4549_6 =
                      double.parse(isilongform[index = 5].asfr4549);
                  double asfr4549_7 =
                      double.parse(isilongform[index = 6].asfr4549);
                  double asfr4549_8 =
                      double.parse(isilongform[index = 7].asfr4549);
                  double asfr4549_9 =
                      double.parse(isilongform[index = 8].asfr4549);
                  double asfr4549_10 =
                      double.parse(isilongform[index = 9].asfr4549);
                  double asfr4549_11 =
                      double.parse(isilongform[index = 10].asfr4549);
                  double asfr4549_12 =
                      double.parse(isilongform[index = 11].asfr4549);
                  double asfr4549_13 =
                      double.parse(isilongform[index = 12].asfr4549);
                  double asfr4549_14 =
                      double.parse(isilongform[index = 13].asfr4549);
                  double asfr4549_15 =
                      double.parse(isilongform[index = 14].asfr4549);
                  double asfr4549_16 =
                      double.parse(isilongform[index = 15].asfr4549);
                  double asfr4549_17 =
                      double.parse(isilongform[index = 16].asfr4549);
                  double asfr4549_18 =
                      double.parse(isilongform[index = 17].asfr4549);
                  double asfr4549_19 =
                      double.parse(isilongform[index = 18].asfr4549);
                  double asfr4549_20 =
                      double.parse(isilongform[index = 19].asfr4549);
                  double asfr4549_21 =
                      double.parse(isilongform[index = 20].asfr4549);
                  double asfr4549_22 =
                      double.parse(isilongform[index = 21].asfr4549);
                  double asfr4549_23 =
                      double.parse(isilongform[index = 22].asfr4549);
                  double asfr4549_24 =
                      double.parse(isilongform[index = 23].asfr4549);
                  double asfr4549_25 =
                      double.parse(isilongform[index = 24].asfr4549);
                  double asfr4549_26 =
                      double.parse(isilongform[index = 25].asfr4549);
                  double asfr4549_27 =
                      double.parse(isilongform[index = 26].asfr4549);
                  double asfr4549_28 =
                      double.parse(isilongform[index = 27].asfr4549);
                  double asfr4549_29 =
                      double.parse(isilongform[index = 28].asfr4549);
                  double asfr4549_30 =
                      double.parse(isilongform[index = 29].asfr4549);
                  double asfr4549_31 =
                      double.parse(isilongform[index = 30].asfr4549);
                  double asfr4549_32 =
                      double.parse(isilongform[index = 31].asfr4549);
                  double asfr4549_33 =
                      double.parse(isilongform[index = 32].asfr4549);
                  double asfr4549_34 =
                      double.parse(isilongform[index = 33].asfr4549);
                  double asfr4549_35 =
                      double.parse(isilongform[index = 34].asfr4549);
                  double asfr4549_36 =
                      double.parse(isilongform[index = 35].asfr4549);

                  return Scaffold(
                      body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                          width: screenWidth * 1.0,
                          height: screenHeight * 0.1,
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 0,
                            top: 10,
                            bottom: 10,
                          ),
                          child: const Text(
                            "Age Spesific Fertility Rate (ASF) Kabupaten/Kota Di Jawa Tengah, Hasil Pendataan Long Form SP2020 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.25,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    right: 3, top: 10, bottom: 0),
                                child: const Text(
                                  "Kabupaten/",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.74,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 4, bottom: 2),
                                child: const Text(
                                  "Age Spesific Fertility Rate (ASFR)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.25,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    right: 3, top: 0, bottom: 0),
                                child: const Text(
                                  "Kota",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.107,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 5, bottom: 2),
                                child: const Text(
                                  "15-19",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.108,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 5, bottom: 2),
                                child: const Text(
                                  "20-24",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.107,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 5, bottom: 2),
                                child: const Text(
                                  "25-29",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.107,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 5, bottom: 2),
                                child: const Text(
                                  "30-34",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.107,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 5, bottom: 2),
                                child: const Text(
                                  "35-39",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.107,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 5, bottom: 2),
                                child: const Text(
                                  "40-45",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.107,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 5, bottom: 2),
                                child: const Text(
                                  "45-49",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //),
                      Expanded(
                        //flex:16,
                        child: SingleChildScrollView(
                          //child: Flexible(
                          //flex: 20,
                          //fit: FlexFit.tight,
                          //child: SizedBox(
                          //width: screenWidth,
                          //height: screenHeight,
                          child: Column(
                            children: [
                              // 1 Cilacap
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //2 Banyumas
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //3 Purbalingga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //4 Banjarnegara

                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //5 Kebumen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //6 Purworejo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // 7 Wonosobo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //8 Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //9 Boyolali
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //10 Klaten
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //11 Sukoharjo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //12 Wonogiri
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //13 Karanganyar
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //14 Sragen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //15 Grobogan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //16 Blora
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //17 Rembang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //18 Pati
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //19 Kudus
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //20 Jepara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //21 Demak
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //23 Temanggung
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //24 Kendal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //25 Batang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //26 Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //27 Pemalang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //28 Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //29 Brebes
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // 30 Kota Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.055,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //31 Kota Surakarta
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.055,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //32 Kota Salatiga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.033,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //33 Kota Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.055,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //34 Kota Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.055,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //35 Kota Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Total
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.045,
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota36,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 1, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr1519_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2024_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.108,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr2529_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 0,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3034_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr3539_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.107,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4044_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.106,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 2, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(asfr4549_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 4,
                                  bottom: 5,
                                ),
                                child: const Text(
                                  " Sumber Data : Pendataan Long Form SP 2020 (dilaksanakan pada tahun 2022)",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Keterangan:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Angka Kelahiran Menurut Kelompok Umur Tertentu / Age Specific Fertility Rate (ASFR) :",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 20),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                        "Banyaknya kelahiran selama setahun per 1000 perempuan pada kelompok umur 15-49 tahun",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.justify),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
                },
              );
            }
            if (snapshot.hasError) {
              return const Text('Database Error');
            } else {
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 3));
            }
          }),
    );
  }
}
