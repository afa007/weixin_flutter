import 'package:flutter/material.dart';

class FriendMoment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    //head
    var head = Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Image.asset('images/background.jpg',
            width: width, height: width * 3 / 4, fit: BoxFit.cover),
        Positioned(
            right: 20,
            top: 10,
            child: SafeArea(
                child: Icon(
              Icons.photo_camera,
              color: Colors.white,
            ))),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              "images/head.png",
              height: 60,
              width: 60,
            ),
          ),
          bottom: -10,
          right: 20,
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return head;
          }
          return MomentItem();
        },
        itemCount: 10,
      ),

      // body: MomentItem(),
    );
  }
}

class MomentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.grey[300], width: 1))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //头像
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //昵称
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '忍冬草',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5e7096)),
                  ),
                ),
                //文字
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    '忍冬草忍冬草忍冬草忍冬草\n忍冬草忍冬草忍冬草\n忍冬草忍冬草忍冬草',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                //图片
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/head.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),

                //脚注
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      //时间
                      Text(
                        '一分钟前',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 1,
                        ),
                      ),
                      Icon(
                        Icons.ac_unit,
                        size: 14,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
