import 'package:flutter/material.dart';
import 'package:flutter_code/idea/DataTools.dart';

class ListViewMainPage extends StatefulWidget{
  @override
  _ListViewMainPageState createState() =>new _ListViewMainPageState();


}

class _ListViewMainPageState extends State<ListViewMainPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          //title居中
          centerTitle: true ,
          title:Text("Listview"),
//        actions: <Widget>[
//          IconButton(
//            //icon:Icon(Icons.keyboard_backspace)
//          )
//        ],



        ),
      body: new ListView.builder(itemBuilder:(context, index){
        return buildItem(context, index);
      },itemCount: listViewItemLs.length)
    );
    // TODO: implement build
  }
  //ListView的Item
  Widget buildItem(BuildContext context, int index) {
    return new Text(listViewItemLs[index].subTitle,style:new TextStyle(height:2.0));
  }



}


