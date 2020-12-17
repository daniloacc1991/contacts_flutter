import 'package:ejercicio_contatos/src/core/models/contact.model.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ViewContact extends StatefulWidget {
  final Contact contact;
  ViewContact({this.contact});

  @override
  _ViewContactState createState() => _ViewContactState();
}

class _ViewContactState extends State<ViewContact> {
  int lengthStates = 20;
  List<bool> _lstState = new List<bool>();
  List<Color> _lstColors = new List<Color>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del Contacto'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                _createHeader(),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: ListView(
                    children: _generatorSwitch(),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: _getButtons(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _generatorSwitch() {
    List<SwitchListTile> lst = new List<SwitchListTile>();
    for (int i = 0; i < 20; i++) {
      this._lstState.add(false);
      this._lstColors.add(_generateColor());
      lst.add(SwitchListTile(
        title: Text('Switch $i'),
        subtitle: Text('Subtitle $i'),
        activeColor: this._lstColors[i],
        // activeTrackColor: this._lstColors[i],
        onChanged: (bool value) {
          setState(() {
            this._lstState[i] = value;
          });
        },
        value: this._lstState[i],
      ));
    }
    return lst;
  }

  Color _generateColor() {
    var rgn = new Random();
    return Color.fromRGBO(
        rgn.nextInt(255), rgn.nextInt(255), rgn.nextInt(255), 1);
  }

  Widget _createHeader() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                this.widget.contact.name,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Icon(Icons.local_phone),
              SizedBox(
                width: 10.0,
              ),
              Text(
                '${this.widget.contact.tel}',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _getButtons() {
    List<Widget> list = new List<Widget>();
    list.add(FloatingActionButton(
      heroTag: Text("1"),
      onPressed: null,
      child: Icon(Icons.access_alarm),
    ));
    list.add(SizedBox(
      width: 3.0,
    ));
    list.add(FloatingActionButton(
      heroTag: Text("2"),
      onPressed: null,
      child: Icon(Icons.account_balance),
    ));
    list.add(SizedBox(
      width: 3.0,
    ));
    list.add(FloatingActionButton(
      heroTag: Text("3"),
      onPressed: null,
      child: Icon(Icons.add),
    ));
    return list;
  }
}
