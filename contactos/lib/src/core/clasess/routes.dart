import 'package:ejercicio_contatos/src/core/constants/route_paths.dart';
import 'package:ejercicio_contatos/src/core/models/contact.model.dart';
import 'package:ejercicio_contatos/src/page/contacts.dart';
import 'package:ejercicio_contatos/src/page/view_contact.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Contancts:
        return MaterialPageRoute(builder: (_) => Contacts());

      case RoutePaths.ViewContact:
        final event = settings.arguments as Contact;
        return MaterialPageRoute(builder: (_) => ViewContact(contact: event));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
