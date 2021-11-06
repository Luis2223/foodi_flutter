import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodi_flutter/constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const DefaultButton({Key? key, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                primary: Colors.black,
                backgroundColor: kPrimaryColor),
            onPressed: press,
            child: Text(text.toUpperCase())));
  }
}
