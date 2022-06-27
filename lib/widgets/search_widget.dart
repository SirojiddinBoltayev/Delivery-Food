import 'package:flutter/material.dart';

import '../home_page.dart';

Widget mySearchPage(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      elevation: 20,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()));
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: Container(
        width: 270,
        child: TextField(


          // cursorRadius:Radius.circular(10) ,
          decoration: InputDecoration(
            // hoverColor: Colors.blue,
            // border: OutlineInputBorder(),

            labelText: "Search",
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15,top: 15),
          child: Icon(
            Icons.search,
            size: 28,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
