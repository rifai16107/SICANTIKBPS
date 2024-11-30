import 'package:bps_cilacap/restAPI/repository_series_inflasi.dart';
import 'package:flutter/material.dart';

class SeriesInflasiA extends StatefulWidget {
  const SeriesInflasiA({super.key});

  @override
  State<SeriesInflasiA> createState() => _SeriesInflasiAState();
}

RepositorySeriesInflasi repositoryseriesinflasi = RepositorySeriesInflasi();

class _SeriesInflasiAState extends State<SeriesInflasiA> {
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
                // Tahun n-2
                String bulan = isiseriesinflasi[index = 0].bulan;
                String bulan1 = isiseriesinflasi[index = 1].bulan;
                String bulan2 = isiseriesinflasi[index = 2].bulan;
                String bulan3 = isiseriesinflasi[index = 3].bulan;
                String bulan4 = isiseriesinflasi[index = 4].bulan;
                String bulan5 = isiseriesinflasi[index = 5].bulan;
                String bulan6 = isiseriesinflasi[index = 6].bulan;
                String bulan7 = isiseriesinflasi[index = 7].bulan;
                String bulan8 = isiseriesinflasi[index = 8].bulan;
                String bulan9 = isiseriesinflasi[index = 9].bulan;
                String bulan10 = isiseriesinflasi[index = 10].bulan;
                String bulan11 = isiseriesinflasi[index = 11].bulan;

                String ihk = isiseriesinflasi[index = 0].ihk;
                String ihk1 = isiseriesinflasi[index = 1].ihk;
                String ihk2 = isiseriesinflasi[index = 2].ihk;
                String ihk3 = isiseriesinflasi[index = 3].ihk;
                String ihk4 = isiseriesinflasi[index = 4].ihk;
                String ihk5 = isiseriesinflasi[index = 5].ihk;
                String ihk6 = isiseriesinflasi[index = 6].ihk;
                String ihk7 = isiseriesinflasi[index = 7].ihk;
                String ihk8 = isiseriesinflasi[index = 8].ihk;
                String ihk9 = isiseriesinflasi[index = 9].ihk;
                String ihk10 = isiseriesinflasi[index = 10].ihk;
                String ihk11 = isiseriesinflasi[index = 11].ihk;

                String inflasi = isiseriesinflasi[index = 0].inflasi;
                String inflasi1 = isiseriesinflasi[index = 1].inflasi;
                String inflasi2 = isiseriesinflasi[index = 2].inflasi;
                String inflasi3 = isiseriesinflasi[index = 3].inflasi;
                String inflasi4 = isiseriesinflasi[index = 4].inflasi;
                String inflasi5 = isiseriesinflasi[index = 5].inflasi;
                String inflasi6 = isiseriesinflasi[index = 6].inflasi;
                String inflasi7 = isiseriesinflasi[index = 7].inflasi;
                String inflasi8 = isiseriesinflasi[index = 8].inflasi;
                String inflasi9 = isiseriesinflasi[index = 9].inflasi;
                String inflasi10 = isiseriesinflasi[index = 10].inflasi;
                String inflasi11 = isiseriesinflasi[index = 11].inflasi;

                String yod = isiseriesinflasi[index = 0].yod;
                String yod1 = isiseriesinflasi[index = 1].yod;
                String yod2 = isiseriesinflasi[index = 2].yod;
                String yod3 = isiseriesinflasi[index = 3].yod;
                String yod4 = isiseriesinflasi[index = 4].yod;
                String yod5 = isiseriesinflasi[index = 5].yod;
                String yod6 = isiseriesinflasi[index = 6].yod;
                String yod7 = isiseriesinflasi[index = 7].yod;
                String yod8 = isiseriesinflasi[index = 8].yod;
                String yod9 = isiseriesinflasi[index = 9].yod;
                String yod10 = isiseriesinflasi[index = 10].yod;
                String yod11 = isiseriesinflasi[index = 11].yod;

                String yoy = isiseriesinflasi[index = 0].yoy;
                String yoy1 = isiseriesinflasi[index = 1].yoy;
                String yoy2 = isiseriesinflasi[index = 2].yoy;
                String yoy3 = isiseriesinflasi[index = 3].yoy;
                String yoy4 = isiseriesinflasi[index = 4].yoy;
                String yoy5 = isiseriesinflasi[index = 5].yoy;
                String yoy6 = isiseriesinflasi[index = 6].yoy;
                String yoy7 = isiseriesinflasi[index = 7].yoy;
                String yoy8 = isiseriesinflasi[index = 8].yoy;
                String yoy9 = isiseriesinflasi[index = 9].yoy;
                String yoy10 = isiseriesinflasi[index = 10].yoy;
                String yoy11 = isiseriesinflasi[index = 11].yoy;

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
                                      bulan,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy,
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
                                      bulan1,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk1,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi1,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod1,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy1,
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
                                      bulan2,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk2,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi2,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod2,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy2,
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
                                      bulan3,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk3,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi3,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod3,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy3,
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
                                      bulan4,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk4,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi4,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod4,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy4,
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
                                      bulan5,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk5,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi5,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod5,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy5,
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
                                      bulan6,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk6,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi6,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod6,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy6,
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
                                      bulan7,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk7,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi7,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod7,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy7,
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
                                      bulan8,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk8,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi8,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod8,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy8,
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
                                      bulan9,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk9,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi9,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod9,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy9,
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
                                      bulan10,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk10,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi10,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod10,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy10,
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
                                      bulan11,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk11,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi11,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod11,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy11,
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
