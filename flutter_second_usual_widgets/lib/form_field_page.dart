import 'package:flutter/material.dart';

class FormFieldPage extends StatefulWidget {
  FormFieldPage({Key key}) : super(key: key);

  _FormFieldPageState createState() => _FormFieldPageState();
}

class _FormFieldPageState extends State<FormFieldPage> {
  // 全局Key用来获取Form表单组件
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  String userName;
  String password;

  void login() {
    var loginForm = loginKey.currentState;

    // 验证Form 表单
    if (loginForm.validate()) {
      loginForm.save();
      print('userName:' + userName + 'password:' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: loginKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "请输入用户名"),
                  onSaved: (value) {
                    userName = value;
                  },
                  onFieldSubmitted: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "请输入密码"),
                  obscureText: true,
                  validator: (value) {
                    return value.length < 6 ? "密码长度不够6位" : null;
                  },
                  onSaved: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  width: 340,
                  height: 42,
                  child: RaisedButton(
                    onPressed: login,
                    child: Text(
                      "登录",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
