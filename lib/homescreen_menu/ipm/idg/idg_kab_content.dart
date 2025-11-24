import 'package:bps_cilacap/restAPI/repository_idg.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/body_grafik_idg.dart';
import 'package:flutter/material.dart';

class IdgKabContent extends StatefulWidget {
  const IdgKabContent({Key? key}) : super(key: key);

  @override
  _IdgKabContentState createState() => _IdgKabContentState();
}

class _IdgKabContentState extends State<IdgKabContent> {
  RepositoryIdg repositoryidg = RepositoryIdg();

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          '[IDG] Indeks Pemberdayaan Gender',
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
        future: repositoryidg.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiidg = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String tahun1 = isiidg[index = 0].tahun;
                String tahun2 = isiidg[index = 1].tahun;
                String tahun3 = isiidg[index = 2].tahun;
                String tahun4 = isiidg[index = 3].tahun;
                String tahun5 = isiidg[index = 4].tahun;

                double pendapatan1 = double.parse(isiidg[index = 0].pendapatan);
                double pendapatan2 = double.parse(isiidg[index = 1].pendapatan);
                double pendapatan3 = double.parse(isiidg[index = 2].pendapatan);
                double pendapatan4 = double.parse(isiidg[index = 3].pendapatan);
                double pendapatan5 = double.parse(isiidg[index = 4].pendapatan);

                double profesional1 = double.parse(
                  isiidg[index = 0].profesional,
                );
                double profesional2 = double.parse(
                  isiidg[index = 1].profesional,
                );
                double profesional3 = double.parse(
                  isiidg[index = 2].profesional,
                );
                double profesional4 = double.parse(
                  isiidg[index = 3].profesional,
                );
                double profesional5 = double.parse(
                  isiidg[index = 4].profesional,
                );

                double parlemen1 = double.parse(isiidg[index = 0].parlemen);
                double parlemen2 = double.parse(isiidg[index = 1].parlemen);
                double parlemen3 = double.parse(isiidg[index = 2].parlemen);
                double parlemen4 = double.parse(isiidg[index = 3].parlemen);
                double parlemen5 = double.parse(isiidg[index = 4].parlemen);

                double idg1 = double.parse(isiidg[index = 0].idg);
                double idg2 = double.parse(isiidg[index = 1].idg);
                double idg3 = double.parse(isiidg[index = 2].idg);
                double idg4 = double.parse(isiidg[index = 3].idg);
                double idg5 = double.parse(isiidg[index = 4].idg);

                return Container(
                  height: 1200,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 2,
                        ),
                        child: Text(
                          "Indeks Pemberdayaan Gender (IDG) Kabupaten Cilacap, $tahun1-$tahun5",
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
                                    height: screenHeight * 0.08,
                                    width: screenWidth,
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        'IDG &\n'
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
                                    height: screenHeight * 0.08,
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
                                    height: screenHeight * 0.08,
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
                                    height: screenHeight * 0.08,
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
                                    height: screenHeight * 0.08,
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
                                    height: screenHeight * 0.08,
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
                                      left: 5,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.12,
                                    child: const Center(
                                      child: Text(
                                        "Sumbangan Pendapatan Perempuan (persen)",
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
                                      pendapatan1.toStringAsFixed(2),
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
                                      pendapatan2.toStringAsFixed(2),
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
                                      pendapatan3.toStringAsFixed(2),
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
                                      pendapatan4.toStringAsFixed(2),
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
                                      pendapatan5.toStringAsFixed(2),
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
                            const Divider(thickness: 1),
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 5,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.12,
                                    child: const Center(
                                      child: Text(
                                        "Perempuan Sebagai Tenaga Profesional (persen)",
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
                                      profesional1.toStringAsFixed(2),
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
                                      profesional2.toStringAsFixed(2),
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
                                      profesional3.toStringAsFixed(2),
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
                                      profesional4.toStringAsFixed(2),
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
                                      profesional5.toStringAsFixed(2),
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
                            const Divider(thickness: 1),
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 5,
                                      right: 0,
                                    ),
                                    height: screenHeight * 0.12,
                                    child: const Center(
                                      child: Text(
                                        "Keterlibatan Perempuan di Parlemen (persen)",
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
                                      parlemen1.toStringAsFixed(2),
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
                                      parlemen2.toStringAsFixed(2),
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
                                      parlemen3.toStringAsFixed(2),
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
                                      parlemen4.toStringAsFixed(2),
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
                                      parlemen5.toStringAsFixed(2),
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
                                    child: const Center(
                                      child: Text(
                                        "IDG",
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
                                    color: Colors.orange,
                                    padding: const EdgeInsets.only(
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        idg1.toStringAsFixed(2),
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
                                    padding: const EdgeInsets.only(
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        idg2.toStringAsFixed(2),
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
                                    padding: const EdgeInsets.only(
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        idg3.toStringAsFixed(2),
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
                                    padding: const EdgeInsets.only(
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        idg4.toStringAsFixed(2),
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
                                    padding: const EdgeInsets.only(
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: SizedBox(
                                      child: Text(
                                        idg5.toStringAsFixed(2),
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
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                              bottom: 0,
                            ),
                            child: const Text(
                              " Sumber Data : Survei Sosial Ekonomi Nasional (Susenas)",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
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
              child: const BodyGrafikIdg(),
              direction: AxisDirection.left,
            ),
          );
        },
        foregroundColor: Colors.orange,
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
