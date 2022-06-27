
import 'package:flutter/material.dart';

Widget myBanner(){
  return             Padding(
    padding: const EdgeInsets.only(left: 15,right: 15,top: 20,),
    child: Container(

      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding:  EdgeInsets.only(left: 7.0, top: 25),
                  child: Text(
                    "Paket Cheese",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const  Padding(
                  padding:  EdgeInsets.only(left: 15.0, top: 5),
                  child: Text(
                    "Burger komplit",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),

                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                    child: Center(
                      child: Text(
                        "Order Now",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500,color: Colors.white),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/row-banner 1.png"),
          )),
    ),
  );

}