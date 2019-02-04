import 'package:flutter/material.dart';
import 'package:flutter_code/common/BasePage.dart';

class CFittedBox extends BasePage{
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return new Container(
      color: Colors.amberAccent,
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: new FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.center,
        child: new Container(
          color: Colors.red,
          child: new Text(
            "BoxFit.fill",
            style: const TextStyle(fontSize: 20.0),
          ),
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
    return "FittedBox";
  }

}

/**
    FittedBox会在自己的尺寸范围内缩放并且调整child位置，使得child适合其尺寸.

    如果外部有约束的话，按照外部约束调整自身尺寸，然后缩放调整child，按照指定的条件进行布局；
    如果没有外部约束条件，则跟child尺寸一致，指定的缩放以及位置属性将不起作用。

    fit：缩放的方式，
    默认的属性是BoxFit.contain，child在FittedBox范围内，尽可能的大，
    但是不超出其尺寸。这里注意一点，contain是保持着child宽高比的大前提下，尽可能的填满，
    一般情况下，宽度或者高度达到最大值时，就会停止缩放.




*/