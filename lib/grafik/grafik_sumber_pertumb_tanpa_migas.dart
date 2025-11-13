import 'package:bps_cilacap/restAPI/repository_dist_pdrb_adhk.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GrafikDistPdrbAdhkTanpaMigas extends StatefulWidget {
  const GrafikDistPdrbAdhkTanpaMigas({Key? key}) : super(key: key);

  @override
  State<GrafikDistPdrbAdhkTanpaMigas> createState() =>
      _GrafikDistPdrbAdhkTanpaMigasState();
}

class _GrafikDistPdrbAdhkTanpaMigasState
    extends State<GrafikDistPdrbAdhkTanpaMigas> {
  RepositoryDistPdrbAdhk repositoryDistPdrbAdhk = RepositoryDistPdrbAdhk();
  int key = 0;
  late List<_ChartData> data;
  late TooltipBehavior tooltip;
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
    return FutureBuilder(
      future: repositoryDistPdrbAdhk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double a = double.parse(isipdrb[index = 5].a);
              double b = double.parse(isipdrb[index = 5].b);
              double c = double.parse(isipdrb[index = 5].c);
              double d = double.parse(isipdrb[index = 5].d);
              double e = double.parse(isipdrb[index = 5].e);
              double f = double.parse(isipdrb[index = 5].f);
              double g = double.parse(isipdrb[index = 5].g);
              double h = double.parse(isipdrb[index = 5].h);
              double i = double.parse(isipdrb[index = 5].i);
              double j = double.parse(isipdrb[index = 5].k);
              double k = double.parse(isipdrb[index = 5].k);
              double l = double.parse(isipdrb[index = 5].l);
              double mn = double.parse(isipdrb[index = 5].m_n);
              double o = double.parse(isipdrb[index = 5].o);
              double p = double.parse(isipdrb[index = 5].p);
              double q = double.parse(isipdrb[index = 5].q);
              double rstu = double.parse(isipdrb[index = 5].r_s_t_u);

              String th1 =
                  (isipdrb[index = 5].created_at[0] +
                  isipdrb[index = 5].created_at[1] +
                  isipdrb[index = 5].created_at[2] +
                  isipdrb[index = 5].created_at[3]);
              toString();

              data = [
                _ChartData('RSTU-Lainnya', rstu),
                _ChartData('Q-Kesehatan', q),
                _ChartData('P-Pendidikan', p),
                _ChartData('O-Adm.Pemerintahan', o),
                _ChartData('MN-Jasa Perusahaan', mn),
                _ChartData('L-Real Estate', l),
                _ChartData('K-Keuangan', k),
                _ChartData('J-Infokom', j),
                _ChartData('I-Akom & MakMin', i),
                _ChartData('H-Transportasi', h),
                _ChartData('G-Perdagangan', g),
                _ChartData('F-Konstruksi', f),
                _ChartData('E-Air, Peng.Limbah', e),
                _ChartData('D-Listrik dan Gas', d),
                _ChartData('C-Industri', c),
                _ChartData('B-Pertambangan', b),
                _ChartData('A-Pertanian', a),
              ];
              tooltip = TooltipBehavior(enable: true);

              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text:
                        'Sumber Pertumbuhan PDRB ADHK Kabupaten Cilacap Menurut Lapangan Usaha -Tanpa Migas (Persen) Tahun $th1',
                    // Aligns the chart title to left
                    alignment: ChartAlignment.center,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                  primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontFamily: 'Roboto',
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  primaryYAxis: NumericAxis(
                    majorGridLines: const MajorGridLines(width: 1),
                    minimum: -1,
                    maximum: 5,
                    interval: 1,
                  ),
                  tooltipBehavior: tooltip,
                  series: <CartesianSeries>[
                    BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      dataLabelSettings: const DataLabelSettings(
                        // Renders the data label
                        isVisible: true,
                        textStyle: TextStyle(fontSize: 11),
                      ),
                      name: 'Lapangan Usaha',
                      gradient: _barsGradient,
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Database Error");
        }
        return const Center(child: CircularProgressIndicator(strokeWidth: 1));
      },
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

LinearGradient get _barsGradient => const LinearGradient(
  colors: [Colors.blueAccent, Colors.greenAccent],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
);
