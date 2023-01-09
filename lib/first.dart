import 'package:flutter/material.dart';

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        color: Color.fromARGB(255, 196, 192, 192),
      ),
      margin: EdgeInsets.only(left: 40),
      width: MediaQuery.of(context).size.width,
      height: 5,
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        width: 120,
        height: 5,
      ),
    );
  }
}
