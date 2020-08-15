import 'package:flutter/material.dart';
import 'iconfont.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "微信",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
            onPressed: null,
          )
        ],
        backgroundColor: Color(0xffededed),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => WxMsgItem(),
        itemCount: 10,
      ),
      bottomNavigationBar: WxBottomNavBar(),
    );
  }
}

class WxBottomNavBar extends StatelessWidget {
  const WxBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xfff7f7f7),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Iconfont.message), title: new Text('微信')),
        BottomNavigationBarItem(
            icon: Icon(Iconfont.tongxunlu), title: new Text('通讯录')),
        BottomNavigationBarItem(
            icon: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Icon(Iconfont.find),
                Positioned(
                    top: -6.0,
                    right: -10.0,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(minWidth: 12, minHeight: 12),
                      child: Text(
                        "101",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
            title: new Text('发现')),
        BottomNavigationBarItem(icon: Icon(Iconfont.me), title: new Text('我'))
      ],
    );
  }
}

class WxMsgItem extends StatelessWidget {
  const WxMsgItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        "images/head.png",
                        height: 45.0,
                        width: 45.0,
                      ),
                    ),
                    Positioned(
                        top: -4.0,
                        right: -4.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(1),
                          constraints:
                              BoxConstraints(maxHeight: 8, maxWidth: 8),
                          //Todo
                        ))
                  ],
                )),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "软件所毕业生联谊群",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "[17条]退休老诚头刘又诚:[笔记]以下转发的是...",
                    style: TextStyle(fontSize: 11.0, color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "凌晨5:59",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Icon(
                  Iconfont.silence,
                  color: Colors.grey[400],
                  size: 20,
                ),
              ],
            ),
            SizedBox(
              width: 10.0,
            )
          ],
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}

class BadgeBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('首页'),
        ),
        new BottomNavigationBarItem(
            title: new Text('购物车'),
            icon: new Stack(overflow: Overflow.visible, children: <Widget>[
              Icon(Icons.shopping_cart),
              Positioned(
                // draw a red marble
                top: -6.0,
                right: -10.0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: new Text(
                    '101',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
            activeIcon:
                new Stack(overflow: Overflow.visible, children: <Widget>[
              Icon(Icons.shopping_cart),
              Positioned(
                // draw a red marble
                top: -6.0,
                right: -10.0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: new Text(
                    '101',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ])),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('个人中心'),
        ),
      ],
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF1972FF),
      onTap: (index) {},
    );
  }
}
