import 'package:flutter/material.dart';
// import 'package:food_shop/model/login_data.dart';
import 'package:food_shop/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// class LoginData{
//   String login;
//   String password;
//   int id;
//   LoginData({required this.id, required this.login,required this.password});
//
//   LoginData({login: "", password: "", id: 0});
//
// }
class _LoginPageState extends State<LoginPage> {
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
              height: 147,
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
                        "Login",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 80,
                        padding:
                            const EdgeInsets.only(top: 35, left: 20, right: 20),
                        child: TextField(
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
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Enter your password",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Fogot password ?",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Login"),
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
                                "No account yet?",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SignUpPage()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
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
