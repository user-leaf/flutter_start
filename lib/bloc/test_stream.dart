import 'package:flutter/material.dart';

class TestStream extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestStreamState();
}

class _TestStreamState extends State<TestStream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC'),
      ),
      body: Center(child: Text('aaa'),),
    );
  }
}
