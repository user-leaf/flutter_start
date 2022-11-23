import 'package:flutter/material.dart';
import 'package:flutter_start_1/flutter2.4_route_manager/TipRoute.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          Navigator.of(context).pushNamed("tip_route", arguments: "hihihi");

          // var result = await Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return TipRoute(text: "我是提示xxxx");
          //     },
          //   ),
          // );
          // print("路由返回值：$result");
        },
        child: Text('打开提示页'),
      ),
    );
  }
}
