import 'package:bps_cilacap/restAPI/repository_series_inflasi.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/grafik_inflasi/body_grafik_inflasi_series.dart';
import 'package:flutter/material.dart';

class SeriesInflasiC extends StatefulWidget {
  const SeriesInflasiC({super.key});

  @override
  State<SeriesInflasiC> createState() => _SeriesInflasiCState();
}

RepositorySeriesInflasi repositoryseriesinflasi = RepositorySeriesInflasi();

class _SeriesInflasiCState extends State<SeriesInflasiC> {
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
                // Tahun n

                String bulan24 = isiseriesinflasi[index = 24].bulan;
                String bulan25 = isiseriesinflasi[index = 25].bulan;
                String bulan26 = isiseriesinflasi[index = 26].bulan;
                String bulan27 = isiseriesinflasi[index = 27].bulan;
                String bulan28 = isiseriesinflasi[index = 28].bulan;
                String bulan29 = isiseriesinflasi[index = 29].bulan;
                String bulan30 = isiseriesinflasi[index = 30].bulan;
                String bulan31 = isiseriesinflasi[index = 31].bulan;
                String bulan32 = isiseriesinflasi[index = 32].bulan;
                String bulan33 = isiseriesinflasi[index = 33].bulan;
                String bulan34 = isiseriesinflasi[index = 34].bulan;
                String bulan35 = isiseriesinflasi[index = 35].bulan;

                String ihk24 = isiseriesinflasi[index = 24].ihk;
                String ihk25 = isiseriesinflasi[index = 25].ihk;
                String ihk26 = isiseriesinflasi[index = 26].ihk;
                String ihk27 = isiseriesinflasi[index = 27].ihk;
                String ihk28 = isiseriesinflasi[index = 28].ihk;
                String ihk29 = isiseriesinflasi[index = 29].ihk;
                String ihk30 = isiseriesinflasi[index = 30].ihk;
                String ihk31 = isiseriesinflasi[index = 31].ihk;
                String ihk32 = isiseriesinflasi[index = 32].ihk;
                String ihk33 = isiseriesinflasi[index = 33].ihk;
                String ihk34 = isiseriesinflasi[index = 34].ihk;
                String ihk35 = isiseriesinflasi[index = 35].ihk;

                String inflasi24 = isiseriesinflasi[index = 24].inflasi;
                String inflasi25 = isiseriesinflasi[index = 25].inflasi;
                String inflasi26 = isiseriesinflasi[index = 26].inflasi;
                String inflasi27 = isiseriesinflasi[index = 27].inflasi;
                String inflasi28 = isiseriesinflasi[index = 28].inflasi;
                String inflasi29 = isiseriesinflasi[index = 29].inflasi;
                String inflasi30 = isiseriesinflasi[index = 30].inflasi;
                String inflasi31 = isiseriesinflasi[index = 31].inflasi;
                String inflasi32 = isiseriesinflasi[index = 32].inflasi;
                String inflasi33 = isiseriesinflasi[index = 33].inflasi;
                String inflasi34 = isiseriesinflasi[index = 34].inflasi;
                String inflasi35 = isiseriesinflasi[index = 35].inflasi;

                String yod24 = isiseriesinflasi[index = 24].yod;
                String yod25 = isiseriesinflasi[index = 25].yod;
                String yod26 = isiseriesinflasi[index = 26].yod;
                String yod27 = isiseriesinflasi[index = 27].yod;
                String yod28 = isiseriesinflasi[index = 28].yod;
                String yod29 = isiseriesinflasi[index = 29].yod;
                String yod30 = isiseriesinflasi[index = 30].yod;
                String yod31 = isiseriesinflasi[index = 31].yod;
                String yod32 = isiseriesinflasi[index = 32].yod;
                String yod33 = isiseriesinflasi[index = 33].yod;
                String yod34 = isiseriesinflasi[index = 34].yod;
                String yod35 = isiseriesinflasi[index = 35].yod;

                String yoy24 = isiseriesinflasi[index = 24].yoy;
                String yoy25 = isiseriesinflasi[index = 25].yoy;
                String yoy26 = isiseriesinflasi[index = 26].yoy;
                String yoy27 = isiseriesinflasi[index = 27].yoy;
                String yoy28 = isiseriesinflasi[index = 28].yoy;
                String yoy29 = isiseriesinflasi[index = 29].yoy;
                String yoy30 = isiseriesinflasi[index = 30].yoy;
                String yoy31 = isiseriesinflasi[index = 31].yoy;
                String yoy32 = isiseriesinflasi[index = 32].yoy;
                String yoy33 = isiseriesinflasi[index = 33].yoy;
                String yoy34 = isiseriesinflasi[index = 34].yoy;
                String yoy35 = isiseriesinflasi[index = 35].yoy;

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
                                      bulan24,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk24,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(inflasi24),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod24,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy24,
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
                                      bulan25,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk25,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi25,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod25,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy25,
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
                                      bulan26,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk26,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi26,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod26,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy26,
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
                                      bulan27,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk27,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi27,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod27,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy27,
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
                                      bulan28,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk28,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi28,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod28,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy28,
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
                                      bulan29,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk29,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi29,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod29,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy29,
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
                                      bulan30,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk30,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi30,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod30,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy30,
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
                                      bulan31,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk31,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi31,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod31,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy31,
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
                                      bulan32,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk32,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi32,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod32,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy32,
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
                                      bulan33,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk33,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi33,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod33,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy33,
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
                                      bulan34,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk34,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi34,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod34,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy34,
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
                                      bulan35,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ihk35,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      inflasi35,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yod35,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yoy35,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const Divider(
                              thickness: 2,
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Catatan:",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Tahun 2022 dan 2023 menggunakan tahun dasar 2018",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.normal,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Tahun 2024 menggunakan tahun dasar 2022",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.normal,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              CustomPageRoute(
                  child: const BodyGrafikInflasiSeries(),
                  direction: AxisDirection.left));
        },
        mini: true,
        child: const Icon(Icons.line_axis),
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
