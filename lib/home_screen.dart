// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api, use_build_context_synchronously, duplicate_ignore
import 'package:bps_cilacap/Icons/bott_nav_icon_icons.dart';
//import 'package:bps_cilacap/Icons/about_icons_icons.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'bottomnavbar_content/home_content.dart';
import 'bottomnavbar_content/kabar_statistik.dart';
import 'bottomnavbar_content/tentang_aplikasi.dart';
import 'bottomnavbar_content/tautan_web.dart';
//import 'bottomnavbar_content/web_gissp.dart';
import 'package:bps_cilacap/drawer_page.dart';
import 'package:new_version_plus/new_version_plus.dart';
import 'dart:async';
import 'package:bps_cilacap/updatedialog.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    final newVersionPlus = NewVersionPlus(
      androidId: 'com.sicantik_clp.bps_cilacap',
    );

    Timer(const Duration(milliseconds: 800), () {
      checkNewVersionPlus(newVersionPlus);
    });

    super.initState();
  }

  void checkNewVersionPlus(NewVersionPlus newVersionPlus) async {
    final status = await newVersionPlus.getVersionStatus();
    if (status != null) {
      if (status.canUpdate) {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return UpdateDialog(
              allowDismissal: true,
              description: status.releaseNotes!,
              version: status.storeVersion,
              appLink: status.appStoreLink,
            );
          },
        );
        // newVersion.showUpdateDialog(
        //   context: context,
        //   versionStatus: status,
        //   dialogText: 'New Version is available in the store (${status.storeVersion}), update now!',
        //   dialogTitle: 'Update is Available!',
        // );
      }
    }
  }

  //function
  int currentPage = 0;
  final List<Widget> _pages = [
    const HomeContent(),
    const KabarStatistik(),
    const TautanWeb(),
    //const WebGissp(),
    const TentangAplikasi(),
  ];
  //
  //
  //
  // variabel buat bottom navigation bar
  //
  //
  //
  //tampilan utama
  @override
  Widget build(BuildContext context) {
    //nav
    final ScreenHeight = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 70;
    double arcHeightWithNotch = 70;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }
    //
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Row(
            children: <Widget>[
              // icon
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: 50,
                  height: 41.45,
                  child: Image.asset(
                    'assets/images/logo.png',
                    alignment: Alignment.center,
                  ),
                ),
              ),
              //text
              Flexible(
                flex: 6,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: ScreenHeight * 0.10,
                  child: const Text(
                    '  Si CANTIK',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: const Drawer(child: DrawerPage()),
        body: _pages[currentPage],
        bottomNavigationBar: CircleBottomNavigationBar(
          initialSelection: currentPage,
          barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
          arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
          itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
          itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
          circleOutline: 15.0,
          shadowAllowance: 0.0,
          circleSize: 50.0,
          blurShadowRadius: 50.0,
          barBackgroundColor: Colors.white,
          circleColor: Colors.white,
          activeIconColor: const Color.fromARGB(255, 41, 53, 226),
          inactiveIconColor: Colors.grey,
          textColor: Colors.grey,
          tabs: getTabsData(),
          onTabChangedListener: (index) => setState(() => currentPage = index),
        ),
      ),
    );
  }
}

List<TabData> getTabsData() {
  return [
    TabData(
      icon: BottNavIcon.home_outline,
      iconSize: 20.0,
      title: 'Beranda',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: BottNavIcon.newspaper,
      iconSize: 20,
      title: 'Berita',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: BottNavIcon.globe,
      iconSize: 20,
      title: 'Tautan',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: BottNavIcon.info_circled_alt,
      iconSize: 20,
      title: 'Info Aplikasi',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  ];
}
