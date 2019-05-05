import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Counter People', home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  void _changePeople(int num) {
    setState(() {
      if (_people < 10 && _people >= 0 && num == 1) {
        _people += num;
      } else if (_people == 0 && num == -1) {
      } else if (_people < 10 && _people > 0) {
        _people += num;
      } else if (_people >= 10 && num == -1) {
        _people += num;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/3394.jpg',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'People: $_people',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Enter',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'Exit',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ],
              ),
            ),
            Text(
              _people < 10 && _people >= 0
                  ? 'You can enter!'
                  : 'The restaurant is full',
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            )
          ],
        )
      ],
    );
  }
}
