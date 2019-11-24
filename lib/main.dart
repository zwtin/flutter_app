import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ExhibitPage.dart';
import 'MyOriginalPage.dart';
import 'MyPage.dart';
import 'package:flutter_app/CupertinoActionSheetTest.dart';
import 'package:flutter_app/CupertinoDialogTest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Issues',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Issues'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) => CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text('自作ページ'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.clock),
              title: Text('テストページ1'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              title: Text('テストページ2'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell),
              title: Text('出品'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.car),
              title: Text('マイページ'),
            ),
          ],
          onTap: (index) {
            switch (index) {
            case 0:
              currentIndex = 0;
              break;
            case 1:
              currentIndex = 1;
              break;
            case 2:
              currentIndex = 2;
              break;
            case 3:
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                    builder: (context) => ExhibitPage(), fullscreenDialog: true),
              );
              break;
            case 4:
              currentIndex = 4;
              break;
            }
          }
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              switch (currentIndex) {
                case 0:
                  return MyOriginalPage();
                  break;
                case 1:
                  return CupertinoDialogTest();
                  break;
                case 2:
                  return CupertinoActionSheetTest();
                  break;
                case 3:
                  break;
                case 4:
                  return MyPage();
                  break;
              }
            },
          );
        },
      );
}
