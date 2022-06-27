import 'package:flutter/material.dart';

Widget navigationBar(){
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(

      type: BottomNavigationBarType.fixed,

      selectedItemColor: Colors.blue[700],
      selectedFontSize: 13,
      unselectedFontSize: 13,
      iconSize: 30,
      items: [

        BottomNavigationBarItem(
          label: "Home",
          icon: Image.asset("assets/icon/ic_vector.png",scale: 2,),
        ),
        BottomNavigationBarItem(

          label: "Like",
          icon: Image.asset("assets/icon/ic_vector.png",scale: 2,),
        ),
    ],),
  );
}