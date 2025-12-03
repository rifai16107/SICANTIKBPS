import 'package:bps_cilacap/restAPI/repository_sensustani_milenial.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';

class MilenialUrbanB extends StatefulWidget {
  const MilenialUrbanB({Key? key}) : super(key: key);

  @override
  State<MilenialUrbanB> createState() => _MilenialUrbanBState();
}

RepositorySensusTaniMilenial repositorysensustanimilenial =
    RepositorySensusTaniMilenial();

class _MilenialUrbanBState extends State<MilenialUrbanB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorysensustanimilenial.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isisensustani = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // isi data kabupaten cilacap
                //String thn = isisensustani[index = 0].tahun;

                String thn = isisensustani[index = 1].tahun;

                int petani = int.parse(isisensustani[index = 1].petani);
                int petaniPglahan = int.parse(
                  isisensustani[index = 1].petani_pg_lahan,
                );
                int petaniGurem = int.parse(
                  isisensustani[index = 1].petani_gurem,
                );
                int petaniMilenial1939 = int.parse(
                  isisensustani[index = 1].petani_milenial_1939,
                );
                int urbanRtup = int.parse(isisensustani[index = 1].urban_rtup);
                int urbanUtp = int.parse(isisensustani[index = 1].urban_utp);
                int jumlahUtp = int.parse(isisensustani[index = 1].jumlah_utp);
                int jumlahUpb = int.parse(isisensustani[index = 1].jumlah_upb);
                int jumlahUtl = int.parse(isisensustani[index = 1].jumlah_utl);

                double persenPetaniGurem = petaniGurem / petaniPglahan * 100;
                double persenPetaniMilenial = petaniMilenial1939 / petani * 100;

                return Container(
                  color: const Color.fromARGB(223, 190, 219, 197),
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 110,
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            'Usaha Pertanian Perorangan (UTP), Perusahaan Pertanian Berbadan Hukum (UPB), Usaha Pertanian Lainnya (UTL), Petani Milenial, Urban Farming dan Petani Pengguna Lahan Hasil Sensus Pertanian $thn di Jawa Tengah: ',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Robo',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.25,
                                './assets/images/sensus/st_2023.png',
                                //width: 75,
                                height: 72,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.7,
                                child: Text(
                                  'Jumlah Usaha Pertanian Peorangan (UTP) sebanyak ${Format.convertTo(jumlahUtp, 0)} unit',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.7,
                                child: const Text(
                                  '(naik 2,60% ST2013)',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 1),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.25,
                                './assets/images/sensus/st_2023.png',
                                //width: 75,
                                height: 72,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.7,
                                child: Text(
                                  'Jumlah Perusahaan Pertanian Berbadan Hukum (UPB) sebanyak ${Format.convertTo(jumlahUpb, 0)} unit',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.7,
                                child: const Text(
                                  '(tidak ada perubahan dari ST2013)',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 1),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.25,
                                './assets/images/sensus/st_2023.png',
                                //width: 75,
                                height: 72,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.7,
                                child: Text(
                                  'Jumlah Usaha Pertanian Lainnya (UTL) sebanyak sebanyak ${Format.convertTo(jumlahUtl, 0)} unit',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.7,
                                child: const Text(
                                  '(naik 687,50% tidak ada perubahan dari ST2013)',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 2),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  'PETANI MILENIAL',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.30,
                                child: const Text(
                                  '(Usia 19-39 Tahun)',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  Format.convertTo(petaniMilenial1939, 0),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  '(${Format.convertTo(persenPetaniMilenial, 2)}%)',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.25,
                                './assets/images/sensus/st_2023_milen.png',
                                //width: 75,
                                height: 80,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 1),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  'URBAN FARMING',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  'Jumlah RTUP ${Format.convertTo(urbanRtup, 0)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  'rumah tangga',
                                  style: TextStyle(fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  'Jumlah UTP ${Format.convertTo(urbanUtp, 0)}',
                                  style: const TextStyle(
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  'unit',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.25,
                                './assets/images/sensus/st_2023_urban.png',
                                //width: 75,
                                height: 80,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 1),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  'JUMLAH PETANI DAN PETANI PENGGUNA LAHAN',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  'Jumlah Petani: ${Format.convertTo(petani, 0)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  'Petani Pengguna Lahan: ${Format.convertTo(petaniPglahan, 0)}',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.25,
                                './assets/images/sensus/st_2023_pg_lahan.png',
                                //width: 75,
                                height: 80,
                              ),
                            ],
                          ),
                        ],
                      ),

                      const Divider(thickness: 1),
                      //catatan
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  'PETANI GUREM',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: const Text(
                                  '(Petani pengguna lahan dengan luas < 0,5 ha)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  'Petani Gurem: ${Format.convertTo(petaniGurem, 0)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.35,
                                child: Text(
                                  '(${Format.convertTo(persenPetaniGurem, 2)}%)',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                width: screenWidth * 0.25,
                                './assets/images/sensus/st_2023_pg_gurem.png',
                                //width: 75,
                                height: 80,
                              ),
                            ],
                          ),
                        ],
                      ),

                      const Divider(thickness: 1),
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
                                    fontSize: 12,
                                  ),
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
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Satu Rumah Tangga Usaha Pertanian (RTUP) dapat terdiri atas satu Usaha Pertanian Perorangan (UTP) atau lebih.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const Divider(thickness: 1),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Satu RTUP dan UTP dapat mengusahakan lebih dari satu subsektor usaha pertanian, sehingga jumlah unit RTUP dan UTP di Sektor Pertanian bukan merupakan penjumlahan dari masing-masing subsektor",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              const Divider(thickness: 1),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Persentase Petani Milenial Usia 19-39 tahun dihitung terhadap jumlah petani, sedangkan persentase petani gurem dihitung terhadap petani pengguna lahan",
                                  style: TextStyle(fontSize: 10),
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
                                height: screenHeight * 0.03,
                                width: screenWidth * 0.97,
                                child: const Text(
                                  " ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.left,
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
            return const Text('Database Error');
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
      ),
    );
  }
}
