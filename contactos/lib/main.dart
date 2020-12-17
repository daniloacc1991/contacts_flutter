import 'package:ejercicio_contatos/src/core/clasess/routes.dart';
import 'package:ejercicio_contatos/src/core/constants/route_paths.dart';
import 'package:ejercicio_contatos/src/page/contacts.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      initialRoute: RoutePaths.Contancts,
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Contacts(),
    );
    return materialApp;
  }
}
