import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/examples/listviews/contact.dart';
import 'package:flutter_app/examples/listviews/contact_list_item.dart';

class ContactsList extends StatelessWidget {
  final List<ContactModal> _contactModal;

  ContactsList(this._contactModal);

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var num=0;
    //产生随机数 从0到3之间  包括0不包括3
    num=rng.nextInt(3);
    switch(num){
      case 0:
        return createListView1();
        break;
      case 1:
        return createListView2();
        break;
      case 2:
        return createListView3();
        break;
    }
    return createListView1();

  }

  List<ContactListItem> _buildContactsList() {
    return _contactModal
        .map((contact) => new ContactListItem(contact))
        .toList();
  }


  ListView createListView4(){
    return ListView.custom(
        childrenDelegate: null);
  }

  ListView createListView3() {
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

    );
    return new ListView.separated(
        itemCount: 120,
        itemBuilder: (context, index) {
          return new ListTile(
              leading: new CircleAvatar(child: new Text("陈")),
              title: new Text("陈$index"),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) {
                    return new AlertDialog(
                      title: new Text(
                        "Hey Hey!",
                        style: new TextStyle(
                          color: const Color(0xFF00D6F7),
                          fontFamily: "Lazer84",
                          fontSize: 22.0,
                        ),
                      ),
                      content: new Text("陈$index"),
                      actions: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(bottom: 8.0, right: 8.0),
                          child: new FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: new Text("OK"),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              subtitle: new Text("$index"));
        },
        separatorBuilder: (context, index) {
          return dividerPadding;
        });
  }

  ListView createListView2() {
    return new ListView.builder(
        itemCount: 120,
        itemBuilder: (context, index) {
          return new ListTile(
              leading: new CircleAvatar(child: new Text("陈")),
              title: new Text("陈$index"),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) {
                    return new AlertDialog(
                      title: new Text(
                        "Hey Hey!",
                        style: new TextStyle(
                          color: const Color(0xFF00D6F7),
                          fontFamily: "Lazer84",
                          fontSize: 22.0,
                        ),
                      ),
                      content: new Text("陈$index"),
                      actions: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(bottom: 8.0, right: 8.0),
                          child: new FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: new Text("OK"),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              subtitle: new Text("$index"));
        });
  }

  ListView createListView1() {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
      semanticChildCount: _contactModal.length,
      reverse: true,
      shrinkWrap: true,
      primary: false,
      itemExtent: 80,
      scrollDirection: Axis.vertical,
    );
  }
}
