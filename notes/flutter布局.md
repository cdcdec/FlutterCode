# flutter布局

###  Scaffold 脚手架 --->StatefulWidget

   一般来说，总是定义一个 Scaffold 当作实参传入到 MaterialApp 的 home 属性。Scaffold定义了一个 UI 框架，这个框架包含 头部导航栏，body，右下角浮动按钮，底部导航栏等。

### ListView-->BoxScrollView-->ScrollView-->StatelessWidget
padding:EdgeInsetsGeometry new EdgeInsets.symmetric(vertical: 8.0)  LiseView在水平和垂直方向的padding距离;
children:const <Widget>[]
semanticChildCount:item的个数
reverse：将数据按照相反的顺序显示，默认值是false  是否翻转
shrinkWrap:是否根据子widget的总长度来设置ListView的长度    默认值false
scrollDirection:取值Axis.vertical  horizontal。设置滚动的方向，horizontal（水平）或vertical（垂直）
itemExtent：滚动方向子控件的长度，垂直方向即为高度，水平方向即为宽度
controller：ScrollController， 用来控制滚动位置及监听滚动事件


###  Divider  分割线

height：默认16.0  高度
indent：离左边的距离  默认是0.0
color：颜色

没有离右边的距离

可以使用Padding再包装一层

```
   /*灰色分割线*/
    var divider = Divider(
      color: Colors.grey,
    );
    var dividerPadding=new Padding(
      child: divider,
      padding: EdgeInsets.only(
          left:30.0,
          top:0,
          right:30.0,
          bottom:0
      )

```

### Padding-->SingleChildRenderObjectWidget-->RenderObjectWidget-->Widget

给子节点设置padding属性。
当child为空的时候，会产生一个宽为left+right，高为top+bottom的区域；
当child不为空的时候，Padding会将布局约束传递给child，根据设置的padding属性，缩小child的布局尺寸。然后Padding将自己调整到child设置了padding属性的尺寸，在child周围创建空白区域。

属性:
padding:padding的类型为EdgeInsetsGeometry，EdgeInsetsGeometry是EdgeInsets以及EdgeInsetsDirectional的基类。在实际使用中不涉及到国际化，例如适配阿拉伯地区等，一般都是使用EdgeInsets。EdgeInsetsDirectional光看命名就知道跟方向相关，因此它的四个边距不限定上下左右，而是根据方向来定的。

child:子控件

https://juejin.im/post/5c88d6c4f265da2de970bc24  ListTitle







