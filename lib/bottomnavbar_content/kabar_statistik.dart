import 'package:flutter/material.dart';
//import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KabarStatistik extends StatefulWidget {
  const KabarStatistik({Key? key}) : super(key: key);

  @override
  State<KabarStatistik> createState() => _KabarStatistikState();
}

class _KabarStatistikState extends State<KabarStatistik> {
  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: "https://cilacapkab.bps.go.id/id/news",
      //initialUrl: Uri.dataFromString('<html><body><iframe src="https://cilacapkab.bps.go.id/news.html"></iframe></body></html>', mimeType: 'text/html').toString(),
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
