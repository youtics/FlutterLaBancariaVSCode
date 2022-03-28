// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomeLaBancaria.dart';

class Inicio extends StatelessWidget {
  final urlImagen =
      "https://scontent.faep9-2.fna.fbcdn.net/v/t31.18172-8/14882296_615480271965040_3632073316732095256_o.jpg?stp=dst-jpg_p180x540&_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=vFwIR42-jdsAX_5XjsG&_nc_ht=scontent.faep9-2.fna&oh=00_AT8rVO5gIu9La9CdkNw3uiEUyaJaklVpfvVVj6sfbKxLxQ&oe=6264015F";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Image.asset('images/appBar.png', fit: BoxFit.cover),
            backgroundColor: Color.fromARGB(255, 141, 219, 200),
            toolbarHeight: 100,
          ),
          body: Center(
              child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                color: Color.fromARGB(255, 2, 163, 121),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text(
                          'NOTICIAS',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        color: Color.fromARGB(255, 2, 163, 121),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          _IrPaginaNoticias(context);
                        },
                      ),
                    ], //Widget
                  ), //Column
                ), //Center
              ), //Card
              Card(
                color: Color.fromARGB(255, 1, 136, 194),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text(
                          'BENEFICIOS',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        color: Color.fromARGB(255, 1, 136, 194),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          _IrPaginaBeneficios(context);
                        },
                      ),
                    ], //Widget
                  ), //Column
                ), //Center
              ), //Card
              Card(
                color: Color.fromARGB(255, 2, 163, 121),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text(
                          'GREMIALES',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        color: Color.fromARGB(255, 2, 163, 121),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          _IrPaginaBeneficios(context);
                        },
                      ),
                    ], //Widget
                  ), //Column
                ), //Center
              ), //Card
              Card(
                color: Color.fromARGB(255, 1, 136, 194),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text(
                          'CONVENIOS',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        color: Color.fromARGB(255, 1, 136, 194),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          _IrPaginaBeneficios(context);
                        },
                      ),
                    ], //Widget
                  ), //Column
                ), //Center
              ), //Card
            ], //Widget
          ))),
    );
  }

  void _IrPaginaBeneficios(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return MyHomePageState();
    });
    Navigator.of(context).push(route);
  }

  void _IrPaginaNoticias(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return MyHomePageState();
    });
    Navigator.of(context).push(route);
  }
}
