import 'package:ecomerce/googlemap.dart';
import 'package:ecomerce/paymentt.dart';
import 'package:ecomerce/proffile.dart';

import 'carrt.dart';
import 'cart.dart';
import 'notificationss.dart';
import 'payment%20screen.dart';
import 'profile%20page.dart';
import 'notification.dart';
import 'package:flutter/material.dart';
class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orange, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            InkWell(
              onTap: () { },
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(
                        "assets/abc.jpg"),
                  ),
                  decoration: BoxDecoration(color: Colors.transparent),
                  accountName: Text("Bruno"),
                  accountEmail: Text("bruno@gmail.com")),
            ),
            InkWell(
                onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context)=>cart(),),);},
                child: MenuList(title: "Orders", iconName: Icons.border_color)),
            InkWell(
                onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context)=>Map2(),),);},
                child: MenuList(iconName: Icons.bookmark, title: "Address")),
            InkWell(
                onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationScreen(),),);},
                child: MenuList(iconName: Icons.notifications, title: "Notification")),
            InkWell(
                onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentScreen(),),);},
                child: MenuList(iconName: Icons.attach_money, title: "Payment Details")),
            InkWell(
                onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen(),),);},
                child: MenuList(iconName: Icons.person, title: "Profile",)),
            MenuList(iconName: Icons.help, title: "Help"),
            MenuList(iconName: Icons.account_box, title: "About"),
            MenuList(iconName: Icons.star_half, title: "Rate Us"),
            MenuList(iconName: Icons.exit_to_app, title: "Log Out"),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  final String title;
  final IconData iconName;
  MenuList({
    Key? key,
    required this.title,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context)=>cart(
      //
      // ),),);},
      //
      leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            iconName,
            color: Colors.white,
          )),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}