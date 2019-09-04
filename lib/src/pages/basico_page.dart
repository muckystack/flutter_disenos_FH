import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),

          ],
        ),
      )
    );
  }


  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/img/baner.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
      // child: FadeInImage(
      //   image: NetworkImage('https://i.ytimg.com/vi/BfCwN4iy6T8/maxresdefault.jpg'),
      //   placeholder: AssetImage('assets/img/loading.gif'),
      //   height: 200.0,
      //   fit: BoxFit.cover
      // ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: <Widget>[
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Cascada de agua', style: estiloTitulo,),
                  SizedBox(height: 7.0),
                  Text('La cascada se encuantra en alemania', style: estiloSubtitulo),
                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0),

            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.router, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Widget _accion(IconData icon, String texto) {    return Column(      children: <Widget>[        Icon(icon, color: Colors.blue, size: 40.0),        SizedBox(height: 5.0),        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))      ],    );  }',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}