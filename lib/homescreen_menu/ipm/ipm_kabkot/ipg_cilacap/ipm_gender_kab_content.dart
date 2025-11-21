// ignore_for_file: non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipg_cilacap/body_grafik_ipm_gender.dart';
import 'package:flutter/material.dart';

class IpmGenderKabContent extends StatefulWidget {
  const IpmGenderKabContent({Key? key}) : super(key: key);

  @override
  _IpmGenderKabContentState createState() => _IpmGenderKabContentState();
}

class _IpmGenderKabContentState extends State<IpmGenderKabContent> {
  RepositoryIpm repositoryipm = RepositoryIpm();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          '[IPG] Indeks Pembangunan Gender',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
      ),
      body: FutureBuilder(
        future: repositoryipm.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiipm = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String tahun1 = isiipm[index = 0].tahun;
                String tahun2 = isiipm[index = 1].tahun;
                String tahun3 = isiipm[index = 2].tahun;
                String tahun4 = isiipm[index = 3].tahun;
                String tahun5 = isiipm[index = 4].tahun;

                //Lk+Pr
                double uhh1 = double.parse(isiipm[index = 0].uhh_lfsp2020);
                double uhh2 = double.parse(isiipm[index = 1].uhh_lfsp2020);
                double uhh3 = double.parse(isiipm[index = 2].uhh_lfsp2020);
                double uhh4 = double.parse(isiipm[index = 3].uhh_lfsp2020);
                double uhh5 = double.parse(isiipm[index = 4].uhh_lfsp2020);

                double rls1 = double.parse(isiipm[index = 0].rls);
                double rls2 = double.parse(isiipm[index = 1].rls);
                double rls3 = double.parse(isiipm[index = 2].rls);
                double rls4 = double.parse(isiipm[index = 3].rls);
                double rls5 = double.parse(isiipm[index = 4].rls);

                double hls1 = double.parse(isiipm[index = 0].hls);
                double hls2 = double.parse(isiipm[index = 1].hls);
                double hls3 = double.parse(isiipm[index = 2].hls);
                double hls4 = double.parse(isiipm[index = 3].hls);
                double hls5 = double.parse(isiipm[index = 4].hls);

                double ppp1 = double.parse(isiipm[index = 0].ppp);
                double ppp2 = double.parse(isiipm[index = 1].ppp);
                double ppp3 = double.parse(isiipm[index = 2].ppp);
                double ppp4 = double.parse(isiipm[index = 3].ppp);
                double ppp5 = double.parse(isiipm[index = 4].ppp);

                double ipmlf1 = double.parse(isiipm[index = 0].ipm_lfsp2020);
                double ipmlf2 = double.parse(isiipm[index = 1].ipm_lfsp2020);
                double ipmlf3 = double.parse(isiipm[index = 2].ipm_lfsp2020);
                double ipmlf4 = double.parse(isiipm[index = 3].ipm_lfsp2020);
                double ipmlf5 = double.parse(isiipm[index = 4].ipm_lfsp2020);

                //Laki-laki
                double uhh_lk1 = double.parse(isiipm[index = 5].uhh_lfsp2020);
                double uhh_lk2 = double.parse(isiipm[index = 6].uhh_lfsp2020);
                double uhh_lk3 = double.parse(isiipm[index = 7].uhh_lfsp2020);
                double uhh_lk4 = double.parse(isiipm[index = 8].uhh_lfsp2020);
                double uhh_lk5 = double.parse(isiipm[index = 9].uhh_lfsp2020);

                double rls_lk1 = double.parse(isiipm[index = 5].rls);
                double rls_lk2 = double.parse(isiipm[index = 6].rls);
                double rls_lk3 = double.parse(isiipm[index = 7].rls);
                double rls_lk4 = double.parse(isiipm[index = 8].rls);
                double rls_lk5 = double.parse(isiipm[index = 9].rls);

                double hls_lk1 = double.parse(isiipm[index = 5].hls);
                double hls_lk2 = double.parse(isiipm[index = 6].hls);
                double hls_lk3 = double.parse(isiipm[index = 7].hls);
                double hls_lk4 = double.parse(isiipm[index = 8].hls);
                double hls_lk5 = double.parse(isiipm[index = 9].hls);

                double ppp_lk1 = double.parse(isiipm[index = 5].ppp);
                double ppp_lk2 = double.parse(isiipm[index = 6].ppp);
                double ppp_lk3 = double.parse(isiipm[index = 7].ppp);
                double ppp_lk4 = double.parse(isiipm[index = 8].ppp);
                double ppp_lk5 = double.parse(isiipm[index = 9].ppp);

                double ipmlf_lk1 = double.parse(isiipm[index = 5].ipm_lfsp2020);
                double ipmlf_lk2 = double.parse(isiipm[index = 6].ipm_lfsp2020);
                double ipmlf_lk3 = double.parse(isiipm[index = 7].ipm_lfsp2020);
                double ipmlf_lk4 = double.parse(isiipm[index = 8].ipm_lfsp2020);
                double ipmlf_lk5 = double.parse(isiipm[index = 9].ipm_lfsp2020);
                //Perempuan
                double uhh_pr1 = double.parse(isiipm[index = 10].uhh_lfsp2020);
                double uhh_pr2 = double.parse(isiipm[index = 11].uhh_lfsp2020);
                double uhh_pr3 = double.parse(isiipm[index = 12].uhh_lfsp2020);
                double uhh_pr4 = double.parse(isiipm[index = 13].uhh_lfsp2020);
                double uhh_pr5 = double.parse(isiipm[index = 14].uhh_lfsp2020);

                double rls_pr1 = double.parse(isiipm[index = 10].rls);
                double rls_pr2 = double.parse(isiipm[index = 11].rls);
                double rls_pr3 = double.parse(isiipm[index = 12].rls);
                double rls_pr4 = double.parse(isiipm[index = 13].rls);
                double rls_pr5 = double.parse(isiipm[index = 14].rls);

                double hls_pr1 = double.parse(isiipm[index = 10].hls);
                double hls_pr2 = double.parse(isiipm[index = 11].hls);
                double hls_pr3 = double.parse(isiipm[index = 12].hls);
                double hls_pr4 = double.parse(isiipm[index = 13].hls);
                double hls_pr5 = double.parse(isiipm[index = 14].hls);

                double ppp_pr1 = double.parse(isiipm[index = 10].ppp);
                double ppp_pr2 = double.parse(isiipm[index = 11].ppp);
                double ppp_pr3 = double.parse(isiipm[index = 12].ppp);
                double ppp_pr4 = double.parse(isiipm[index = 13].ppp);
                double ppp_pr5 = double.parse(isiipm[index = 14].ppp);

                double ipmlf_pr1 = double.parse(
                  isiipm[index = 10].ipm_lfsp2020,
                );
                double ipmlf_pr2 = double.parse(
                  isiipm[index = 11].ipm_lfsp2020,
                );
                double ipmlf_pr3 = double.parse(
                  isiipm[index = 12].ipm_lfsp2020,
                );
                double ipmlf_pr4 = double.parse(
                  isiipm[index = 13].ipm_lfsp2020,
                );
                double ipmlf_pr5 = double.parse(
                  isiipm[index = 14].ipm_lfsp2020,
                );

                double ipgN5 = double.parse(isiipm[index = 0].ipg);
                double ipgN4 = double.parse(isiipm[index = 1].ipg);
                double ipgN3 = double.parse(isiipm[index = 2].ipg);
                double ipgN2 = double.parse(isiipm[index = 3].ipg);
                double ipgN1 = double.parse(isiipm[index = 4].ipg);

                return Container(
                  height: screenHeight,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 2,
                        ),
                        child: Text(
                          "[IPG] Indeks Pembangunan Manusia (IPM) dan Komponennya Menurut Jenis Kelamin dan IPG Kabupaten Cilacap, $tahun1-$tahun5",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "IPM & Komponennya",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.green,
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        tahun1,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.green,
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        tahun2,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.green,
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        tahun3,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.green,
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        tahun4,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.green,
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        tahun5,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // UHH
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 2,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    child: const Text(
                                      "UHH (tahun)",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        uhh1.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        uhh2.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        uhh3.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        uhh4.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        uhh5.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // UHH Laki-laki
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "UHH Laki-laki",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_lk1.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_lk2.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_lk3.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_lk4.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_lk5.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // UHH perempuan
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "UHH Perempuan",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_pr1.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_pr2.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_pr3.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_pr4.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      uhh_pr5.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // RLS lk+Pr
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 2,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: const Text(
                                      "RLS (tahun)",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        rls1.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        rls2.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        rls3.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        rls4.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        rls5.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // RLS laki-laki
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "RLS Laki-laki",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_lk1.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_lk2.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_lk3.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_lk4.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_lk5.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // RLS Perempuan
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "RLS Perempuan",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_pr1.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_pr2.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_pr3.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_pr4.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      rls_pr5.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //HLS Laki+Perempuan
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 2,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: const Text(
                                      "HLS (tahun)",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        hls1.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        left: 0,
                                        right: 0,
                                      ),
                                      height: screenHeight * 0.04,
                                      color: const Color.fromARGB(
                                        255,
                                        211,
                                        223,
                                        233,
                                      ),
                                      child: Text(
                                        hls2.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        hls3.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        hls4.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        left: 0,
                                        right: 0,
                                      ),
                                      height: screenHeight * 0.04,
                                      color: const Color.fromARGB(
                                        255,
                                        211,
                                        223,
                                        233,
                                      ),
                                      child: Text(
                                        hls5.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // HLS laki-laki
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "HLS Laki-laki",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_lk1.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_lk2.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_lk3.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_lk4.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_lk5.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // HLS Perempuan
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "HLS Perempuan",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_pr1.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_pr2.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_pr3.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_pr4.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      hls_pr5.toStringAsFixed(2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // PPP Lk+Pr
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 2,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.055,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Pengeluaran per Kapita/PPP (juta rp)",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.055,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ppp1.toStringAsFixed(3),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.055,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ppp2.toStringAsFixed(3),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.055,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ppp3.toStringAsFixed(3),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.055,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ppp4.toStringAsFixed(3),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.055,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ppp5.toStringAsFixed(3),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //PPP laki-laki
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "PPP Laki-laki",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_lk1.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_lk2.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_lk3.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_lk4.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_lk5.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // PPP Perempuan
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 10,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.03,
                                    child: const Text(
                                      "PPP Perempuan",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_pr1.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_pr2.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_pr3.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_pr4.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      ppp_pr5.toStringAsFixed(3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // IPM laki+Perempuan
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      right: 0,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "IPM",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf1.toStringAsFixed(2),
                                        //"$ipm1",
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf2.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf3.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf4.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      223,
                                      233,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf5.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // IPM Laki-laki
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.04,
                                    child: const Center(
                                      child: Text(
                                        "IPM Laki-laki",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_lk1.toStringAsFixed(2),
                                        //"$ipm1",
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_lk2.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_lk3.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_lk4.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_lk5.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // IPM Perempuan
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.04,
                                    child: const Center(
                                      child: Text(
                                        "IPM Perempuan",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_pr1.toStringAsFixed(2),
                                        //"$ipm1",
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_pr2.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_pr3.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_pr4.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.04,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipmlf_pr5.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // IPG
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "IPG",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipgN5.toStringAsFixed(2),
                                        //"$ipm1",
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipgN4.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipgN3.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipgN2.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        ipgN1.toStringAsFixed(2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 3,
                        thickness: 3,
                      ),
                      //catatan
                      SizedBox(
                        //color: Colors.transparent,
                        width: screenWidth,
                        height: screenHeight * 0.029,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 2),
                              child: const Text(
                                "Catatan:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        //color: Colors.transparent,
                        width: screenWidth,
                        height: screenHeight * 0.028,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 2, bottom: 2),
                              child: const Text(
                                " - UHH dihitung menggunakan data LFSP2020.",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontStyle: FontStyle.normal,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }

          if (snapshot.hasError) {
            return const Text('Database Error');
          }
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CustomPageRoute(
              child: const BodyGrafikIpmGender(),
              direction: AxisDirection.left,
            ),
          );
        },
        foregroundColor: Colors.orange,
        mini: true,
        child: const Icon(Icons.bar_chart_sharp),
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

// ignore_for_file: library_private_types_in_public_api, prefer_interpolation_to_compose_strings
