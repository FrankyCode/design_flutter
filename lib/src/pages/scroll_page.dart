import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageOne(),
          _pageTwo(),
        ],
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _texts(),
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
          fit: BoxFit.cover,
        ));
  }

  Widget _texts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Text(
            '11º',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pageTwo() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _button(),
      ],
    );
  }

  Widget _button() {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        shape: StadiumBorder(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: Text('Welcome', style: TextStyle(fontSize: 20.0),)),
        onPressed: (){},
      ),
    );
  }
}
