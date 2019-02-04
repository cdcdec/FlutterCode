import 'package:flutter_code/common/BasePage.dart';
import 'package:flutter/material.dart';
class CAspectRatio extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return new Container(
      height: 200.0,
      child: new AspectRatio(
        aspectRatio: 1.5,
        child: new Container(
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "AspectRatio";
  }

  @override
  Map<String,WidgetBuilder> getRoutes() {
    // TODO: implement routes
    return null;
  }

}

/**
    AspectRatio的作用是调整child到设置的宽高比

    new Container(
    height: 200.0,
    child: new AspectRatio(
    aspectRatio: 1.5,
    child: new Container(
    color: Colors.red,
    ),
    ),
    );

    aspectRatio:宽高比
    定义了一个高度为200的区域，内部AspectRatio比率设置为1.5，最终AspectRatio的是宽300高200的一个区域

    AspectRatio的布局行为分为两种情况：

    1:AspectRatio首先会在布局限制条件允许的范围内尽可能的扩展，
    widget的高度是由宽度和比率决定的，类似于BoxFit中的contain，按照固定比率去尽量占满区域。

    2:如果在满足所有限制条件过后无法找到一个可行的尺寸，
    AspectRatio最终将会去优先适应布局限制条件，而忽略所设置的比率。

*/
