import 'package:flutter_code/common/BasePage.dart';
import 'package:flutter/material.dart';

class CContainer extends BasePage {
  @override
  Widget getHomeWidget(BuildContext context) {
    // TODO: implement getHomeWidget
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: new SingleChildScrollView(
        child: new Wrap(
          children: <Widget>[
            new Container(
              constraints: new BoxConstraints.expand(
                height:
                Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
              ),
              decoration: new BoxDecoration(
                border: new Border.all(width: 2.0, color: Colors.red),
                color: Colors.grey,
                borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                image: new DecorationImage(
                  image: new NetworkImage(
                      'http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
                  centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                ),
              ),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: new Text('Hello World',
                  style: Theme
                      .of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.black)),
              //transform: new Matrix4.rotationZ(0.3),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 105.0),
              child: new CRoundButton(
                title: new Text(
                  "I am a default button",
                  style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                disabled: false,
                onPress: () {
                  final snackBar = new SnackBar(content: new Text('Click One!!'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
              ),
            ),
            new Container(
              margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: new CRoundButton(
                width: 250.0,
                height: 80.0,
                backgroundColor: const Color(0xFF41CB39),
                activeBackgroundColor: const Color(0xB341CB39),
                disabledBackgroundColor: const Color(0x3341CB39),
                title: new Text(
                  "I am a custom button",
                  style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                disabled: false,
                onPress: () {
                  final snackBar = new SnackBar(content: new Text('Click Two!!'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
              ),
            ),
            new CRoundButton(
              title: new Text(
                "I`m a disabled button",
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              disabled: true,
              onPress: () {
                final snackBar = new SnackBar(content: new Text('Click Three!!'));
                Scaffold.of(context).showSnackBar(snackBar);
              },
            ),
          ],
        ),
      )
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
    return "Container";
  }
}


class CRoundButton extends StatefulWidget {
  static const defaultBackgroundColor = const Color(0xFF8B5FFE);
  static const defaultActiveBackgroundColor = const Color(0xB38B5FFE);
  static const defaultDisabledBackgroundColor = const Color(0x338B5FFE);

  CRoundButton({
    this.title,
    this.onPress,
    this.height = 52.0,
    this.width = double.infinity,
    this.disabled = false,
    this.backgroundColor = defaultBackgroundColor,
    this.activeBackgroundColor = defaultActiveBackgroundColor,
    this.disabledBackgroundColor = defaultDisabledBackgroundColor,
  });

  final Widget title;
  final Color backgroundColor, activeBackgroundColor, disabledBackgroundColor;
  final VoidCallback onPress;
  final double height, width;
  final bool disabled;

  @override
  _CRoundButtonState createState() => new _CRoundButtonState();
}

class _CRoundButtonState extends State<CRoundButton> {
  Color currentColor;

  @override
  void initState() {
    super.initState();
    if (widget.disabled) {
      currentColor = widget.disabledBackgroundColor;
    } else {
      currentColor = widget.backgroundColor;
    }
  }

  @override
  void deactivate() {
    super.deactivate();
    currentColor = widget.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        if (widget.onPress != null && !widget.disabled) {
          widget.onPress();
        }
      },
      onTapDown: (TapDownDetails details) {
        if (!widget.disabled) {
          setState(() {
            currentColor = widget.activeBackgroundColor;
          });
        }
      },
      onTapUp: (TapUpDetails details) {
        if (!widget.disabled) {
          setState(() {
            currentColor = widget.backgroundColor;
          });
        }
      },
      onTapCancel: () {
        if (!widget.disabled) {
          setState(() {
            currentColor = widget.backgroundColor;
          });
        }
      },
      child: new Container(
        decoration: new BoxDecoration(
          color: currentColor,
          borderRadius:
          new BorderRadius.all(new Radius.circular(widget.height / 2.0)),
        ),
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        child: widget.title,
      ),
    );
  }
}


/**

    Container的组成如下：

    最里层的是child元素；
    child元素首先会被padding包着；
    然后添加额外的constraints限制；
    最后添加margin。

    Container的绘制的过程如下：

    首先会绘制transform效果；
    接着绘制decoration；
    然后绘制child；
    最后绘制foregroundDecoration。

    属性解析:

    key：Container唯一标识符，用于查找更新。

    alignment：控制child的对齐方式，如果container或者container父节点尺寸大于child的尺寸，这个属性设置会起作用，有很多种对齐方式。

    padding：decoration内部的空白区域，如果有child的话，child位于padding内部。padding与margin的不同之处在于，padding是包含在content内，而margin则是外部边界，设置点击事件的话，padding区域会响应，而margin区域不会响应。

    color：用来设置container背景色，如果foregroundDecoration设置的话，可能会遮盖color效果。

    decoration：绘制在child后面的装饰，设置了decoration的话，就不能设置color属性，否则会报错，此时应该在decoration中进行颜色的设置。

    foregroundDecoration：绘制在child前面的装饰。

    width：container的宽度，设置为double.infinity可以强制在宽度上撑满，不设置，则根据child和父节点两者一起布局。

    height：container的高度，设置为double.infinity可以强制在高度上撑满。

    constraints：添加到child上额外的约束条件。

    margin：围绕在decoration和child之外的空白区域，不属于内容区域。

    transform：设置container的变换矩阵，类型为Matrix4。

    child：container中的内容widget。

    Container是最经常用到的一个widget。
    在实际使用过程中，在以下情况会使用到Container，当然并不是绝对的，
    也可以通过其他widget来实现。

    需要设置间隔（这种情况下，如果只是单纯的间隔，也可以通过Padding来实现）；
    需要设置背景色；
    需要设置圆角或者边框的时候（ClipRRect也可以实现圆角效果）；
    需要对齐（Align也可以实现）；
    需要设置背景图片的时候（也可以使用Stack实现）。

 */
