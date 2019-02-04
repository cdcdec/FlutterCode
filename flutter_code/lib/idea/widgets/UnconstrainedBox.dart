import 'package:flutter_code/common/BasePage.dart';
import 'package:flutter/material.dart';
class CUnconstrainedBox extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    //在一个宽高200.0的Container上添加一个约束最大最小宽高的ConstrainedBox，
    // 实际的显示中，则是一个宽高为150.0的区域。
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
    这个控件的作用是添加额外的限制条件（constraints）到child上。


    constraints：添加到child上的额外限制条件，其类型为BoxConstraints.
    BoxConstraints的作用是限制各种最大最小宽高。
    另外：double.infinity在widget布局的时候是合法的，
    例如想最大的扩展宽度，可以将宽度值设为double.infinity。

*/