import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {
  final int index;
  final Function(bool) callback;

  const MySwitchListTile({Key key, this.index, this.callback})
      : super(key: key);

  @override
  _MySwitchListTileState createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    // print('Impresion desde _MySwitchListTileState antes del return');
    return SwitchListTile(
      key: Key('slt_${widget.index}'),
      title: Text('SwitchListTile ${widget.index}'),
      value: this.value,
      onChanged: (value) {
        this.value = value;
        print('Impresion desde _MySwitchListTileState $value');
        widget.callback(value);
      },
    );
  }
}
