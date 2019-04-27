import 'package:flutter/material.dart';
import 'package:flutter_app/examples/listviews/contact.dart';
import 'package:flutter_app/examples/listviews/contact_list.dart';

class ListViewMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using Listview"),
      ),
      body: new ContactPage(),
    );
  }
}

class ContactPage  extends  StatelessWidget{
  _buildContactList() {
    return <ContactModal>[
      const ContactModal(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModal(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModal(
          fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
      const ContactModal(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModal(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModal(
          fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
      const ContactModal(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModal(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModal(
          fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
    ];
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(body: new ContactsList(_buildContactList()));
  }

}