import 'package:flutter_code/common/BasePage.dart';
import 'package:flutter/material.dart';

class CBaseline extends BasePage {
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Baseline(
          baseline: 50.0,
          baselineType: TextBaseline.alphabetic,
          child: new Text(
            'TjTjTj',
            style: new TextStyle(
              fontSize: 16.0,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        ),
        new Baseline(
          baseline: 50.0,
          baselineType: TextBaseline.alphabetic,
          child: new Container(
            width: 30.0,
            height: 30.0,
            color: Colors.red,
           child: new Image.asset("assets/images/baseline.png"),
          ),
        ),
        new Baseline(
          baseline: 50.0,
          baselineType: TextBaseline.alphabetic,
          child: new Text(
            'RyRyRy',
            style: new TextStyle(
              fontSize: 35.0,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Map<String, WidgetBuilder> getRoutes() {
    // TODO: implement getRoutes
    return null;
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "Baseline";
  }
}

/**


 */
