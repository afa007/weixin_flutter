import 'package:flutter/material.dart';

class LayoutTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 1)),
              width: 360,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.access_alarm),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) =>
                                Icon(Icons.account_balance),
                            itemCount: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.ac_unit),
                ],
              ))),
    );
  }
}
