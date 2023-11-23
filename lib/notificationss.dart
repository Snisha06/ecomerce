import 'package:flutter/material.dart';

import 'colorss.dart';
import 'helpers.dart';
import 'new/colors.dart';
import 'new/helpers.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = "/notiScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Notifications",
                            style: Helper.getTheme(context).headline5,
                          ),
                        ),
                        // Image.asset(
                        //   Helper.getAssetName("cart.png", "virtual"),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(

                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "Treat your hunger \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "We're on call away \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "You choose,we deliver \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "Lorem ipsum dolor sit amet, consectetur \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "We carry your hunger \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "Delivered with love \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "Eat the way you like \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.sports_basketball,size: 20,color: Colors.orange,),
                      title:Text( "Simplify your meals \n20 Jul 2020"),

                      // time: ,
                    ),
                  ),
                ],
              )),
          // Positioned(
          //     bottom: 0,
          //     left: 0,
          //     child: CustomNavBar(
          //       menu: true,
          //     ))
        ],
      ),
    );
  }
}

class NotiCard extends StatelessWidget {
  const NotiCard({
    key,
    time,
    title,
    Color color = Colors.white,
  })  : _time = time,
        _title = title,
        _color = color,
        super(key: key);

  final String _time;
  final String _title;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: _color,
        border: Border(
          bottom: BorderSide(
            color: AppColor.placeholder,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColor.orange,
            radius: 5,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _title,
                style: TextStyle(
                  color: AppColor.primary,
                ),
              ),
              Text(_time),
            ],
          )
        ],
      ),
    );
  }
}