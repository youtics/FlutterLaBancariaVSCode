import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/PantallaPrincipal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Bancaria',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PantallaPrincipal(),
    );
  }
}


  // ignore: non_constant_identifier_names
  // ignore: deprecated_member_use
  //child: RaisedButton(
  //onPressed: () {
  //Navigator.push(context,
  //MaterialPageRoute(builder: (context) => MyHomePageState()));
  // },
  // child: Text('Noticias'),
  //),

