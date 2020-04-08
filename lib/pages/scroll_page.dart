import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pagina1(), _pagina2()],
    ));
  }

  _pagina1() {
    return Stack(
      children: <Widget>[_colorFondo(), _imagenFondo(), _textos()],
    );
  }

  _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Text(
                  "Bienvenido",
                  style: TextStyle(fontSize: 20.0),
                )),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  _colorFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(108, 192, 218, 1.0));
  }

  _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}

_textos() {
  final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

  return SafeArea(
    child: Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Text(
          "11°",
          style: estiloTexto,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Miercoles",
          style: estiloTexto,
        ),
        Expanded(
          child: Container(),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
          size: 70.0,
        )
      ],
    ),
  );
}
