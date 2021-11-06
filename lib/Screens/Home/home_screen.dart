import 'dart:html';

import 'package:flutter/material.dart';
import 'package:foodi_flutter/Screens/Components/app_bar.dart';
import 'package:foodi_flutter/Screens/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomAppBar(title: 'AppMenuBar'),
          const Spacer(),
          const Body(),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    ));
  }
}
