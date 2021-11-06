import 'package:flutter/material.dart';
import 'package:foodi_flutter/Components/default_button.dart';
import 'package:foodi_flutter/Screens/Components/menu_item.dart';
import 'package:foodi_flutter/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Foodi".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(titles: "Home", press: () {}),
          MenuItem(titles: "About", press: () {}),
          MenuItem(titles: "Pricing", press: () {}),
          MenuItem(titles: "Contact", press: () {}),
          MenuItem(titles: "Login", press: () {}),
          DefaultButton(text: "Get Started", press: () {})
        ],
      ),
    );
  }
}
