import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    // height: 147,
                    width: double.infinity,
                    child: Align(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/burger 1.png",
                          scale: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38.0),
                          child: Text(
                            'NeedFood',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle 1.png"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 11,
                  child: Container(
                    // height: 147,
                    width: double.infinity,
                    child: Align(
                        child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 68),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Login",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 20, right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Enter your password",
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Fogot password ?",
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg-image.png"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    
                    crossAxisCount: 2,
                    children: [
                      Center(
                        child: Text(
                          "No account yet?",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sign up now",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.blue,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                    ],
                  ),
                )
              ],
            ),

        ),
     
    );
  }
}
