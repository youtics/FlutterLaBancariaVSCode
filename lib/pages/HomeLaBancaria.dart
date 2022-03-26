import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePageState extends StatelessWidget {
  const MyHomePageState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Bancaria MDP'),
        centerTitle: true,
        actions: <Widget>[IconButton(onPressed: _Add, icon: Icon(Icons.home))],
      ),
      body: const WebView(
        initialUrl: "https://labancaria.obliviondev.com.ar/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }

  void _Add() {}
}
