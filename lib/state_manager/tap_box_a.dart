import 'package:flutter/material.dart';

class TapboxA extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TapboxAState();
  }
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _active = !_active;
        });
      },
      child: Container(
        width: 200,
        height: 200,
        color: _active ? Colors.blue : Colors.black12,
        child: Center(
          child: Text(_active ? 'Active' : 'Inactive'),
        ),
      ),
    );
  }
}
