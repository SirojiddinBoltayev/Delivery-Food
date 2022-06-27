import 'package:flutter/material.dart';
import 'package:food_shop/widgets/popular_menu.dart';
import 'package:food_shop/widgets/recommended_widget.dart';

import 'banner_widget.dart';
import 'categories_menu.dart';

Widget Home(BuildContext context){
  var screenSize = MediaQuery.maybeOf(context)!.size;

  return  SafeArea(
    child: SizedBox(
      width: screenSize.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myBanner(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 0),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ),
            Row(
              children: <Widget>[
                const Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 32,
                  ),
                ),
                myCategorie(),
                const Expanded(
                  child: SizedBox(
                    width: 32,
                  ),
                ),
                myCategorie(),
                const Expanded(
                  child: SizedBox(
                    width: 32,
                  ),
                ),
                myCategorie(),
                const Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 32,
                  ),
                ),

                // myCategorie(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 15),
              child: Text(
                "Popular Now",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  myPopularMenu(),
                  myPopularMenu(),
                  myPopularMenu(),
                  myPopularMenu(),
                  myPopularMenu(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 0),
              child: Text(
                "Recommended",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  RecomendedWidget(),
                  RecomendedWidget(),
                  RecomendedWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}