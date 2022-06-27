import 'package:flutter/material.dart';
import 'package:food_shop/home_page.dart';

Widget ShopPage(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      elevation: 20,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext contex) => HomePage()));
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
      title: Text(
        'My sales',
        style: TextStyle(color: Colors.black),
      ),
    ),
    body: Center(
      child: Text(
        "ShopPage",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  );
}
