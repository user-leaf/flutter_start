import 'package:flutter/material.dart';

class StackRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('层叠布局'),),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.red,
            child: Text('Hello world'),
          ),
          Positioned(top: 10, child: Text('Your friend')),
        ],
      ),
    );
  }
}
