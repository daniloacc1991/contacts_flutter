import 'package:flutter/material.dart';
import 'my-switch-list-tile.dart';

class ListSwitch extends StatefulWidget {
  @override
  _ListSwitchState createState() => _ListSwitchState();
}

class _ListSwitchState extends State<ListSwitch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: List.generate(
            20,
            (i) => MySwitchListTile(
              index: i,
              callback: (value) {
                print("index is $i, con el valor $value");
                setState(() {});
              },
            ),
          ),
        ),
      ),
    );
  }
}
