import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AlertDialogState();
  }

}

class AlertDialogState extends State<AlertDialogWidget>{

  AlertDialog dialog = new AlertDialog(
      content: new Text(
        "Hello World!",
        style: new TextStyle(fontSize: 30.0),
      ));


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Using Alert Dialog"),
        ),
        body: new Container(
          child: new Center(
            child: new RaisedButton(
                child: new Text("Hit to alert!"),
                // On press of the button
                onPressed: () {
                  // Show dialog
                  showDialog(context: context, builder: (BuildContext context) => dialog);
                }),
          ),
        ));
  }

}