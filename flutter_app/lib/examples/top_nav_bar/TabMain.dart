import 'package:flutter/material.dart';
import 'package:flutter_app/examples/top_nav_bar/SecondTab.dart';
import 'package:flutter_app/examples/top_nav_bar/ThirdTab.dart';
import 'package:flutter_app/examples/top_nav_bar/FirstTab.dart';
class TabMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TabMainState();
  }
}


class TabMainState extends State<TabMain> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        new Tab(
          // set icon to the tab
          icon: new Icon(Icons.favorite),
        ),
        new Tab(
          icon: new Icon(Icons.adb),
        ),
        new Tab(
          icon: new Icon(Icons.airport_shuttle),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
        appBar: PreferredSize(
          child:  new AppBar(
            // Title
              //title: new Text("Using Tabs"),
              // Set the background color of the App Bar
              backgroundColor: Colors.blue,
              // Set the bottom property of the Appbar to include a Tab Bar
              bottom: getTabBar()),
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.075)),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[new FirstTab(), new SecondTab(), new ThirdTab()]));
  }

}