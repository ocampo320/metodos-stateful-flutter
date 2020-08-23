import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Metodos());
}

class Metodos extends StatefulWidget {
  @override
  _MetodosState createState() => _MetodosState();
}

class _MetodosState extends State<Metodos> {
  int contador;
  String mensaje;

//metodo initstate
  @override
  void initState() {
    super.initState();
    contador = 1;
    run();
  }

  String run() {
    return mensaje = "arrancamos";
  }

  //dispose()se utiliza para ejecutar código cuando se elimina la pantalla
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Metodos de StatefulWidget"),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(mensaje),
                      Text(contador.toString())
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          contador++;
                        });
                      },
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.maximize),
                      onPressed: () {
                        setState(() {
                          contador--;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
