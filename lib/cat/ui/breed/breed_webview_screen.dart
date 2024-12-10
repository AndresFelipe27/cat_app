import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';  // Importa el WebView

class BreedWebViewScreen extends StatefulWidget {
  final String url;

  const BreedWebViewScreen({super.key, required this.url});

  @override
  _BreedWebViewScreenState createState() => _BreedWebViewScreenState();
}

class _BreedWebViewScreenState extends State<BreedWebViewScreen> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _initializeWebViewController();
  }

  void _initializeWebViewController() {
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: const Text('Wikipedia'),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: WebViewWidget(controller: _webViewController),
    );
  }
}


