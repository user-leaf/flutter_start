import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  const SwitchAndCheckBoxTestRoute({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SwitchAndCheckBoxTestRouteState();
  }
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true;
  bool? _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('switch checkbox'),), body: Column(
      children: [
        Switch(
            value: _switchSelected,
            onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            }),
        Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.blueAccent,
            tristate: false,
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value;
              });
            })
      ],
    ),);
  }
}
