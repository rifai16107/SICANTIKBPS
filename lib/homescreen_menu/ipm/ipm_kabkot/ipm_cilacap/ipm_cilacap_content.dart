import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipm_cilacap/body_grafik_ipm_cilacap.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class IpmKabContent extends StatefulWidget {
  const IpmKabContent({Key? key}) : super(key: key);

  @override
  _IpmKabContentState createState() => _IpmKabContentState();
}

class _IpmKabContentState extends State<IpmKabContent> {
  RepositoryIpm repositoryipm = RepositoryIpm();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    //final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Indeks Pembangunan Manusia (IPM)',
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
                String tahun5 = isiipm[index = 19].tahun;
                String tahun4 = isiipm[index = 18].tahun;
                String tahun3 = isiipm[index = 17].tahun;
                String tahun2 = isiipm[index = 16].tahun;
                String tahun1 = isiipm[index = 15].tahun;

                double uhh1 = double.parse(isiipm[index = 15].uhh);
                double uhh2 = double.parse(isiipm[index = 16].uhh);
                double uhh3 = double.parse(isiipm[index = 17].uhh);
                double uhh4 = double.parse(isiipm[index = 18].uhh);
                double uhh5 = double.parse(isiipm[index = 19].uhh);

                double rls1 = double.parse(isiipm[index = 15].rls);
                double rls2 = double.parse(isiipm[index = 16].rls);
                double rls3 = double.parse(isiipm[index = 17].rls);
                double rls4 = double.parse(isiipm[index = 18].rls);
                double rls5 = double.parse(isiipm[index = 19].rls);

                double hls1 = double.parse(isiipm[index = 15].hls);
                double hls2 = double.parse(isiipm[index = 16].hls);
                double hls3 = double.parse(isiipm[index = 17].hls);
                double hls4 = double.parse(isiipm[index = 18].hls);
                double hls5 = double.parse(isiipm[index = 19].hls);

                double ppp1 = double.parse(isiipm[index = 15].ppp);
                double ppp2 = double.parse(isiipm[index = 16].ppp);
                double ppp3 = double.parse(isiipm[index = 17].ppp);
                double ppp4 = double.parse(isiipm[index = 18].ppp);
                double ppp5 = double.parse(isiipm[index = 19].ppp);

                double ipm1 = double.parse(isiipm[index = 15].ipm);
                double ipm2 = double.parse(isiipm[index = 16].ipm);
                double ipm3 = double.parse(isiipm[index = 17].ipm);
                double ipm4 = double.parse(isiipm[index = 18].ipm);
                double ipm5 = double.parse(isiipm[index = 19].ipm);

                //ipm  dengan UHH LF
                double uhhlf1 = double.parse(isiipm[index = 15].uhh_lfsp2020);
                double uhhlf2 = double.parse(isiipm[index = 16].uhh_lfsp2020);
                double uhhlf3 = double.parse(isiipm[index = 17].uhh_lfsp2020);
                double uhhlf4 = double.parse(isiipm[index = 18].uhh_lfsp2020);
                double uhhlf5 = double.parse(isiipm[index = 19].uhh_lfsp2020);

