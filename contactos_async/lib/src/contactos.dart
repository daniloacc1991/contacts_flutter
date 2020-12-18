import 'package:contactos_async/src/providers/contactos.provider.dart';
import 'package:flutter/material.dart';

import 'models/contacto.model.dart';

class Contactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: _loadContactos(context),
      ),
    );
  }

  Widget _loadContactos(BuildContext context) {
    return FutureBuilder(
        future: contactoProvider.loadFile(),
        builder: (context, AsyncSnapshot<List<Contact>> snapshot) {
          if (snapshot.hasData) {
            return _getListView(snapshot.data);
          } else {
            return Center(
              child: SizedBox(
                child: CircularProgressIndicator(),
                height: 100.0,
                width: 100.0,
              ),
            );
          }
        });
  }

  ListView _getListView(List<Contact> contacts) {
    return ListView(
      children: List.generate(
        contacts.length,
        (index) => Card(
          child: ListTile(
            title: Text(
              contacts[index].nombres,
              style: TextStyle(fontSize: 20.0),
            ),
            leading: CircleAvatar(
              child: Text(
                contacts[index].icono,
                style: TextStyle(fontFamily: 'MaterialIcons'),
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: null,
          ),
        ),
      ),
    );
  }
}
