import 'package:flutter/material.dart';
import 'package:food_shop/shop_page.dart';

Widget floatingActionButton(BuildContext context){
  return  FloatingActionButton(

      backgroundColor: Colors.white,
        child: Icon(Icons.shopping_cart_outlined,color: Colors.black87,size: 26,),
        onPressed: (){
Navigator.push(context,MaterialPageRoute(builder: (BuildContext contex)=> ShopPage(context)));
    }
  );
}