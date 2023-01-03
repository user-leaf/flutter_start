import 'package:flutter/material.dart';

class TestUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('布局进阶'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightGreen,
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Text(
                'aaa',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Expanded(
              flex: 1,
              child: Text(
                'bbb',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  child: Text('111'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey,
                  child: Text('222'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  child: Text('333'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
