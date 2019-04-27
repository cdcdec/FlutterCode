import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/examples/custom_fonts/customFontsMain.dart';
import 'package:flutter_app/examples/gradient_backgroundcolor/main.dart';
import 'package:flutter_app/examples/listviews/listViewMain.dart';
import 'package:flutter_app/examples/navigation_drawer/NavigationDrawerMain.dart';
import 'package:flutter_app/examples/stateless.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    return MaterialApp(
      home: ListViewMain(),

      theme: new ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyPage extends StatefulWidget {
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State {

  final List<String> _titles = ['首页', '产品', '更多'];
  final List<Widget> _pageContents = [
    Text('This is Home page',
        textAlign: TextAlign.left,
        style: new TextStyle(
          color: Colors.purple,
          fontSize: 40.0,
        )),
    Text('This is Product page',
        textAlign: TextAlign.left,
        style: new TextStyle(
          color: Colors.purple,
          fontSize: 40.0,
        )),
   /* Text('This is More page',
        textAlign: TextAlign.left,
      style: new TextStyle(
      color: Colors.purple,
      fontSize: 40.0,
    ))*/
   new StateLess()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar( //作为整个页面框架的底部标签栏
        currentIndex: _selectedIndex, //当前定位的索引
        onTap: (index) { //点击标签栏的事件监听方法
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[ //标签栏项集合
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(_titles[0]),
              activeIcon:Icon(Icons.access_alarm),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text(_titles[1]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text(_titles[2]),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) { //标签栏对应的页面创建
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(_titles[index]),
              ),
              child: Center(
                child: _pageContents[index],
                //child: _pageContents[index],
              ),
            );
          },
        );
      },
    );
  }
}
