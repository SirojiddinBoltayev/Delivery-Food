import 'package:flutter/material.dart';
import 'package:food_shop/account_page.dart';
import 'package:food_shop/chat_page.dart';
import 'package:food_shop/like_page.dart';
import 'package:food_shop/shop_page.dart';
import 'package:food_shop/widgets/Home.dart';
import 'package:food_shop/widgets/floatingActionButton.dart';
import 'package:food_shop/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    List _screens = [
      Home(context),
      LikePage(),
      ShopPage(context),
      ChatPage(),
      AccountPage()
    ];

    // var screenSize = MediaQuery.maybeOf(context)!.size;
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(
                "assets/images/burger 1.png",
                scale: 3.2,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8, top: 22),
              child: Text(
                "Need",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22),
              child: Text(
                "Food",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
        // bottomOpacity: 50,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 15),
            child: InkWell(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(1000),
                  bottomRight: Radius.circular(1000),
                  bottomLeft: Radius.circular(1000),
                  topLeft: Radius.circular(1000)),
              splashColor: Colors.grey,
              hoverColor: Colors.grey,
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            mySearchPage(context)));
              },
              child: Container(
                child: Center(child: Image.asset("assets/images/Vector.png")),
                // height: 30,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        elevation: 90,

        showSelectedLabels: false,
        showUnselectedLabels: false,
// fixedColor: Colors.red,

        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/hut.png",
              scale: 1.6,
              fit: BoxFit.cover,
              color: Colors.blue,
            ),
            label: "Home",
            icon: Image.asset(
              "assets/images/hut.png",
              scale: 1.6,
              fit: BoxFit.cover,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/icon/ic_like.png",
              scale: 2,
              fit: BoxFit.cover,
              color: Colors.blue,
            ),
            label: "Like",
            icon: Image.asset(
              "assets/icon/ic_like.png",
              scale: 2,
              color: Colors.black87,
            ),
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/logo/ic_white.jpg",
                scale: 250,
              ),
              label: "Shop"),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/icon/ic_chat.png",
              scale: 2,
              fit: BoxFit.cover,
              color: Colors.blue,
            ),
            label: "Chat",
            icon: Image.asset(
              "assets/icon/ic_chat.png",
              scale: 2,
              color: Colors.black87,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/icon/ic_account.png",
              scale: 2,
              fit: BoxFit.cover,
              color: Colors.blue,
            ),
            label: "Account",
            icon: Image.asset(
              "assets/icon/ic_account.png",
              scale: 2,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 15),
        height: 67.0,
        // width: 65.0,
        child: FittedBox(
          child: floatingActionButton(context),
        ),
      ),
    );
  }
}
