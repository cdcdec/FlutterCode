import 'package:flutter/material.dart';
import 'package:flutter_code/idea/DataTools.dart';
import 'package:flutter_code/idea/network/http_page1.dart';

class NetWorkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _NetWorkPageState();
  }
}

class _NetWorkPageState extends State<NetWorkPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          //title居中
          centerTitle: true,
          title: Text("NetWork"),
        ),
        body: new ListView.separated(
          itemCount: netWorkItemLs.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (context, index) {
            return ListTile(
              title: buildItem(context, index),
              onTap:(){
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) {
                        return new Http1Page(post: fetchPost());
                    }
                ));
              },
            );
          },
        ));
  }

  Widget buildItem(BuildContext context, int index) {
    return new Padding(
        padding: new EdgeInsets.only(left: 25.0),
        child: new Text(netWorkItemLs[index].subTitle,
            textAlign: TextAlign.left,
            style: new TextStyle(
              height: 3.0,
              fontSize: 15.0,
              letterSpacing: 2.0,
              wordSpacing: 3.0,
            )));
  }
}
