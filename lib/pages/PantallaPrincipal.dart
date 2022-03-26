// ignore: file_names
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomeLaBancaria.dart';

class PantallaPrincipal extends StatelessWidget {
  final urlImagen =
      "https://scontent.faep9-2.fna.fbcdn.net/v/t31.18172-8/14882296_615480271965040_3632073316732095256_o.jpg?stp=dst-jpg_p180x540&_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=vFwIR42-jdsAX_5XjsG&_nc_ht=scontent.faep9-2.fna&oh=00_AT8rVO5gIu9La9CdkNw3uiEUyaJaklVpfvVVj6sfbKxLxQ&oe=6264015F";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/appBar.png', fit: BoxFit.cover),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(urlImagen),
            fit: BoxFit.cover,
          )),
          child: RaisedButton(
            onPressed: () {
              _IrPaginaBeneficios(context);
            },
            child: const Text(
              'BENEFICIOS',
              style: TextStyle(fontSize: 25),
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            color: Color.fromARGB(255, 21, 204, 30),
          )),
    );
  }

  void _IrPaginaBeneficios(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return MyHomePageState();
    });
    Navigator.of(context).push(route);
  }
}
