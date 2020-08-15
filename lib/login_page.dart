import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 150.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Image.asset("images/head.png"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "18010236165",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 30),
                child: Text(
                  "密码",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: null,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "请填写微信密码",
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
          Divider(height: 10.0, thickness: 1.0, color: Colors.green[500]),
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 30.0),
            child: Text(
              "用短信验证码登录",
              style: TextStyle(
                  color: Color(0xFF7081A3), fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: MaterialButton(
                    height: 50.0,
                    color: Color(0xFFE1E1E1),
                    textColor: Colors.grey[500],
                    child: new Text(
                      '登录',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      // ...
                    },
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: null,
                    child: Text(
                      "找回密码",
                      style: TextStyle(color: Color(0xff7c8cab)),
                    )),
                FlatButton(
                    onPressed: null,
                    child: Text(
                      "紧急冻结",
                      style: TextStyle(color: Color(0xff7c8cab)),
                    )),
                FlatButton(
                    onPressed: null,
                    child: Text(
                      "更多",
                      style: TextStyle(color: Color(0xff7c8cab)),
                    )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
