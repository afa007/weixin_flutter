import 'package:flutter/material.dart';
import 'iconfont.dart';

class FriendProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey[300], width: 1))),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        "images/head.png",
                        height: 75,
                        width: 75,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Celaa',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Iconfont.woman,
                              color: Color(0xfffb6d59),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          '微信号: XXXXWang1994',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ),
                      Text(
                        '地区: 澳大利亚 悉尼',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey[300], width: 1))),
            height: 60,
            child: FlatButton(
                onPressed: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('设置备注和标签',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    Icon(Icons.arrow_forward_ios, size: 20),
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: FlatButton(
                onPressed: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('朋友权限',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    Icon(Icons.arrow_forward_ios, size: 20)
                  ],
                )),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey[300], width: 1))),
            child: FlatButton(
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('朋友圈',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400)),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          "images/head.png",
                          height: 45,
                          width: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          "images/head.png",
                          height: 45,
                          width: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          "images/head.png",
                          height: 45,
                          width: 45,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, size: 20),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: FlatButton(
                onPressed: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('更多信息',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    Icon(Icons.arrow_forward_ios, size: 20)
                  ],
                )),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey[300], width: 1))),
            child: FlatButton(
                onPressed: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Iconfont.message,
                        color: Color(0xff596784),
                      ),
                    ),
                    Text(
                      '发消息',
                      style: TextStyle(
                        color: Color(0xff596784),
                      ),
                    )
                  ],
                )),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: FlatButton(
                onPressed: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.video_call,
                        color: Color(0xff596784),
                      ),
                    ),
                    Text(
                      '音视频通话',
                      style: TextStyle(
                        color: Color(0xff596784),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
