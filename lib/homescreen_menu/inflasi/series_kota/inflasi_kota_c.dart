import 'package:bps_cilacap/restAPI/repository_inflasi_kota.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/grafik_inflasi/body_grafik_inflasi_kota.dart';
import 'package:bps_cilacap/format_angka.dart';

class InflasiKotaC extends StatefulWidget {
  const InflasiKotaC({super.key});

  @override
  State<InflasiKotaC> createState() => _InflasiKotaCState();
}

RepositoryInflasiKota repositoryinflasikota = RepositoryInflasiKota();

class _InflasiKotaCState extends State<InflasiKotaC> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryinflasikota.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiinflasikota = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String nama1 = isiinflasikota[index = 16].nama;
                String nama2 = isiinflasikota[index = 17].nama;
                String nama3 = isiinflasikota[index = 18].nama;
                String nama4 = isiinflasikota[index = 19].nama;
                String nama5 = isiinflasikota[index = 20].nama;
                String nama6 = isiinflasikota[index = 21].nama;
                String nama7 = isiinflasikota[index = 22].nama;
                String nama8 = isiinflasikota[index = 23].nama;
                //3 kab baru
                String nama9 = isiinflasikota[index = 30].nama;
                String nama10 = isiinflasikota[index = 31].nama;
                String nama11 = isiinflasikota[index = 32].nama;

                double mtom1 = double.parse(isiinflasikota[index = 16].mtom);
                double mtom2 = double.parse(isiinflasikota[index = 17].mtom);
                double mtom3 = double.parse(isiinflasikota[index = 18].mtom);
                double mtom4 = double.parse(isiinflasikota[index = 19].mtom);
                double mtom5 = double.parse(isiinflasikota[index = 20].mtom);
                double mtom6 = double.parse(isiinflasikota[index = 21].mtom);
                double mtom7 = double.parse(isiinflasikota[index = 22].mtom);
                double mtom8 = double.parse(isiinflasikota[index = 23].mtom);
                //3 kab baru
                double mtom9 = double.parse(isiinflasikota[index = 30].mtom);
                double mtom10 = double.parse(isiinflasikota[index = 31].mtom);
                double mtom11 = double.parse(isiinflasikota[index = 32].mtom);

                double ytod1 = double.parse(isiinflasikota[index = 16].ytod);
                double ytod2 = double.parse(isiinflasikota[index = 17].ytod);
                double ytod3 = double.parse(isiinflasikota[index = 18].ytod);
                double ytod4 = double.parse(isiinflasikota[index = 19].ytod);
                double ytod5 = double.parse(isiinflasikota[index = 20].ytod);
                double ytod6 = double.parse(isiinflasikota[index = 21].ytod);
                double ytod7 = double.parse(isiinflasikota[index = 22].ytod);
                double ytod8 = double.parse(isiinflasikota[index = 23].ytod);
                //3 kab baru
                double ytod9 = double.parse(isiinflasikota[index = 30].ytod);
                double ytod10 = double.parse(isiinflasikota[index = 31].ytod);
                double ytod11 = double.parse(isiinflasikota[index = 32].ytod);

                double yony1 = double.parse(isiinflasikota[index = 16].ytoy);
                double yony2 = double.parse(isiinflasikota[index = 17].ytoy);
                double yony3 = double.parse(isiinflasikota[index = 18].ytoy);
                double yony4 = double.parse(isiinflasikota[index = 19].ytoy);
                double yony5 = double.parse(isiinflasikota[index = 20].ytoy);
                double yony6 = double.parse(isiinflasikota[index = 21].ytoy);
                double yony7 = double.parse(isiinflasikota[index = 22].ytoy);
                double yony8 = double.parse(isiinflasikota[index = 23].ytoy);
                //3 kab baru
                double yony9 = double.parse(isiinflasikota[index = 30].ytoy);
                double yony10 = double.parse(isiinflasikota[index = 31].ytoy);
                double yony11 = double.parse(isiinflasikota[index = 32].ytoy);

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
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Kota Inflasi",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "M to M",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Y to D",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Y on Y",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Cilacap
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama1.capitalize(),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom1, 2),
                                      style: const TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod1, 2),
                                      style: const TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony1, 2),
                                      style: const TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Purwokerto
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama2.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom2, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod2, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony2, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //Wonosobo
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama9.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom9, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod9, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony9, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //Wonogiri
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama10.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom10, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod10, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony10, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //Rembang
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama11.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom11, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod11, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony11, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Kudus
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama3.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom3, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod3, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony3, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Surakarta
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama4,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom4, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod4, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony4, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Semarang
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama5,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom5, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod5, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony5, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Tegal
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama6,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom6, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod6, 2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony6, 2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Jateng
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama7,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(mtom7, 2),
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(ytod7, 2),
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      Format.convertTo(yony7, 2),
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Nasional
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama8.capitalize(),
                                        style: const TextStyle(
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(mtom8, 2),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ytod8, 2),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.green,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(yony8, 2),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: const Text(
                                        "Catatan:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.95,
                                      child: const Text(
                                        "Tahun 2024 menggunakan tahun dasar 2022, tahun 2023 menggunakan tahun dasar 2018.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 11),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.95,
                                      child: const Text(
                                        "Mulai tahun 2024 kota/kabupaten pengamatan inflasi di Jawa Tengah bertambah 3 (tiga) menjadi 9 kota/kabupaten",
                                        style: TextStyle(fontSize: 11),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.95,
                                      child: const Text(
                                        "Ketiga kabupaten tersebut adalah Wonosobo, Wonogiri, Rembang",
                                        style: TextStyle(fontSize: 11),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.95,
                                      child: const Text(
                                        " ",
                                        style: TextStyle(fontSize: 11),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.05,
                                      width: screenWidth * 0.97,
                                      child: const Text(
                                        " ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              CustomPageRoute(
                  child: const BodyGrafikInflasiKota(),
                  direction: AxisDirection.left));
        },
        mini: true,
        child: const Icon(Icons.bar_chart),
      ),
    );
  }
}

extension MyExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
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
