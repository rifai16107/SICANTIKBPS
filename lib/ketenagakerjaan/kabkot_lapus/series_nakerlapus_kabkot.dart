import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/body_nakerlapus_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesPengangguranKabkot extends StatefulWidget {
  const SeriesPengangguranKabkot({super.key});

  @override
  State<SeriesPengangguranKabkot> createState() => _SeriesPengangguranKabkot();
}

class _SeriesPengangguranKabkot extends State<SeriesPengangguranKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;    
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PENDUDUK BEKERJA",
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(
            child: Icon(
              BackIcons.circle_arrow,
              size: 40,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(2),
         
        children: [
            Container(
              height: screenHeight * 0.085,
              color: Colors.black,
              
            child: Column(
              children: const [
                Text(
                  'Penduduk Menurut Kabupaten/Kota dan Jenis Kelamin di Provinsi Jawa Tengah Hasil Sensus Penduduk 2020',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                    'geser kolom berisi data ke kiri untuk melihat isian kolom lainnya',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                    )),
              ],
            ),
          ),
            
          Container(
          color: Colors.transparent,
            height: screenHeight * 0.85,
            width: screenWidth*1,
            child: Column(
              children: const [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 24,
                  child: BodyNakerKabkotLapus(),
                ),
              ],
            ),
          ),
        ],
      ),   
          
        
      );
    
  }
}
