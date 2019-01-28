import 'package:flutter/material.dart';
import 'package:flutter_code/idea/DataTools.dart';
import 'package:flutter_code/idea/listview/listview_main_page.dart';

//This class inherits from a class marked as @immutable, and therefore should be immutable (all instance fields must be final).
class IdeaPage extends StatefulWidget {
  @override
  _IdeaPageState createState(){

    return new _IdeaPageState();
  }

}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: new AppBar(
            title: new Text('想法'),
            actions: <Widget>[
              new Container(

              )
            ],
          ),
          body: new ListView.separated(
            itemCount: widgetItemList.length,
            itemBuilder: (context, index) {
              return new ListTile(
                leading: new Icon(Icons.ac_unit),
                title: new Text('${widgetItemList[index].title}'),
                subtitle: new Text('${widgetItemList[index].subTitle}'),
                trailing:new Icon(Icons.access_alarm),
                contentPadding:new EdgeInsets.all(5.0),
                onTap:(){
                  var titleStr=widgetItemList[index].title;
                  if(titleStr.contains("ListView")){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) {
                          if(titleStr.contains("ListView")){
                            return new ListViewMainPage();
                          }
                        }
                    ));
                  }
                  }
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return new Divider(height: 1.0, color: Colors.blue,indent:30.0);
            },
          ),
        );
  }

}