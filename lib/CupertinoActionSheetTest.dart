import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetTest extends StatefulWidget {
  @override
  CupertinoActionSheetTestState createState() =>
      CupertinoActionSheetTestState();
}

class CupertinoActionSheetTestState extends State<CupertinoActionSheetTest> {
  String _message;

  @override
  void initState() {
    super.initState();
    _message = '';
  }

  void _setMessage(message) {
    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Text(
              _message,
              style:
              DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.5),
            ),
          ),
          CupertinoButton(
            color: Colors.blue,
            borderRadius: new BorderRadius.circular(30.0),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoActionSheet(
                        title: const Text('選択した項目が画面に表示されます'),
                        actions: <Widget>[
                          CupertinoActionSheetAction(
                            child: const Text('テスト1'),
                            onPressed: () {
                              _setMessage('テスト1');
                              Navigator.pop(context, 'テスト1');
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: const Text('テスト2'),
                            onPressed: () {
                              _setMessage('テスト2');
                              Navigator.pop(context, 'テスト2');
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: const Text('テスト3'),
                            onPressed: () {
                              _setMessage('テスト3');
                              Navigator.pop(context, 'テスト3');
                            },
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: const Text('キャンセル'),
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context, 'キャンセル');
                          },
                        ));
                  });
            },
            child: Text('選択してください'),
          ),
        ]);
  }
}
