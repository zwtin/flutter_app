import 'package:flutter/material.dart';

class ExhibitPage extends StatefulWidget {
  @override
  ExhibitPageState createState() =>
      ExhibitPageState();
}

class ExhibitPageState extends State<ExhibitPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'マイページ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
              fontSize: 18
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 100,
          width: 100,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
