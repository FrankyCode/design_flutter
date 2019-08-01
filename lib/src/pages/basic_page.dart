import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createAccions(),
            _createText(),
            
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Image(
      height: 200.0,
      width: double.infinity,
      fit: BoxFit.cover,
      image: NetworkImage(
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
    );
  }

  Widget _createTitle() {
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
                    'Title',
                    style: styleTitle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'SubTitulo',
                    style: styleSubTitle,
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

  Widget _createAccions() {
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

  Widget _accion(IconData icon, String text) {
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
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _createText() {
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
