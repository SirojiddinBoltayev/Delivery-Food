import 'package:flutter/material.dart';

Widget myCategorie() {
  double size = 87;
  return Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0), //(x,y)
                  blurRadius: 10.0,
                ),
              ],
            ),
            width: size,
            height: size,
            child: Column(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  child: Image.asset("assets/images/menu-1 1.png",fit: BoxFit.cover,),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Text("Burger"),
                )
              ],
            ),
            // color: Colors.grey,
          ),
        );
}
