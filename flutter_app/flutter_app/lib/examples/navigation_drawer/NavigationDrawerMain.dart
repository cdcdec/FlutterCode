import 'package:flutter/material.dart';
import 'package:flutter_app/examples/navigation_drawer/account.dart';
import 'package:flutter_app/examples/navigation_drawer/home.dart';
import 'package:flutter_app/examples/navigation_drawer/settings.dart';

class NaviDrawerMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomeScreen(),
      routes: <String, WidgetBuilder>{
        // define the routes
        SettingsScreen.routeName: (
            BuildContext context) => new SettingsScreen(),
        AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
      },
    );
  }
}
