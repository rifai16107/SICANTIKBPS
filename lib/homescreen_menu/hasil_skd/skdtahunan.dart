import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_skd_tahunan.dart';
import 'package:flutter/material.dart';

class SkdTahunan extends StatefulWidget {
  const SkdTahunan({Key? key}) : super(key: key);

  @override
  State<SkdTahunan> createState() => _SkdTahunanState();
}

RepositorySkdTahunan repositoryskdtahunan = RepositorySkdTahunan();

class _SkdTahunanState extends State<SkdTahunan> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hasil Survei Kebutuhan Data',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
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
        future: repositoryskdtahunan.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiskdtahunan = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // isi data kabupaten cilacap
                //String thn = isisensustani[index = 0].tahun;

                String thn1 = isiskdtahunan[index = 0].tahun.substring(0, 4);
                String thn2 = isiskdtahunan[index = 0].tahun.substring(5, 9);
                String thn3 = isiskdtahunan[index = 0].tahun.substring(10, 14);
                String thn4 = isiskdtahunan[index = 0].tahun.substring(15, 19);

                String kabupaten = isiskdtahunan[index = 0].wilayah;

                String ikkn1 = isiskdtahunan[index = 0].ikk_n1;
                String ikkn2 = isiskdtahunan[index = 0].ikk_n2;
                String ikkn3 = isiskdtahunan[index = 0].ikk_n3;
                String ikkn4 = isiskdtahunan[index = 0].ikk_n4;

                String ipakn1 = isiskdtahunan[index = 0].ipak_n1;
                String ipakn2 = isiskdtahunan[index = 0].ipak_n2;
                String ipakn3 = isiskdtahunan[index = 0].ipak_n3;
                String ipakn4 = isiskdtahunan[index = 0].ipak_n4;
                return Container(
                  //color: const Color.fromARGB(223, 240, 216, 172),
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: screenHeight * 0.12,
                        margin: const EdgeInsets.only(bottom: 5),
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            'Hasil Survei Kebutuhan Data (SKD) Tahunan pada PST\n'
                            'BPS Kabupaten $kabupaten Tahun $thn4  ',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Robo',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      //Header Column
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.45,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  right: 5,
                                ),
                                child: Text(
                                  'TAHUN',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'IKK',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'IPAK',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
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
                                width: screenWidth * 0.99,
                                height: screenHeight * 0.02,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //ikk dan ipak n1
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                height: screenHeight * 0.05,
                                child: Text(
                                  thn1,
                                  style: const TextStyle(
                                    //fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ikkn1,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
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
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ipakn1,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //ikk dan ipak n2
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                height: screenHeight * 0.05,
                                child: Text(
                                  thn2,
                                  style: const TextStyle(
                                    //fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ikkn2,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
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
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ipakn2,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //ikk dan ipak n3
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                height: screenHeight * 0.05,
                                child: Text(
                                  thn3,
                                  style: const TextStyle(
                                    //fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ikkn3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
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
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ipakn3,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //ikk dan ipak n4
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.45,
                                height: screenHeight * 0.05,
                                child: Text(
                                  thn4,
                                  style: const TextStyle(
                                    //fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ikkn4,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
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
                                width: screenWidth * 0.27,
                                height: screenHeight * 0.05,
                                child: Text(
                                  ipakn4,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(15, 121, 153, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 1),

                      const Divider(
                        color: Colors.white,
                        height: 10,
                        thickness: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Keterangan:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "IKK (Indeks Kepuasaan Konsumen) dan IPAK (Indeks Persepsi Anti Korupsi) didapat dari Survei Kebutuhan Data (SKD) pada pengguna Layanan PST (Pelayanan Statistik Terpadu) di BPS Cilacap",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: screenWidth * 0.97,
                                child: const Text(
                                  "Sumber: BPS Kabupaten Cilacap",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
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
