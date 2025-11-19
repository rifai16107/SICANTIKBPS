import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_tkk.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class AkTKK extends StatefulWidget {
  const AkTKK({super.key});

  @override
  State<AkTKK> createState() => _AkTKKState();
}

class _AkTKKState extends State<AkTKK> {
  RepositoryTkk repositoryTkk = RepositoryTkk();
  final double width = 7;

  late List<_ChartData> data;
  late TooltipBehavior tooltip;

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
    // ignore: unused_local_variable
    final screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TINGKAT KESEMPATAN KERJA',
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
      body: FutureBuilder(
        //padding: const EdgeInsets.all(2),
        //child: FutureBuilder(
        future: repositoryTkk.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isitkk = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String th5 =
                    isitkk[index = 4].created_at[0] +
                    isitkk[index = 4].created_at[1] +
                    isitkk[index = 4].created_at[2] +
                    isitkk[index = 4].created_at[3];
                String th4 =
                    isitkk[index = 3].created_at[0] +
                    isitkk[index = 3].created_at[1] +
                    isitkk[index = 3].created_at[2] +
                    isitkk[index = 3].created_at[3];
                String th3 =
                    isitkk[index = 2].created_at[0] +
                    isitkk[index = 2].created_at[1] +
                    isitkk[index = 2].created_at[2] +
                    isitkk[index = 2].created_at[3];
                String th2 =
                    isitkk[index = 1].created_at[0] +
                    isitkk[index = 1].created_at[1] +
                    isitkk[index = 1].created_at[2] +
                    isitkk[index = 1].created_at[3];
                String th1 =
                    isitkk[index = 0].created_at[0] +
                    isitkk[index = 0].created_at[1] +
                    isitkk[index = 0].created_at[2] +
                    isitkk[index = 0].created_at[3];

                double lk1 = double.parse(isitkk[index = 0].lk);
                double lk2 = double.parse(isitkk[index = 1].lk);
                double lk3 = double.parse(isitkk[index = 2].lk);
                double lk4 = double.parse(isitkk[index = 3].lk);
                double lk5 = double.parse(isitkk[index = 4].lk);

                double pr1 = double.parse(isitkk[index = 0].pr);
                double pr2 = double.parse(isitkk[index = 1].pr);
                double pr3 = double.parse(isitkk[index = 2].pr);
                double pr4 = double.parse(isitkk[index = 3].pr);
                double pr5 = double.parse(isitkk[index = 4].pr);

                double lkpr1 = double.parse(isitkk[index = 0].lk_pr);
                double lkpr2 = double.parse(isitkk[index = 1].lk_pr);
                double lkpr3 = double.parse(isitkk[index = 2].lk_pr);
                double lkpr4 = double.parse(isitkk[index = 3].lk_pr);
                double lkpr5 = double.parse(isitkk[index = 4].lk_pr);

                toString();
                data = [
                  _ChartData(th1, lk1, pr1, lkpr1),
                  _ChartData(th2, lk2, pr2, lkpr2),
                  _ChartData(th3, lk3, pr3, lkpr3),
                  _ChartData(th4, lk4, pr4, lkpr4),
                  _ChartData(th5, lk5, pr5, lkpr5),
                ];

                tooltip = TooltipBehavior(enable: true);

                return SizedBox(
                  //color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 2,
                        ),
                        child: Text(
                          "Tingkat Kesempatan Kerja (TKK) di Kabupaten Cilacap Menurut Jenis Kelamin, $th1-$th5",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  height: screenHeight * 0.065,
                                  color: Colors.orange,
                                  child: const Center(
                                    child: Text(
                                      "Jenis Kelamin",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
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
                                  height: screenHeight * 0.065,
                                  child: Center(
                                    child: Text(
                                      th1.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
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
                                  color: Colors.orange,
                                  height: screenHeight * 0.065,
                                  child: Center(
                                    child: Text(
                                      th2.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
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
                                  color: Colors.orange,
                                  height: screenHeight * 0.065,
                                  child: Center(
                                    child: Text(
                                      th3.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
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
                                  color: Colors.orange,
                                  height: screenHeight * 0.065,
                                  child: Center(
                                    child: Text(
                                      th4.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
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
                                  color: Colors.orange,
                                  height: screenHeight * 0.065,
                                  child: Center(
                                    child: Text(
                                      th5.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
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
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 0,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: const Text(
                                    "Laki-Laki",
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
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    lk1.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    lk2.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    lk3.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    lk4.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    lk5.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 0,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: const Text(
                                    "Perempuan",
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
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    pr1.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    pr2.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    pr3.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    pr4.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.05,
                                  child: Text(
                                    pr5.toStringAsFixed(2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.orange,
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.06,
                                  child: const Center(
                                    child: Text(
                                      "Lk + Pr",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.orange,
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.06,
                                  child: Text(
                                    lkpr1.toStringAsFixed(2),
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.orange,
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.06,
                                  child: Text(
                                    lkpr2.toStringAsFixed(2),
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.orange,
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.06,
                                  child: Text(
                                    lkpr3.toStringAsFixed(2),
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.orange,
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.06,
                                  child: Text(
                                    lkpr4.toStringAsFixed(2),
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.orange,
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 5,
                                    right: 5,
                                  ),
                                  height: screenHeight * 0.06,
                                  child: Text(
                                    lkpr5.toStringAsFixed(2),
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
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
                                        " Sumber Data : Survei Angkatan Kerja Nasional",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      indent: 3,
                                      color: Colors.transparent,
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.605,
                                      width: screenWidth,
                                      child: SfCartesianChart(
                                        title: ChartTitle(
                                          text:
                                              'Tingkat Kesempatan Kerja (TKK) di Kabupaten Cilacap Menurut Jenis Kelamin, $th1-$th5',
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
                                          maximum: 120,
                                          interval: 30,
                                        ),
                                        tooltipBehavior: tooltip,
                                        series: <CartesianSeries>[
                                          ColumnSeries<_ChartData, String>(
                                            dataSource: data,
                                            xValueMapper:
                                                (_ChartData data, _) => data.x,
                                            yValueMapper:
                                                (_ChartData data, _) => data.y,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: false,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                            name: 'TKK Laki-Laki',
                                            color: const Color.fromARGB(
                                              255,
                                              206,
                                              196,
                                              56,
                                            ),
                                          ),
                                          ColumnSeries<_ChartData, String>(
                                            dataSource: data,
                                            xValueMapper:
                                                (_ChartData data, _) => data.x,
                                            yValueMapper:
                                                (_ChartData data, _) => data.y1,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: false,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                            name: 'TKK Perempuan',
                                            color: const Color.fromARGB(
                                              255,
                                              170,
                                              240,
                                              80,
                                            ),
                                          ),
                                          LineSeries<_ChartData, String>(
                                            dataSource: data,
                                            xValueMapper:
                                                (_ChartData data, _) => data.x,
                                            yValueMapper:
                                                (_ChartData data, _) => data.y2,
                                            // Sorting based on the specified field
                                            //sortingOrder: SortingOrder.descending,
                                            //sortFieldValueMapper: (_ChartData data, _) =>
                                            //data.y,
                                            markerSettings: const MarkerSettings(
                                              isVisible: true,
                                              shape: DataMarkerType.diamond),
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                  // Renders the data label
                                                  isVisible: true,
                                                  textStyle: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                             width: 3,
                                            name: 'TKK Lk+Pr',
                                            color: const Color.fromARGB(255, 192, 47, 22),
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
                    ],
                  ),
                );
              },
            );
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Data Belum Tersedia"));
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 1),
            );
          }
        },
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.y1, this.y2);
  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}
