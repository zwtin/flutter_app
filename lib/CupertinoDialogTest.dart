import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/RequestView.dart';

class CupertinoDialogTest extends StatefulWidget {
  @override
  CupertinoDialogTestState createState() => CupertinoDialogTestState();
}


class CupertinoDialogTestState extends State<CupertinoDialogTest> {
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoButton(
            color: Colors.blue,
            borderRadius: new BorderRadius.circular(30.0),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                    builder: (context) => RequestView(), fullscreenDialog: true),
              );
            },
            child: Text('ダイアログを表示します'),
          ),
        ]);
  }
}
