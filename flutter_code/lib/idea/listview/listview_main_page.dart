import 'package:flutter/material.dart';
import 'package:flutter_code/idea/DataTools.dart';

class ListViewMainPage extends StatefulWidget {
  @override
  _ListViewMainPageState createState() => new _ListViewMainPageState();
}

class _ListViewMainPageState extends State<ListViewMainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //是否显示 debug 标签
        debugShowCheckedModeBanner: false,
        title: 'Text widget',
        theme: new ThemeData(
          primarySwatch:Colors.red,
          primaryColor: Colors.lightBlue[800],
         // accentColor: Colors.cyan[600],
        ),
        home: Scaffold(
            appBar: new AppBar(
                //title居中
                centerTitle: true,
                title: Text("Listview"),
                leading: IconButton(
                    icon: Icon(Icons.keyboard_backspace),
                    onPressed: () {
                      Navigator.pop(context);
                    })),
            body: new ListView.builder(
                itemBuilder: (context, index) {
                 return buildItem(context, index);
                },
                itemCount: listViewItemLs.length)));
  }

  Widget buildItem(BuildContext context, int index) {
    return Container(
      height: 60,
      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 10.0),
      alignment: Alignment.centerLeft,
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: Colors.white70,
      ),
      child: new Text(listViewItemLs[index].subTitle,
          textAlign: TextAlign.center,
          style: new TextStyle(
            height: 0.5,
            fontSize: 15.0,
            letterSpacing: 2.0,
            wordSpacing: 3.0,
          )),
    );
  }

  Widget item(){
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(5.0),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(5.0),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            padding: EdgeInsets.all(5.0),
          ),
          flex: 1,
        ),
      ],
    );
  }
}
