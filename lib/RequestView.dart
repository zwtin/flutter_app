import 'package:flutter/material.dart';

class RequestView extends StatefulWidget {
  @override
  RequestViewState createState() => RequestViewState();
}

class RequestViewState extends State<RequestView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '新規リクエスト',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
              fontSize: 18
          ),),
        backgroundColor: Color(0xFF0000FF),
      ),
      body: SafeArea(
        child: Column(

        ),
      )
    );
  }
}

