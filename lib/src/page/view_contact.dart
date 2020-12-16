import 'package:ejercicio_contatos/src/core/models/contact.model.dart';
import 'package:flutter/material.dart';

class ViewContact extends StatelessWidget {
  final Contact contact;
  ViewContact({this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del Contacto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              this.contact.name,
              style: TextStyle(fontSize: 50.0),
            ),
            Text(
              '${this.contact.tel}',
              style: TextStyle(fontSize: 50.0),
            )
          ],
        ),
      ),
    );
  }
}
