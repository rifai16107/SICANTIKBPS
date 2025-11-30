import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class IpmKabContent extends StatefulWidget {
  const IpmKabContent({Key? key}) : super(key: key);

  @override
  _IpmKabContentState createState() => _IpmKabContentState();
}

class _IpmKabContentState extends State<IpmKabContent> {
  RepositoryIpm repositoryipm = RepositoryIpm();
  late List<_ChartData> data;
  late List<_ChartData1> data1;
  late List<_ChartData2> data2;
  late List<_ChartData3> data3;
  late TooltipBehavior tooltip;
  late TooltipBehavior tooltip1;
  late TooltipBehavior tooltip2;
  late TooltipBehavior tooltip3;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
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
                String tahun1 = isiipm[index = 15].tahun;
                String tahun2 = isiipm[index = 16].tahun;
                String tahun3 = isiipm[index = 17].tahun;
                String tahun4 = isiipm[index = 18].tahun;
                String tahun5 = isiipm[index = 19].tahun;

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
                toString();
                data = [
                  _ChartData(tahun1, ipmlf1),
                  _ChartData(tahun2, ipmlf2),
                  _ChartData(tahun3, ipmlf3),
                  _ChartData(tahun4, ipmlf4),
                  _ChartData(tahun5, ipmlf5),
                ];
                data1 = [
                  _ChartData1(tahun1, uhhlf1),
                  _ChartData1(tahun2, uhhlf2),
                  _ChartData1(tahun3, uhhlf3),
                  _ChartData1(tahun4, uhhlf4),
                  _ChartData1(tahun5, uhhlf5),
                ];
                data2 = [
                  _ChartData2(tahun1, hls1, rls1),
                  _ChartData2(tahun2, hls2, rls2),
                  _ChartData2(tahun3, hls3, rls3),
                  _ChartData2(tahun4, hls4, rls4),
                  _ChartData2(tahun5, hls5, rls5),
                ];
                data3 = [
                  _ChartData3(tahun1, ppp1),
                  _ChartData3(tahun2, ppp2),
                  _ChartData3(tahun3, ppp3),
                  _ChartData3(tahun4, ppp4),
                  _ChartData3(tahun5, ppp5),
                ];
                tooltip = TooltipBehavior(enable: true);
                tooltip1 = TooltipBehavior(enable: true);
                tooltip2 = TooltipBehavior(enable: true);
                tooltip3 = TooltipBehavior(enable: true);

