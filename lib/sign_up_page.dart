import 'package:flutter/material.dart';
import 'package:food_shop/login_page.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: screenSize,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-image.png"),
          ),
        ),
        child: Stack(
          // mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 170,
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
                      const Padding(
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
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Rectangle 1.png"),
                ),
              ),
            ),
            SizedBox(
              // height: 10,
              width: double.infinity,
              child: Align(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 150),
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 80,
                        padding:
                        const EdgeInsets.only(top: 35, left: 20, right: 20),
                        child: const TextField(
                          // cursorRadius:Radius.circular(10) ,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),

                            labelText: "Login",
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          right: 20,
                        ),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Enter your password",
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Sign up"),
                        ),
                      ),
                      SizedBox(
                        height: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Center(
                              child: Text(
                                "You have account",
                                style:
                                TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>LoginPage()));

                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Login",
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
                            ),
                            // SizedBox(
                            //   height: 8,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