                double ipmlf1 = double.parse(isiipm[index = 15].ipm_lfsp2020);
                double ipmlf2 = double.parse(isiipm[index = 16].ipm_lfsp2020);
                double ipmlf3 = double.parse(isiipm[index = 17].ipm_lfsp2020);
                double ipmlf4 = double.parse(isiipm[index = 18].ipm_lfsp2020);
                double ipmlf5 = double.parse(isiipm[index = 19].ipm_lfsp2020);

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
                          "Indeks Pembangunan Manusia Kabupaten Cilacap, $tahun1-$tahun5"
                          " (Komponen UHH dihitung dari hasil SP2010)",
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
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: const Center(
                                      child: Text(
                                        "UHH (tahun)",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(uhh1, 2),
                                      //uhh1.toStringAsFixed(2),
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
                                      Format.convertTo(uhh2, 2),
                                      //uhh2.toStringAsFixed(2),
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
                                      Format.convertTo(uhh3, 2),
                                      //uhh3.toStringAsFixed(2),
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
                                      Format.convertTo(uhh4, 2),
                                      //uhh4.toStringAsFixed(2),
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
                                      Format.convertTo(uhh5, 2),
                                      //uhh5.toStringAsFixed(2),
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
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: const Center(
                                      child: Text(
                                        "RLS (tahun)",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(rls1, 2),
                                      //rls1.toStringAsFixed(2),
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
                                      Format.convertTo(rls2, 2),
                                      //rls2.toStringAsFixed(2),
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
                                      Format.convertTo(rls3, 2),
                                      //rls3.toStringAsFixed(2),
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
                                      Format.convertTo(rls4, 2),
                                      //rls4.toStringAsFixed(2),
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
                                      Format.convertTo(rls5, 2),
                                      //rls5.toStringAsFixed(2),
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
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.05,
                                    child: const Center(
                                      child: Text(
                                        "HLS (tahun)",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(hls1, 2),
                                      //hls1.toStringAsFixed(2),
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
                                      Format.convertTo(hls2, 2),
                                      //hls2.toStringAsFixed(2),
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
                                      Format.convertTo(hls3, 2),
                                      //hls3.toStringAsFixed(2),
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
                                      Format.convertTo(hls4, 2),
                                      //hls4.toStringAsFixed(2),
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
                                      Format.convertTo(hls5, 2),
                                      //hls5.toStringAsFixed(2),
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
                                    height: screenHeight * 0.06,
                                    child: const Center(
                                      child: Text(
                                        "Pengeluaran per Kapita (juta rp)",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(ppp1, 3),
                                      //ppp1.toStringAsFixed(3),
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
                                      Format.convertTo(ppp2, 3),
                                      //ppp2.toStringAsFixed(3),
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
                                      Format.convertTo(ppp3, 3),
                                      //ppp3.toStringAsFixed(3),
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
                                      Format.convertTo(ppp4, 3),
                                      //ppp4.toStringAsFixed(3),
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
                                      Format.convertTo(ppp5, 3),
                                      //ppp5.toStringAsFixed(3),
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
                                        "IPM",
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
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        Format.convertTo(ipm1, 2),
                                        //ipm1.toStringAsFixed(2),
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
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        Format.convertTo(ipm2, 2),
                                        //ipm2.toStringAsFixed(2),
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
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        Format.convertTo(ipm3, 2),
                                        //ipm3.toStringAsFixed(2),
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
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        Format.convertTo(ipm4, 2),
                                        //ipm4.toStringAsFixed(2),
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
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        Format.convertTo(ipm5, 2),
                                        //ipm5.toStringAsFixed(2),
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
                      // IPM UHH LFSP2020
                      const Divider(
                        color: Colors.white,
                        height: 25,
                        thickness: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 2,
                        ),
                        child: Text(
                          "Indeks Pembangunan Manusia Kabupaten Cilacap, $tahun1-$tahun5"
                          " (UHH dihitung dari hasil LF SP2020)",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Column(
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
                          Row(
                            children: [
                              Flexible(
                                flex: 4,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: const Center(
                                    child: Text(
                                      "UHH (tahun)",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(uhhlf1, 2),
                                    //uhhlf1.toStringAsFixed(2),
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
                                    Format.convertTo(uhhlf2, 2),
                                    //uhhlf2.toStringAsFixed(2),
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
                                    Format.convertTo(uhhlf3, 2),
                                    //uhhlf3.toStringAsFixed(2),
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
                                    Format.convertTo(uhhlf4, 2),
                                    //uhhlf4.toStringAsFixed(2),
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
                                    Format.convertTo(uhhlf5, 2),
                                    //uhhlf5.toStringAsFixed(2),
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
                          Row(
                            children: [
                              Flexible(
                                flex: 4,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: const Center(
                                    child: Text(
                                      "RLS (tahun)",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(rls1, 2),
                                    //rls1.toStringAsFixed(2),
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
                                    Format.convertTo(rls2, 2),
                                    //rls2.toStringAsFixed(2),
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
                                    Format.convertTo(rls3, 2),
                                    //rls3.toStringAsFixed(2),
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
                                    Format.convertTo(rls4, 2),
                                    //rls4.toStringAsFixed(2),
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
                                    Format.convertTo(rls5, 2),
                                    //rls5.toStringAsFixed(2),
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
                          Row(
                            children: [
                              Flexible(
                                flex: 4,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: const Center(
                                    child: Text(
                                      "HLS (tahun)",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(hls1, 2),
                                    //hls1.toStringAsFixed(2),
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
                                    Format.convertTo(hls2, 2),
                                    //hls2.toStringAsFixed(2),
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
                                    Format.convertTo(hls3, 2),
                                    //hls3.toStringAsFixed(2),
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
                                    Format.convertTo(hls4, 2),
                                    //hls4.toStringAsFixed(2),
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
                                    Format.convertTo(hls5, 2),
                                    //hls5.toStringAsFixed(2),
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
                                  height: screenHeight * 0.05,
                                  child: const Center(
                                    child: Text(
                                      "Pengeluaran per Kapita (juta rp)",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  child: Text(
                                    Format.convertTo(ppp1, 3),
                                    //ppp1.toStringAsFixed(3),
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
                                    Format.convertTo(ppp2, 3),
                                    //ppp2.toStringAsFixed(3),
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
                                    Format.convertTo(ppp3, 3),
                                    //ppp3.toStringAsFixed(3),
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
                                    Format.convertTo(ppp4, 3),
                                    //ppp4.toStringAsFixed(3),
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
                                    Format.convertTo(ppp5, 3),
                                    //ppp5.toStringAsFixed(3),
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
                                      "IPM",
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
                                    top: 9,
                                    right: 0,
                                  ),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(ipmlf1, 2),
                                      //ipmlf1.toStringAsFixed(2),
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
                                    top: 9,
                                    right: 0,
                                  ),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(ipmlf2, 2),
                                      //ipmlf2.toStringAsFixed(2),
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
                                    top: 9,
                                    right: 0,
                                  ),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(ipmlf3, 2),
                                      //ipmlf3.toStringAsFixed(2),
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
                                    top: 9,
                                    right: 0,
                                  ),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(ipmlf4, 2),
                                      //ipmlf4.toStringAsFixed(2),
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
                                    top: 9,
                                    right: 0,
                                  ),
                                  child: SizedBox(
                                    child: Text(
                                      Format.convertTo(ipmlf5, 2),
                                      //ipmlf5.toStringAsFixed(2),
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
                      const Divider(
                        color: Colors.white,
                        height: 5,
                        thickness: 5,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CustomPageRoute(
              child: const BodyGrafikIpm(),
              direction: AxisDirection.left,
            ),
          );
        },
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
