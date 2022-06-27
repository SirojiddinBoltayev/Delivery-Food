import 'package:flutter/material.dart';

Widget myPopularMenu() {
  double sizeHeight = 195;
  double sizeWidth = 152;

  return Padding(
    padding: const EdgeInsets.only(top: 22, bottom: 23, left: 10, right: 10),
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
      width: sizeWidth,
      height: sizeHeight,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            height: 98.1,
            width: 120,
            child: Image.asset(
              "assets/images/food-2 1.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
          child: Text(
            "Beef Burger",style: TextStyle(fontSize:14,fontWeight: FontWeight.w500 ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Text(
              "Mcdi",style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: Colors.grey ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              "Rp.20.000",style: TextStyle(fontSize:19,fontWeight: FontWeight.w500 ),
            ),
          ),
        ],
      ),
      // color: Colors.grey,
    ),
    // ),
    //   const SizedBox(
    //     width: 33,
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.only(top: 15, bottom: 10),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10.0),
    //         color: Colors.white,
    //         boxShadow: const [
    //           BoxShadow(
    //             color: Colors.grey,
    //             offset: Offset(1.0, 1.0), //(x,y)
    //             blurRadius: 10.0,
    //           ),
    //         ],
    //       ),
    //       width: sizeHeight,
    //       height: sizeWidth,
    //       // color: Colors.grey,
    //     ),
    //   ),
    //   const SizedBox(
    //     width: 33,
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.only(top: 15, bottom: 10),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10.0),
    //         color: Colors.white,
    //         boxShadow: const [
    //           BoxShadow(
    //             color: Colors.grey,
    //             offset: Offset(1.0, 1.0), //(x,y)
    //             blurRadius: 10.0,
    //           ),
    //         ],
    //       ),
    //       width: sizeWidth,
    //       height: sizeHeight,
    //       // color: Colors.grey,
    //     ),
    //   ),
    //   const Expanded(
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(vertical: 52),
    //     ),
    //   ),
    // ],
    // ),
  );
}
