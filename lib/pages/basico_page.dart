import 'package:flutter/material.dart';

class Basico extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          SizedBox(
            height: 15.0,
          ),
          _crearAcciones(),
          _crearTexto()
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Primera Fila',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Segunda Fila',
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  _accion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: TextStyle(color: Colors.blue, fontSize: 15.0))
      ],
    );
  }

  _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
        'Sit non eiusmod nostrud incididunt fugiat consequat. Excepteur incididunt minim mollit magna consequat deserunt. Anim aliqua commodo do enim amet anim voluptate eu. Est consequat proident proident ad anim nostrud nostrud excepteur ea ullamco fugiat tempor quis. Lorem do proident cillum labore. Aute nostrud proident consectetur ex irure adipisicing excepteur ut aliqua dolore qui ipsum dolore non.',
        style: TextStyle(fontSize: 25.0),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
