import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearText(),
            _crearText(),
            _crearText(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      height: 200.0,
      width: double.infinity,
      fit: BoxFit.cover,
      image: NetworkImage(
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
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
                    'Titulo',
                    style: styleTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'SubTitulo',
                    style: styleSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _accion(Icons.call, 'Call'),
          _accion(Icons.send, 'Route'),
          _accion(Icons.share, 'Share'),
        ],
      ),
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearText() {
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text(
            'Cupidatat velit nostrud labore pariatur elit cupidatat magna tempor ea non. Exercitation officia dolor aliquip labore aute irure labore eu cupidatat mollit. Excepteur sit in eiusmod minim aliqua cupidatat id laborum nostrud. Mollit laboris aute eiusmod sunt dolore magna. Cillum reprehenderit ea sunt magna ullamco nostrud deserunt mollit. Minim consequat laborum commodo amet qui laborum duis ut magna tempor tempor enim culpa. Dolor ipsum velit est consequat in aliquip excepteur.',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
