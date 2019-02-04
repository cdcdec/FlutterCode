import 'package:flutter/material.dart';
import 'package:flutter_code/common/BasePage.dart';
class CAlign extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return new Container(
      color: Colors.red,
      child: new Align(
        //alignment: Alignment.center, 默认行为
        alignment:const Alignment(0.5, 0.5),
        widthFactor: 2.0,
        heightFactor: 2.0,
        child: new Container(
          child: new Text("Align"),
          color: Colors.amber,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "Align";
  }

  @override
  Map<String,WidgetBuilder> getRoutes() {
    // TODO: implement routes
    return null;
  }

}

/****
    当widthFactor和heightFactor为null的时候，
    当其有限制条件的时候，Align会根据限制条件尽量的扩展自己的尺寸，
    当没有限制条件的时候，会调整到child的尺寸；

    当widthFactor或者heightFactor不为null的时候，Aligin会根据factor属性，
    扩展自己的尺寸，例如设置widthFactor为2.0的时候，那么，Align的宽度将会是child的两倍.


    //设置一个宽高为child两倍区域的Align，其child处在正中间。

    new Align(
    alignment: Alignment.center,
    widthFactor: 2.0,
    heightFactor: 2.0,
    child: new Text("Align"),
    )

    Alignment

    x:-1:最左边，1：最右边,0:中间
    The distance fraction in the horizontal direction.
    A value of -1.0 corresponds to the leftmost edge. A value of 1.0
    corresponds to the rightmost edge. Values are not limited to that range;
    values less than -1.0 represent positions to the left of the left edge,
    and values greater than 1.0 represent positions to the right of the right
    edge.

    y:
    -1:最上边，1：最下边，0：中间
    The distance fraction in the vertical direction.
    A value of -1.0 corresponds to the topmost edge. A value of 1.0
    corresponds to the bottommost edge. Values are not limited to that range;
    values less than -1.0 represent positions above the top, and values
    greater than 1.0 represent positions below the bottom.



    */