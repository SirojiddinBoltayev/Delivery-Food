import 'package:flutter/material.dart';

Widget RecomendedWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 10,left: 25),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.0),
        color: Colors.white,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/blog-1 1.png"),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 1.0), //(x,y)
            blurRadius: 10.0,
          ),
        ],
      ),
      width: 230,
      height: 150,
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
          ),
        ],
      ),
      // color: Colors.grey,
    ),
  );
}
