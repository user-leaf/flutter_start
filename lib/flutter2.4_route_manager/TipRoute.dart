import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  TipRoute({super.key, required this.text});

  String text = '';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text('提示'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(text),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('我是返回值');
              },
              child: Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}
