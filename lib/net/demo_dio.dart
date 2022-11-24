import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DioDemoState();
  }
}

class _DioDemoState extends State<DioDemo> {
  bool _loading = false;
  String _text = '';
  Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              _loadData();
            },
            child: Text('发起请求')),
        _loading ? CircularProgressIndicator() : Text(_text),
      ],
    );
  }

  void _loadData() async {
    try {
      _loading = true;
      var response =
          await _dio.get("https://api.github.com/orgs/flutterchina/repos");
      _text = response.data.toString();
    } catch (e) {
      _text = e.toString();
    } finally {
      _loading = false;
    }
  }
}