                return SizedBox(
                  //height: screenHeight,
                  //color: Colors.transparent,
                  child: Column(
                    children: [
                      // IPM UHH LFSP2020
                      const Divider(
                        color: Colors.white,
                        height: 2,
                        thickness: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 2,
                        ),
                        child: Text(
                          'Indeks Pembangunan Manusia Kabupaten Cilacap\n' 
                          'Tahun $tahun1-$tahun5',
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
                                  color: Colors.orange,
                                  child: const Center(
                                    child: Text(
                                      'IPM &\n'
                                      'Komponennya',
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
                                  color: Colors.orange,
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
                                  color: Colors.orange,
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
                                  color: Colors.orange,
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
                                  color: Colors.orange,
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
                                  color: Colors.orange,
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
                                  color: Colors.orange,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 4,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "IPM",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  color: Colors.orange,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
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
                                  color: Colors.orange,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
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
                                  color: Colors.orange,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
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
                                  color: Colors.orange,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
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
                                  color: Colors.orange,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
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
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                        left: 4,
                                        bottom: 0,
                                      ),
                                      child: const Text(
                                        'Sumber Data :\n'
                                        'Survei Sosial Ekonomi Nasional (Susenas)\n'
                                        'Catatan: UHH dihitung dari hasil LF SP2020)',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      indent: 3,
                                      color: Colors.transparent,
                                    ),
                                    //Grafik IPM
                                    SizedBox(
                                      height: screenHeight * 0.40,
                                      width: screenWidth,
                                      child: SfCartesianChart(
                                        title: ChartTitle(
                                          text:
                                              'Indeks Pembangunan Manusia (IPM) Kabupaten Cilacap\n'
                                              '$tahun1-$tahun5',
                                          // Aligns the chart title to left
                                          alignment: ChartAlignment.center,
                                          textStyle: const TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              10,
                                              10,
                                              10,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                          ),
                                        ),
                                        primaryXAxis: CategoryAxis(),
                                        legend: Legend(
                                          // Visibility of legend
                                          overflowMode:
                                              LegendItemOverflowMode.wrap,
                                          textStyle: const TextStyle(
                                            fontSize: 11,
                                          ),
                                          isVisible: false,
                                          position: LegendPosition.bottom,
                                        ),
                                        primaryYAxis: NumericAxis(
                                          majorGridLines: const MajorGridLines(
                                            width: 0,
                                          ),
                                          minimum: 0,
                                          maximum: 100,
                                          interval: 20,
                                        ),
                                        tooltipBehavior: tooltip,
                                        series: <CartesianSeries>[
                                          LineSeries<_ChartData, String>(
                                            dataSource: data,
                                            xValueMapper:
                                                (_ChartData data, _) => data.x,
                                            yValueMapper:
                                                (_ChartData data, _) => data.y,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            markerSettings:
                                                const MarkerSettings(
                                                  isVisible: true,
                                                  shape: DataMarkerType.diamond,
                                                ),
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: true,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                            width: 3,
                                            name: 'IPM',
                                            color: const Color.fromARGB(
                                              255,
                                              6,
                                              37,
                                              211,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      indent: 3,
                                      color: Colors.transparent,
                                    ),
                                    const Divider(
                                      color: Color.fromARGB(255, 233, 215, 215),
                                      height: 10,
                                      thickness: 4,
                                    ),
                                    //Grafik UHH
                                    SizedBox(
                                      height: screenHeight * 0.40,
                                      width: screenWidth,
                                      child: SfCartesianChart(
                                        title: ChartTitle(
                                          text:
                                              'Usia Harapan Hidup (UHH) Kabupaten Cilacap\n'
                                              '$tahun1-$tahun5 (tahun)',
                                          // Aligns the chart title to left
                                          alignment: ChartAlignment.center,
                                          textStyle: const TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              10,
                                              10,
                                              10,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                          ),
                                        ),
                                        primaryXAxis: CategoryAxis(),
                                        legend: Legend(
                                          // Visibility of legend
                                          overflowMode:
                                              LegendItemOverflowMode.wrap,
                                          textStyle: const TextStyle(
                                            fontSize: 11,
                                          ),
                                          isVisible: false,
                                          position: LegendPosition.bottom,
                                        ),
                                        primaryYAxis: NumericAxis(
                                          majorGridLines: const MajorGridLines(
                                            width: 0,
                                          ),
                                          minimum: 0,
                                          maximum: 100,
                                          interval: 20,
                                        ),
                                        tooltipBehavior: tooltip1,
                                        series: <CartesianSeries>[
                                          LineSeries<_ChartData1, String>(
                                            dataSource: data1,
                                            xValueMapper:
                                                (_ChartData1 data1, _) =>
                                                    data1.x,
                                            yValueMapper:
                                                (_ChartData1 data1, _) =>
                                                    data1.y,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            markerSettings:
                                                const MarkerSettings(
                                                  isVisible: true,
                                                  shape: DataMarkerType.diamond,
                                                ),
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: true,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                            width: 3,
                                            name: 'UHH',
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              168,
                                              89,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      indent: 3,
                                      color: Colors.transparent,
                                    ),
                                    const Divider(
                                      color: Color.fromARGB(255, 233, 215, 215),
                                      height: 10,
                                      thickness: 4,
                                    ),
                                    //Grafik HLS dan RLS
                                    SizedBox(
                                      height: screenHeight * 0.45,
                                      width: screenWidth,
                                      child: SfCartesianChart(
                                        title: ChartTitle(
                                          text:
                                              'Harapan Lama Sekolah (HLS) dan Rata-Rata Lama Sekolah (RLS)\n'
                                              'Kabupaten Cilacap $tahun1-$tahun5 (tahun)',
                                          // Aligns the chart title to left
                                          alignment: ChartAlignment.center,
                                          textStyle: const TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              10,
                                              10,
                                              10,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                          ),
                                        ),
                                        primaryXAxis: CategoryAxis(),
                                        legend: Legend(
                                          // Visibility of legend
                                          overflowMode:
                                              LegendItemOverflowMode.wrap,
                                          textStyle: const TextStyle(
                                            fontSize: 11,
                                          ),
                                          isVisible: true,
                                          position: LegendPosition.bottom,
                                        ),
                                        primaryYAxis: NumericAxis(
                                          majorGridLines: const MajorGridLines(
                                            width: 0,
                                          ),
                                          minimum: 0,
                                          maximum: 20,
                                          interval: 2,
                                        ),
                                        tooltipBehavior: tooltip2,
                                        series: <CartesianSeries>[
                                          ColumnSeries<_ChartData2, String>(
                                            dataSource: data2,
                                            xValueMapper:
                                                (_ChartData2 data2, _) =>
                                                    data2.x,
                                            yValueMapper:
                                                (_ChartData2 data2, _) =>
                                                    data2.y,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: true,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                            name: 'HLS',
                                            color: const Color.fromARGB(
                                              255,
                                              15,
                                              197,
                                              8,
                                            ),
                                          ),
                                          ColumnSeries<_ChartData2, String>(
                                            dataSource: data2,
                                            xValueMapper:
                                                (_ChartData2 data2, _) =>
                                                    data2.x,
                                            yValueMapper:
                                                (_ChartData2 data2, _) =>
                                                    data2.y1,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: true,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                            name: 'RLS',
                                            color: const Color.fromARGB(
                                              255,
                                              238,
                                              162,
                                              22,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: const Text(
                                        " Sentuh legenda untuk mengaktifkan/non aktifkan series",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      indent: 3,
                                      color: Color.fromARGB(0, 43, 41, 41),
                                    ),
                                    const Divider(
                                      color: Color.fromARGB(255, 233, 215, 215),
                                      height: 10,
                                      thickness: 4,
                                    ),
                                    //Grafik PPP
                                    SizedBox(
                                      height: screenHeight * 0.40,
                                      width: screenWidth,
                                      child: SfCartesianChart(
                                        title: ChartTitle(
                                          text:
                                              'Pengeluaran Riil Kabupaten Cilacap per Kapita\n'
                                              'per Tahun yang Disuaikan (ribu rupiah) $tahun1-$tahun5',
                                          // Aligns the chart title to left
                                          alignment: ChartAlignment.center,
                                          textStyle: const TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              10,
                                              10,
                                              10,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                          ),
                                        ),
                                        primaryXAxis: CategoryAxis(),
                                        legend: Legend(
                                          // Visibility of legend
                                          overflowMode:
                                              LegendItemOverflowMode.wrap,
                                          textStyle: const TextStyle(
                                            fontSize: 11,
                                          ),
                                          isVisible: false,
                                          position: LegendPosition.bottom,
                                        ),
                                        primaryYAxis: NumericAxis(
                                          majorGridLines: const MajorGridLines(
                                            width: 0,
                                          ),
                                          minimum: 0,
                                          maximum: 20,
                                          interval: 5,
                                        ),
                                        tooltipBehavior: tooltip3,
                                        series: <CartesianSeries>[
                                          LineSeries<_ChartData3, String>(
                                            dataSource: data3,
                                            xValueMapper:
                                                (_ChartData3 data3, _) =>
                                                    data3.x,
                                            yValueMapper:
                                                (_ChartData3 data3, _) =>
                                                    data3.y,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            markerSettings:
                                                const MarkerSettings(
                                                  isVisible: true,
                                                  shape: DataMarkerType.diamond,
                                                ),
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: true,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                            width: 3,
                                            name: 'Pengeluaran per Kapita',
                                            color: const Color.fromARGB(
                                              255,
                                              192,
                                              34,
                                              6,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 15,
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
    );
  }
}

//ipm
class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double? y;
}

//uhh
class _ChartData1 {
  _ChartData1(this.x, this.y);
  final String x;
  final double? y;
}

//HLS dan RLS
class _ChartData2 {
  _ChartData2(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}

class _ChartData3 {
  _ChartData3(this.x, this.y);
  final String x;
  final double? y;
}

// ignore_for_file: library_private_types_in_public_api, prefer_interpolation_to_compose_strings
