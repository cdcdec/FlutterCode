import 'package:flutter/material.dart';

import './fontsUtils.dart' as utils;

class CustomFontsMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CustomFontsState();
  }

}

class CustomFontsState extends State<CustomFontsMain>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        // Title
        title: new Text("Using Custom Fonts"),
      ),
      body: new Container(
        // Center the content
        child: new Center(
          // Add Text  The quick brown fox jumps over the lazy dog
          child: new Text("那只敏捷的棕色狐狸跳过了懒惰的狗 The quick brown fox jumps over the lazy dog ",
              // Center align text
              textAlign: TextAlign.center,
              // set a text style which defines a custom font
              style: utils.getCustomFontTextStyle()),
        ),
      ),
    );
  }

}