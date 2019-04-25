import 'package:flutter/material.dart';
abstract  class BasePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BasePageState();
  }

  String getTitle();

  Widget getHomeWidget(BuildContext context);

  Map<String, WidgetBuilder> getRoutes();


}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        //是否显示 debug 标签
        debugShowCheckedModeBanner: false,
        //是否显示网格 默认false
        debugShowMaterialGrid: false,
        theme: new ThemeData(
        primarySwatch:Colors.red,
        primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
    ),
    home: Scaffold(
      appBar: new AppBar(
        //title居中
          centerTitle: true,
          title: Text(widget.getTitle()),
          leading: IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: () {
                Navigator.pop(context);
              })),
      body:widget.getHomeWidget(context)
    ),
    routes: (widget.getRoutes()==null) ? <String, WidgetBuilder>{} : widget.getRoutes(),
    );
  }

}