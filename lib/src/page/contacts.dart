import 'package:ejercicio_contatos/src/core/constants/route_paths.dart';
import 'package:ejercicio_contatos/src/core/models/contact.model.dart';
import 'package:ejercicio_contatos/src/page/view_contact.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  final _contacts = ['Danilo', 'Victor', 'Alejandro', 'Edwin', 'Miguel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contactos'),
      ),
      body: ListView(
        children: getContacts(context),
      ),
    );
  }

  List<Card> getContacts(BuildContext context) {
    return this
        ._contacts
        .map((el) => newListTitle(name: el, context: context))
        .toList();
  }

  Card newListTitle({String name, BuildContext context}) {
    Contact contact = Contact(name: name, tel: 3209028025);
    return Card(
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(fontSize: 20.0),
        ),
        subtitle: Text('3209028025'),
        leading: CircleAvatar(
          child: Text(name.substring(0, 1).toUpperCase()),
        ),
        // leading: FlutterLogo(
        //   size: 50,
        // ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {
          Navigator.of(context)
              .pushNamed(RoutePaths.ViewContact, arguments: contact);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ViewContact(
          //       contact: contact,
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
