import 'package:flutter_code/common/BasePage.dart';
import 'package:flutter/material.dart';
class CPadding extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return new Container(
      width: double.infinity,
      height: 140,
      color: Colors.red,
      child:
      new Padding(
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 40.0, 40.0),
        child: new Container(
          width: 100,
          height:50,
          alignment: Alignment.center,
          color: Colors.white70,
          child: new Text("Padding"),
            ),
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
    return "Padding";
  }

}

/**
    Padding的布局分为两种情况：

    当child为空的时候，会产生一个宽为left+right，高为top+bottom的区域；

    当child不为空的时候，Padding会将布局约束传递给child，根据设置的padding属性，
    缩小child的布局尺寸。然后Padding将自己调整到child设置了padding属性的尺寸，在child周围创建空白区域。

    属性:
    padding：padding的类型为EdgeInsetsGeometry，
    EdgeInsetsGeometry是EdgeInsets以及EdgeInsetsDirectional的基类。

*/