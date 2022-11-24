import 'dart:convert';

import 'package:flutter/material.dart';

class JsonDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _JsonDemoState();
  }

}

class _JsonDemoState extends State<JsonDemo> {
  String _text = "";
  @override
  void initState() {
    super.initState();
    _loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Text(_text);
  }

  void _loadData() {
    String jsonStr = '[{"name":"Jack"},{"name":"Rose"}]';
    List items = jsonDecode(jsonStr);
    print(items[0]["name"]);
    _text = items[0]["name"];
  }
}