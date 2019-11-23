import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Issue.dart';

class MyPage extends StatefulWidget {
  @override
  MyPageState createState() =>
      MyPageState();
}

class MyPageState extends State<MyPage> {

  @override
  void initState() {
    super.initState();
  }

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
    );
  }
}
