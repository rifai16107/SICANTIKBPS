import 'package:bps_cilacap/restAPI/repository_inflasi_kota.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class InflasiKotaB extends StatefulWidget {
  const InflasiKotaB({super.key});

  @override
  State<InflasiKotaB> createState() => _InflasiKotaBState();
}

RepositoryInflasiKota repositoryinflasikota = RepositoryInflasiKota();

class _InflasiKotaBState extends State<InflasiKotaB> {
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
                String nama1 = isiinflasikota[index = 8].nama;
                String nama2 = isiinflasikota[index = 9].nama;
                String nama3 = isiinflasikota[index = 10].nama;
                String nama4 = isiinflasikota[index = 11].nama;
                String nama5 = isiinflasikota[index = 12].nama;
                String nama6 = isiinflasikota[index = 13].nama;
                String nama7 = isiinflasikota[index = 14].nama;
                String nama8 = isiinflasikota[index = 15].nama;
                //3 kab baru
                String nama9 = isiinflasikota[index = 27].nama;
                String nama10 = isiinflasikota[index = 28].nama;
                String nama11 = isiinflasikota[index = 29].nama;

                double mtom1 = double.parse(isiinflasikota[index = 8].mtom);
                double mtom2 = double.parse(isiinflasikota[index = 9].mtom);
                double mtom3 = double.parse(isiinflasikota[index = 10].mtom);
                double mtom4 = double.parse(isiinflasikota[index = 11].mtom);
                double mtom5 = double.parse(isiinflasikota[index = 12].mtom);
                double mtom6 = double.parse(isiinflasikota[index = 13].mtom);
                double mtom7 = double.parse(isiinflasikota[index = 14].mtom);
                double mtom8 = double.parse(isiinflasikota[index = 15].mtom);
                //3 kab baru
                double mtom9 = double.parse(isiinflasikota[index = 27].mtom);
                double mtom10 = double.parse(isiinflasikota[index = 28].mtom);
                double mtom11 = double.parse(isiinflasikota[index = 29].mtom);

                double ytod1 = double.parse(isiinflasikota[index = 8].ytod);
                double ytod2 = double.parse(isiinflasikota[index = 9].ytod);
                double ytod3 = double.parse(isiinflasikota[index = 10].ytod);
                double ytod4 = double.parse(isiinflasikota[index = 11].ytod);
                double ytod5 = double.parse(isiinflasikota[index = 12].ytod);
                double ytod6 = double.parse(isiinflasikota[index = 13].ytod);
                double ytod7 = double.parse(isiinflasikota[index = 14].ytod);
                double ytod8 = double.parse(isiinflasikota[index = 15].ytod);
                //3 kab baru
                double ytod9 = double.parse(isiinflasikota[index = 27].ytod);
                double ytod10 = double.parse(isiinflasikota[index = 28].ytod);
                double ytod11 = double.parse(isiinflasikota[index = 29].ytod);

                double yony1 = double.parse(isiinflasikota[index = 8].ytoy);
                double yony2 = double.parse(isiinflasikota[index = 9].ytoy);
                double yony3 = double.parse(isiinflasikota[index = 10].ytoy);
                double yony4 = double.parse(isiinflasikota[index = 11].ytoy);
                double yony5 = double.parse(isiinflasikota[index = 12].ytoy);
                double yony6 = double.parse(isiinflasikota[index = 13].ytoy);
                double yony7 = double.parse(isiinflasikota[index = 14].ytoy);
                double yony8 = double.parse(isiinflasikota[index = 15].ytoy);
                //3 kab baru
                double yony9 = double.parse(isiinflasikota[index = 27].ytoy);
                double yony10 = double.parse(isiinflasikota[index = 28].ytoy);
                double yony11 = double.parse(isiinflasikota[index = 29].ytoy);

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

extension MyExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
