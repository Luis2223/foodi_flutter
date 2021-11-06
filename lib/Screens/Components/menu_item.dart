import 'package:flutter/material.dart';
import 'package:foodi_flutter/constant.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.titles,
    required this.press,
  }) : super(key: key);

  final String titles;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(titles.toUpperCase(),
              style: TextStyle(
                  color: kTextColor.withOpacity(0.3),
                  fontWeight: FontWeight.bold)),
        ));
  }
}
