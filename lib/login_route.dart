import 'package:flutter/material.dart';

class LoginRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginRouteState();
  }
}

class _LoginRouteState extends State<LoginRoute> {
  String? _name, _password;
  TextEditingController? _nameController = TextEditingController();
  TextEditingController? _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _nameController?.addListener(() {
      print("name listener: ${_nameController?.text}");
    });
    _passwordController?.addListener(() {
      print("password listener: ${_passwordController?.text}");
    });

    _nameController?.text = "hello world!";
    _nameController?.selection = TextSelection(
        baseOffset: 2, extentOffset: _nameController?.text.length ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Theme(
          data: Theme.of(context).copyWith(
              hintColor: Colors.cyan,
              inputDecorationTheme: InputDecorationTheme(
                labelStyle: TextStyle(color: Colors.green),
                // hintStyle: TextStyle(color: Colors.green, fontSize: 20.0),
              )),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.blue,
                  labelText: "邮箱",
                  hintText: '请输入邮箱',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple)),
                ),
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                onChanged: (value) {
                  _name = value;
                },
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.blue,
                  labelText: "密码",
                  hintText: '请输入密码',
                  hintStyle: TextStyle(color: Colors.orange),
                ),
                keyboardType: TextInputType.text,
                maxLines: 1,
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    print("name: $_name, pwd: $_password");
                    print(
                        "uname: ${_nameController?.text}, pwd: ${_passwordController?.text}");
                  },
                  child: Text('登录')),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.access_time_filled),
                  hintText: "中国",
                  labelText: "中华"
                ),
              ),
            ],
          )),
    );
  }
}
