import 'package:flutter/material.dart';
import 'package:flutter_code/common/BasePage.dart';
import 'package:flutter_code/idea/widgets/Align.dart';
import 'package:flutter_code/idea/widgets/AspectRatio.dart';
import 'package:flutter_code/idea/widgets/ConstrainedBox.dart';
import 'package:flutter_code/idea/widgets/FittedBox.dart';
import 'package:flutter_code/idea/widgets/UnconstrainedBox.dart';

const List<String> singleLayoutWidgets = [
  "Container",
  "Padding",
  "Center",
  "Align",
  "FittedBox",
  "AspectRatio",
  "ConstrainedBox",
  "UnconstrainedBox",
  "Baseline",
  "FractionallySizedBox",
  "IntrinsicHeight",
  "IntrinsicWidth",
  "LimitedBox",
  "Offstage",
  "OverflowBox",
  "SizedBox",
  "SizedOverflowBox",
  "Transform",
  "CustomSingleChildLayout",
];

const List<String> multiLayoutWidgets = [
  "Row",
  "Column",
  "Stack",
  "IndexedStack",
  "GridView",
  "Flow",
  "Table",
  "Wrap",
  "ListBody",
  "ListView",
  "CustomMultiChildLayout",
];
class WidgetMainPage extends BasePage {


  @override
  Widget getHomeWidget(BuildContext context) {
    List<String> layoutWidgets = [];
    layoutWidgets.add("--Single-child layout widgets--");
    layoutWidgets.addAll(singleLayoutWidgets);
    layoutWidgets.add("--Multi-child layout widgets--");
    layoutWidgets.addAll(multiLayoutWidgets);
    // TODO: implement getHomeWidget
    return new ListView.builder(
      itemBuilder: (BuildContext buildContext, int index) {
        return new ListTile(
          title: new LayoutListItem(
            index: index,
            title: layoutWidgets[index],
            onPress: () {
              String item = layoutWidgets[index];
              if (item.startsWith("--")) {
                return;
              }
              navigateToPage(buildContext, layoutWidgets[index]);
            },
          ),
        );
      },
      itemCount: (singleLayoutWidgets.length + multiLayoutWidgets.length + 2),
    );
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "widget";
  }

  void navigateToPage(BuildContext context, String page) {
    print("Page:$page");
    Navigator.of(context).pushNamed('/$page');
  }

  @override
  Map<String, WidgetBuilder> getRoutes() {
    // TODO: implement routes
    return <String, WidgetBuilder>{
//      '/Container': (_) => new LYContainer(),
//      '/Padding': (_) => new LYPadding(),
//      '/Center': (_) => new LYCenter(),
      '/Align': (_) => new CAlign(),
      '/FittedBox': (_) => new CFittedBox(),
      '/AspectRatio': (_) => new CAspectRatio(),
      '/ConstrainedBox': (_) => new CConstrainedBox(),
      '/UnconstrainedBox': (_) => new CUnconstrainedBox(),
//      '/Baseline': (_) => new LYBaseline(),
//      '/FractionallySizedBox': (_) => new LYFractionallySizedBox(),
//      '/IntrinsicHeight': (_) => new LYIntrinsicHeight(),
//      '/IntrinsicWidth': (_) => new LYIntrinsicWidth(),
//      '/LimitedBox': (_) => new LYLimitedBox(),
//      '/Offstage': (_) => new LYOffstage(),
//      '/OverflowBox': (_) => new LYOverflowBox(),
//      '/SizedBox': (_) => new LYSizedBox(),
//      '/SizedOverflowBox': (_) => new LYSizedOverflowBox(),
//      '/Transform': (_) => new LYTransform(),
//      '/CustomSingleChildLayout': (_) => new LYCustomSingleChildLayout(),
//
//      '/Row': (_) => new LYRow(),
//      '/Column': (_) => new LYColumn(),
//      '/Stack': (_) => new LYStack(),
//      '/IndexedStack': (_) => new LYIndexedStack(),
//      '/GridView': (_) => new LYGridView(),
//      '/Flow': (_) => new LYFlow(),
//      '/Table': (_) => new LYTable(),
//      '/Wrap': (_) => new LYWrap(),
//      '/ListBody': (_) => new LYListBody(),
//      '/ListView': (_) => new LYListView(),
//      '/CustomMultiChildLayout': (_) => new LYCustomMultiChildLayout(),
    };
  }
}

class LayoutListItem extends StatelessWidget {
  LayoutListItem({this.index, this.title, this.onPress});

  final int index;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onPress,
      child: new Center(
        child: new Text(
          "$title",
          style: new TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }
}
