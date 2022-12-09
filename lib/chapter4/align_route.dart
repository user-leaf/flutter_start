import 'package:flutter/material.dart';

class AlignRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('对齐'),
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Center(
            child: Text("xxx"),
          ),
        ),
    );
  }
}
