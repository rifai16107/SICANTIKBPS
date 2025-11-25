import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipm_cilacap/ipm_cilacap_content.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/idg_kab_content.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipg_cilacap/ipm_gender_kab_content.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/series_ipm_se_jateng.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipg_sejateng/series_ipg_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/series_idg_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipg_sejateng/ipg_kabkot_jateng.dart';
import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:flutter/material.dart';

class IpmContent extends StatefulWidget {
  const IpmContent({Key? key}) : super(key: key);

  @override
  State<IpmContent> createState() => _IpmContentState();
}

RepositoryIpm repositoryipm = RepositoryIpm();

class _IpmContentState extends State<IpmContent> {
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
          'IPM, IPG dan IDG',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
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
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                constraints: BoxConstraints.tight(
                  Size(screenWidth, screenHeight),
                ),
                context: context,
                builder: (context) {
                  return ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "PEMBANGUNAN MANUSIA",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Pembangunan Manusia didefinisikan sebagai perluasan pilihan bagi penduduk untuk hidup lebih panjang, lebih sehat, dan hidup lebih bermakna membangun hidupnya yang dianggap berharga (UNDP, HDR 1990).",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Indeks Pembangunan Manusia (IPM)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   UNDP memperkenalkan suatu indikator yang dapat menggambarkan perkembangan pembangunan manusia secara terukur dan representatif, yang dinamakan Human Development Index (HDI) atau Indeks Pembangunan Manusia (IPM).",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   IPM dikembangkan oleh Amartya Sen (pemenang nobel berkebangsaan India) dan seorang ekonom Pakistan Mahbub ul Haq, serta dibantu oleh Gustav Ranis dari Universitas Yale dan Lord Meghnad Desai dari London School of Economics. Sejak it indeks ini dipakai oleh Program pembangunan PBB pada lapora IPM tahunannya.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Dimensi Dasar IPM",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Indeks Pembangunan Manusia (IPM) memiliki tiga dimensi yang digunakan sebagai dasar perhitungannya :",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "1) Umur panjang dan hidup sehat yang diukur dengan Umur Harapan Hidup (UHH) saat kelahiran.",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "2) Pengetahuan yang dihitung dari angka Harapan Lama Sekolah/HLS (penduduk berusia 7 tahun ke atas) dan angka Rata-rata Lama Sekolah/RLS (penduduk berusia 25 tahun ke atas).",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "3) Standar hidup layak yang di tingkat nasional dihitung dari Produk Domestik Bruto/PDB (keseimbangan kemampuan berbelanja) per kapita, sedangkan di tingkat daerah dihitung dari pengeluaran per kapita per tahun.",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Perbaikan Penghitungan IPM",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Komponen Indeks Pembangunan Manusia (IPM) terdiri dari 3 komponen yaitu komponen kesehatan yang diwakili oleh Usia Harapan Hidup, Komponen Pendidikan (diwakili oleh RLS dan HLS) serta komponen kesejahteraan yang diwakili oleh Pengeluaran per Kapita. Komponen UHH dihitung dari data-data sensus, sebelum tahun 2020 UHH dihitung berdsarkan data SP2010, setelah tahun 2020 UHH diperbaiki penghitungannya dengan data SP2020 Long Form (LF)",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Manfaat IPM",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Indeks Pembangunan Manusia (IPM) memiliki beberapa manfaat antara lain :",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "1) IPM merupakan indikator penting untuk mengukur keberhasilan dalam upaya membangun kualitas hidup manusia (masyarakat/penduduk).",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "2) IPM dapat menentukan peringkat atau level pembangunan suatu wilayah/negara.",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "3) Bagi Indonesia, IPM merupakan data strategis karena selain sebagai ukuran kinerja Pemerintah, IPM juga digunakan sebagai salah satu alokator penentuan Dana Alokasi Umum (DAU).",
                            ),
                          ),
                          // IPG
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Indeks Pembangunan Gender (IPG)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   IPG pada dasarnya mengukur ketimpangan atau ketidaksetaraan antara laki-laki dan perempuan dalam hal pembangunan manusia. Seperti halnya IPM pada penghitungan IPG ini dimensi yang yang digunakan sebagai dasar perhitungannya ada 3 (tiga) yaitu:",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "1) IPM merupakan indikator penting untuk mengukur keberhasilan dalam upaya membangun kualitas hidup manusia (masyarakat/penduduk).",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "2) IPM dapat menentukan peringkat atau level pembangunan suatu wilayah/negara.",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 20,
                              right: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "3) Bagi Indonesia, IPM merupakan data strategis karena selain sebagai ukuran kinerja Pemerintah, IPM juga digunakan sebagai salah satu alokator penentuan Dana Alokasi Umum (DAU).",
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Saat ini, IPG merupakan rasio antara IPM perempuan dengan IPM laki- laki. Dengan demikian, IPG semakin ideal jika nilainya mendekati angka 100. Nilai IPG di bawah 100 berarti bahwa capaian pembangunan perempuan lebih rendah laki-laki. Oleh karena IPG merupakan rasio antara IPM perempuan dan IPM laki-laki maka metode perhitungan IPG yang dilakukan oleh BPS pun berbeda dengan penghitungan GDI (Gender Development Index) yang dilakukan oleh UNDP. Hal ini disebabkan cara menghitung IPM yang berbeda dengan HDI (Human Development Index), sedangkan penghitungan IPG didahului dengan penghitungan IPM.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          // Indeks Pemberdayaan Gender (IDG)
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Indeks Pemberdayaan Gender (IDG)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Indeks Pemberdayaan Gender (IDG) mengukur partisipasi aktif perempuan pada kegiatan ekonomi yaitu dengan indikator persentase sumbanganperempuan dalam pendapatan kerja, kegiatan politik dengan indikator keterlibatan perempuan di parlemen, serta dalam pengambilan keputusan melalui indikator perempuan sebagai tenaga manajer, professional, administrasi, teknisi.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   IDG diperoleh dari rata-rata aritmatik dari tiga indeks yang dibentuk dari tiga komponen yaitu keterlibatan perempuan dalam parlemen, perempuan sebagai tenaga professional dan sumbangan pendapatan perempuan.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.info_outlined),
          ),
        ],
      ),
      body: FutureBuilder(
        future: repositoryipm.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiipm = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String tahunipg = isiipm[index = 4].tahun;
                String tahunipm = isiipm[index = 19].tahun;

                double ipg = double.parse(isiipm[index = 4].ipg);
                double ipmlf = double.parse(isiipm[index = 19].ipm_lfsp2020);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 4,
                        child: Container(
                          height: 0.16 * screenHeight,
                          color: Colors.black,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 5,
                              ),
                              child: Text(
                                "Tahun $tahunipm , IPM Kabupaten Cilacap tercatat sebesar $ipmlf, sementara IPG Kabupaten Cilacap tahun $tahunipg tercatat sebesar $ipg ",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Divider(height: 15, color: Colors.transparent),
                      Card(
                        elevation: 20,
                        color: const Color.fromRGBO(236, 138, 20, 0.882),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const IpmKabContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          splashColor: Colors.blueGrey,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_cilacap.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth * 0.12,
                                    height: screenHeight * 0.08,
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth * 0.80,
                                    height: screenHeight * 0.09,
                                    child: Text(
                                      'Perkembangan IPM Kabupaten Cilacap',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //const Divider(height: 1, color: Colors.transparent),
                      Card(
                        elevation: 20,
                        color: const Color.fromRGBO(236, 138, 20, 0.882),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const IpmGenderKabContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          splashColor: Colors.blueGrey,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_cilacap.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth * 0.12,
                                    height: screenHeight * 0.08,
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth * 0.80,
                                    height: screenHeight * 0.09,
                                    child: Text(
                                      '[IPG] Indeks Pembangunan Manusia\n'
                                      '(IPM) Menurut Jenis Kelamin dan\n'
                                      'IPG Kabupaten Cilacap',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //const Divider(height: 1, color: Colors.transparent),
                      Card(
                        elevation: 20,
                        color: const Color.fromRGBO(236, 138, 20, 0.882),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const IdgKabContent(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          splashColor: Colors.blueGrey,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_cilacap.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth * 0.12,
                                    height: screenHeight * 0.08,
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth * 0.80,
                                    height: screenHeight * 0.08,
                                    child: Text(
                                      'Perkembangan IDG Kabupaten Cilacap',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //const Divider(height: 1, color: Colors.transparent),
                      Card(
                        elevation: 20,
                        color: const Color.fromRGBO(236, 138, 20, 0.882),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const SeriesIpmsejateng(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          splashColor: Colors.blueGrey,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_jateng.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth * 0.12,
                                    height: screenHeight * 0.08,
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth * 0.80,
                                    height: screenHeight * 0.08,
                                    child: Text(
                                      'IPM Kabupaten/Kota di Jawa Tengah',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //IPG
                      //const Divider(height: 1, color: Colors.transparent),
                      Card(
                        elevation: 20,
                        color: const Color.fromRGBO(236, 138, 20, 0.882),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const SeriesIpgkabkot(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          splashColor: Colors.blueGrey,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_jateng.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth * 0.12,
                                    height: screenHeight * 0.08,
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth * 0.80,
                                    height: screenHeight * 0.09,
                                    child: Text(
                                      '[IPG] Indeks Pembangunan Manusia Kabupaten/Kota di Jawa Tengah Menurut Jenis Kelamin',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //const Divider(height: 1, color: Colors.transparent),
                      Card(
                        elevation: 20,
                        color: const Color.fromRGBO(236, 138, 20, 0.882),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const IpgKabkotJateng(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          splashColor: Colors.blueGrey,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_jateng.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth * 0.12,
                                    height: screenHeight * 0.08,
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth * 0.80,
                                    height: screenHeight * 0.09,
                                    child: Text(
                                      '[IPG] Indeks Pembangunan Gender Kabupaten/Kota di Jawa Tengah',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //IDG
                      //const Divider(height: 1, color: Colors.transparent),
                      Card(
                        elevation: 20,
                        color: const Color.fromRGBO(236, 138, 20, 0.882),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: const SeriesIdgkabkot(),
                                direction: AxisDirection.left,
                              ),
                            );
                          },
                          splashColor: Colors.blueGrey,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/daerah/logo_jateng.png',
                                    fit: BoxFit.cover,
                                    width: screenWidth * 0.12,
                                    height: screenHeight * 0.08,
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth * 0.80,
                                    height: screenHeight * 0.08,
                                    child: Text(
                                      'IDG Kabupaten/Kota di Jawa Tengah',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(color: Colors.transparent),
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
