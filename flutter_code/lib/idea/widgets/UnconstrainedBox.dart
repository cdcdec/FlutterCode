import 'package:flutter_code/common/BasePage.dart';
import 'package:flutter/material.dart';
class CUnconstrainedBox extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return new UnconstrainedBox(
      child: new Container(
        width: 200,
        height: 200.0,
        color: Colors.red,
      ),
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
    return "UnconstrainedBox";
  }

}

/**
    不添加任何约束条件到child上，让child按照其原始的尺寸渲染

*/