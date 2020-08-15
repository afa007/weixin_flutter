import 'package:flutter/material.dart';
import 'triangle.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        backgroundColor: Color(0xffededed),
        title: Text(
          "李丹",
          style: TextStyle(color: Colors.black),
        ),
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
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ChatItemArray[index],
              itemCount: ChatItemArray.length,
            ),
          ),
          Divider(
            height: 1.0,
          ),
          Container(
            // padding: EdgeInsets.all(5),
            color: Color(0xf7f7f7),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.keyboard_voice),
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, //去掉输入框的下滑线
                    fillColor: Colors.white,
                    filled: true,
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.sentiment_satisfied),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Icon(Icons.add_circle_outline),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TimeItem extends StatelessWidget {
  String time;
  TimeItem(this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      child: Text(
        "$time",
        style: TextStyle(color: Color(0xff858585), fontSize: 12.0),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final bool direction;
  final String message;
  ChatItem({this.direction, this.message});
  @override
  Widget build(BuildContext context) {
    Widget rslt;
    if (direction) {
      rslt = Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "images/head.png",
                  height: 45,
                  width: 45,
                ),
              ),
            ),
            LeftTriangle(),
            Container(
              height: 45,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)),
              constraints: BoxConstraints(minWidth: 100),
              child: Text(
                "$message",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      );
    } else {
      rslt = Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 45,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                  color: Color(0xff95ec69),
                  borderRadius: BorderRadius.circular(5.0)),
              constraints: BoxConstraints(minWidth: 100),
              child: Text(
                "$message",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            RightTriangle(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "images/head.png",
                  height: 45,
                  width: 45,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return rslt;
  }
}

List<Widget> ChatItemArray = [
  ChatItem(direction: true, message: '环境不错在一家大酒楼里面'),
  ChatItem(direction: false, message: '西国贸，那离得还挺近'),
  TimeItem('下午2:01'),
  ChatItem(direction: true, message: '嗯，骑车就可以过来了'),
  TimeItem('下午5:40'),
  ChatItem(direction: true, message: '下班吗？喝宁明西瓜汁吧'),
  ChatItem(direction: false, message: '好的'),
  ChatItem(direction: false, message: '一会儿回去'),
  TimeItem('晚上7:04'),
  ChatItem(direction: true, message: '好的'),
];
