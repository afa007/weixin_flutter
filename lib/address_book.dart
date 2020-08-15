import 'package:flutter/material.dart';
import 'home_page.dart';

class AddressBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        backgroundColor: Color(0xffededed),
        title: Text(
          "通讯录",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          ListView.builder(
            itemBuilder: (context, index) => AddressItemArray[index],
            itemCount: AddressItemArray.length,
          ),
          Container(
            width: 30,
            // color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '↑',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '☆',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'A',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'B',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'C',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'D',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'E',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'F',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'G',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'H',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'I',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'J',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'K',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'L',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'M',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'N',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'O',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'P',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Q',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'R',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'S',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'T',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'U',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'V',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'W',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'X',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Y',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Z',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '#',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: WxBottomNavBar(),
    );
  }
}

class AddressItem extends StatelessWidget {
  String name;
  AddressItem({this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            "images/head.png",
            height: 45,
            width: 45,
          ),
        ),
        title: Text(
          '$name ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

List<Widget> AddressItemArray = [
  AddressItem(
    name: '新的朋友',
  ),
  Container(
    color: Colors.white,
    child: Divider(
      height: 10,
      indent: 80,
    ),
  ),
  AddressItem(
    name: '仅聊天的朋友',
  ),
  Container(
    color: Colors.white,
    child: Divider(
      height: 10,
      indent: 80,
    ),
  ),
  AddressItem(
    name: '群聊',
  ),
  Container(
    color: Colors.white,
    child: Divider(
      height: 10,
      indent: 80,
    ),
  ),
  AddressItem(
    name: '标签',
  ),
  Container(
    color: Colors.white,
    child: Divider(
      height: 10,
      indent: 80,
    ),
  ),
  AddressItem(
    name: '公众号',
  ),
  Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
    child: Text(
      '我的企业及企业联系人',
      style: TextStyle(color: Color(0xff7c7c7c), fontSize: 14),
    ),
  ),
  AddressItem(
    name: '中国农业银行e动天地',
  ),
  Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
    child: Text(
      'A',
      style: TextStyle(color: Color(0xff7c7c7c), fontSize: 14),
    ),
  ),
  AddressItem(
    name: '_A000东辉鞋业',
  ),
  Container(
    color: Colors.white,
    child: Divider(
      height: 10,
      indent: 80,
    ),
  ),
  AddressItem(
    name: '_A000东辉鞋业',
  ),
];
