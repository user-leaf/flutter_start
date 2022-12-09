import 'package:flutter/material.dart';

class FlexRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹性布局'),
      ),
      body: Column(
        children: [
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                  flex: 1, child: Container(height: 30, color: Colors.red)),
              Expanded(
                  flex: 2, child: Container(height: 30, color: Colors.green))
            ],
          ),
          SizedBox(
            height: 80,
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              // Flex的三个子Widget，在垂直方向按照2:1:1均分80像素的空间
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                      height: 30,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,
            children: [
              Text("abcd" * 5),
              Text("abcd" * 5),
              Text("abcd" * 5),
            ],
          ),
          Container(
            width: 120,
            height: 120,
            color: Colors.blue.shade50,
            child: Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          Align(
            widthFactor: 2,
            heightFactor: 2,
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
          Align(
            widthFactor: 3,
            heightFactor: 3,
            alignment: FractionalOffset.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              child: Text("xxx"),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Text("xxx"),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red, Colors.orange.shade700]),
              borderRadius: BorderRadius.circular(3.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54, offset: Offset(2, 2), blurRadius: 4)
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
