import 'package:bps_cilacap/restAPI/repository_series_inflasi.dart';
import 'package:flutter/material.dart';

class SeriesInflasiB extends StatefulWidget {
  const SeriesInflasiB({super.key});

  @override
  State<SeriesInflasiB> createState() => _SeriesInflasiBState();
}

RepositorySeriesInflasi repositoryseriesinflasi = RepositorySeriesInflasi();

class _SeriesInflasiBState extends State<SeriesInflasiB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryseriesinflasi.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiseriesinflasi = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // Tahun n-1

                String bulan12 = isiseriesinflasi[index = 12].bulan;
                String bulan13 = isiseriesinflasi[index = 13].bulan;
                String bulan14 = isiseriesinflasi[index = 14].bulan;
                String bulan15 = isiseriesinflasi[index = 15].bulan;
                String bulan16 = isiseriesinflasi[index = 16].bulan;
                String bulan17 = isiseriesinflasi[index = 17].bulan;
                String bulan18 = isiseriesinflasi[index = 18].bulan;
                String bulan19 = isiseriesinflasi[index = 19].bulan;
                String bulan20 = isiseriesinflasi[index = 20].bulan;
                String bulan21 = isiseriesinflasi[index = 21].bulan;
                String bulan22 = isiseriesinflasi[index = 22].bulan;
                String bulan23 = isiseriesinflasi[index = 23].bulan;

                String ihk12 = isiseriesinflasi[index = 12].ihk;
                String ihk13 = isiseriesinflasi[index = 13].ihk;
                String ihk14 = isiseriesinflasi[index = 14].ihk;
                String ihk15 = isiseriesinflasi[index = 15].ihk;
                String ihk16 = isiseriesinflasi[index = 16].ihk;
                String ihk17 = isiseriesinflasi[index = 17].ihk;
                String ihk18 = isiseriesinflasi[index = 18].ihk;
                String ihk19 = isiseriesinflasi[index = 19].ihk;
                String ihk20 = isiseriesinflasi[index = 20].ihk;
                String ihk21 = isiseriesinflasi[index = 21].ihk;
                String ihk22 = isiseriesinflasi[index = 22].ihk;
                String ihk23 = isiseriesinflasi[index = 23].ihk;

                String inflasi12 = isiseriesinflasi[index = 12].inflasi;
                String inflasi13 = isiseriesinflasi[index = 13].inflasi;
                String inflasi14 = isiseriesinflasi[index = 14].inflasi;
                String inflasi15 = isiseriesinflasi[index = 15].inflasi;
                String inflasi16 = isiseriesinflasi[index = 16].inflasi;
                String inflasi17 = isiseriesinflasi[index = 17].inflasi;
                String inflasi18 = isiseriesinflasi[index = 18].inflasi;
                String inflasi19 = isiseriesinflasi[index = 19].inflasi;
                String inflasi20 = isiseriesinflasi[index = 20].inflasi;
                String inflasi21 = isiseriesinflasi[index = 21].inflasi;
                String inflasi22 = isiseriesinflasi[index = 22].inflasi;
                String inflasi23 = isiseriesinflasi[index = 23].inflasi;

                String yod12 = isiseriesinflasi[index = 12].yod;
                String yod13 = isiseriesinflasi[index = 13].yod;
                String yod14 = isiseriesinflasi[index = 14].yod;
                String yod15 = isiseriesinflasi[index = 15].yod;
                String yod16 = isiseriesinflasi[index = 16].yod;
                String yod17 = isiseriesinflasi[index = 17].yod;
                String yod18 = isiseriesinflasi[index = 18].yod;
                String yod19 = isiseriesinflasi[index = 19].yod;
                String yod20 = isiseriesinflasi[index = 20].yod;
                String yod21 = isiseriesinflasi[index = 21].yod;
                String yod22 = isiseriesinflasi[index = 22].yod;
                String yod23 = isiseriesinflasi[index = 23].yod;

                String yoy12 = isiseriesinflasi[index = 12].yoy;
                String yoy13 = isiseriesinflasi[index = 13].yoy;
                String yoy14 = isiseriesinflasi[index = 14].yoy;
                String yoy15 = isiseriesinflasi[index = 15].yoy;
                String yoy16 = isiseriesinflasi[index = 16].yoy;
                String yoy17 = isiseriesinflasi[index = 17].yoy;
                String yoy18 = isiseriesinflasi[index = 18].yoy;
                String yoy19 = isiseriesinflasi[index = 19].yoy;
                String yoy20 = isiseriesinflasi[index = 20].yoy;
                String yoy21 = isiseriesinflasi[index = 21].yoy;
                String yoy22 = isiseriesinflasi[index = 22].yoy;
                String yoy23 = isiseriesinflasi[index = 23].yoy;

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.08,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Bulan",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.08,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "IHK",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.08,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: Column(
                                        children: const [
                                          Text(
                                            "Inflasi",
                                             style: TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(
                                            "M to M",
                                             style: TextStyle(color: Colors.white),
                                          ),
                                          
                                        ],
                                      ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.08,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: Column(
                                        children: const [
                                          Text(
                                            "Inflasi",
                                             style: TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(
                                            "Y to D",
                                             style: TextStyle(color: Colors.white),
                                          ),
                                          
                                        ],
                                      ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.08,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: Column(
                                        children: const [
                                          Text(
                                            "Inflasi",
                                             style: TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(
                                            "Y on Y",
                                             style: TextStyle(color: Colors.white),
                                          ),
                                          
                                        ],
                                      ),
                                  ),
                                ),
                              ],
                            ),
                            //
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan12,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk12,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi12,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod12,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy12,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan13,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk13,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi13,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod13,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan14,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk14,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi14,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod14,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan15,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk15,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(inflasi15),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod15,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan16,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk16,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi16,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod16,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan17,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk17,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi17,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod17,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan18,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk18,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi18,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod18,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan19,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk19,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi19,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod19,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy19,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan20,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk20,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi20,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod20,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan21,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk21,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi21,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod21,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy21,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan22,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk22,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi22,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod22,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Text(
                                      bulan23,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk23,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi23,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod23,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy23,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 3,
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
          } else {
            return const Center(
                child: CircularProgressIndicator(strokeWidth: 3));
          }
        },
      ),
    );
  }
}
