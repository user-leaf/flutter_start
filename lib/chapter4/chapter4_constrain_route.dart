import 'package:flutter/material.dart';

class ConstrainedRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConstrainedRouteState();
  }
}

class _ConstrainedRouteState extends State<ConstrainedRoute> {
  Widget redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('约束'),
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 50,
              minWidth: double.infinity,
            ),
            child: Container(
              height: 5,
              child: redBox,
            ),
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: redBox,
          ),

        ],
      ),
    );
  }
}
