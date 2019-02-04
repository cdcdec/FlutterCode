
import 'package:flutter/material.dart';
import 'package:flutter_code/common/BasePage.dart';

class CColumn extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return new Column(
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

  @override
  Map<String,WidgetBuilder> getRoutes() {
    // TODO: implement getRoutes
    return null;
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "Column";
  }

}