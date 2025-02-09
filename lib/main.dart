// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp( const MaterialApp(
      title: "BPS Cilacap",
      home:  Home(),
      debugShowCheckedModeBanner: false,
    ));
  });
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}
