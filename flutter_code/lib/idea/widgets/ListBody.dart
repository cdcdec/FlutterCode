
import 'package:flutter/material.dart';
import 'package:flutter_code/common/BasePage.dart';

class CListBody extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        ListBody(
          mainAxis: Axis.vertical,
          reverse: false,
          children: <Widget>[
            Container(color: Colors.red, width: 50.0, height: 50.0,),
            Container(color: Colors.yellow, width: 50.0, height: 50.0,),
            Container(color: Colors.green, width: 50.0, height: 50.0,),
            Container(color: Colors.blue, width: 50.0, height: 50.0,),
            Container(color: Colors.black, width: 50.0, height: 50.0,),
            Container(color: Colors.red, width: 50.0, height: 1.0,),
          ],
        )],
    );
  }

  @override
  Map<String,WidgetBuilder> getRoutes() {
    // TODO: implement getRoutes
    return null;
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "ListBody";
  }

}