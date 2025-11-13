import 'package:flutter/material.dart';
//import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KabarStatistik extends StatefulWidget {
  const KabarStatistik({Key? key}) : super(key: key);

  @override
  State<KabarStatistik> createState() => _KabarStatistikState();
}

class _KabarStatistikState extends State<KabarStatistik> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://cilacapkab.bps.go.id/id/news'));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}
