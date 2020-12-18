import 'dart:convert';
import 'package:contactos_async/src/models/contacto.model.dart';
import 'package:flutter/services.dart' show rootBundle;

class ContactosProvider {
  ContactosProvider();

  Future<List<Contact>> loadFile() async {
    final file = await rootBundle.loadString('assets/contactos.json');
    List contactslist = jsonDecode(file);
    await Future.delayed(const Duration(milliseconds: 1000));
    return contactslist.map((e) => Contact.fromJson(e)).toList();
  }
}

final contactoProvider = new ContactosProvider();
