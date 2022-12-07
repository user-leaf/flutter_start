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
          )
        ],
      ),
    );
  }
}
