import 'package:flutter/material.dart';
import 'index/index.dart';

void main() => runApp(new ZhiHu());

class ZhiHu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //是否显示 debug 标签
      debugShowCheckedModeBanner: false,
      title: "知乎-高仿版",
      home: new Index(),
    );
  }

}