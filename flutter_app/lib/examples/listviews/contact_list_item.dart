import 'package:flutter/material.dart';
import 'package:flutter_app/examples/listviews/contact.dart';


class ContactListItem extends StatelessWidget {
  final ContactModal _contactModal;

  ContactListItem(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        leading: new CircleAvatar(child: new Text(_contactModal.fullName[0])),
        title: new Text(_contactModal.fullName),
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
                content: new Text(_contactModal.fullName),
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
        subtitle: new Text(_contactModal.email));
  }
}
