
import 'package:flutter/material.dart';
import 'package:food_shop/home_page.dart';

// import 'package:food_shop/model/login_data.dart';
import 'package:food_shop/sign_up_page.dart';

import 'model/login_data.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final User signin = User(
    login: "",
    gmail: '',
    password: '',
  );

  final _controller = TextEditingController();

  @override
  void dispose() {
    // other dispose methods
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {

    _controller.addListener(_handleText);
    super.initState();
    // other code here
  }
  _handleText() {
    // do what you want with the text, for example:

    print(_controller.text);

  }
  bool _isPasswordHide = true;
  bool _isVisibilityHide = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: screenSize,
        height: screenHeight,
        decoration:  const BoxDecoration(
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
                    padding:  EdgeInsets.only(top: 38.0),
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
              decoration: const BoxDecoration(
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
                      const SizedBox(height: 150),
                       const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 80,
                        padding:
                            const EdgeInsets.only(top: 35, left: 20, right: 20),
                        child: TextField(
                        textInputAction: TextInputAction.next,

                          // controller: _controller,
                          onChanged: (text){

                            print(text);
                          },
                          decoration:   const InputDecoration(
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
                        child:  TextField(
                          textInputAction: TextInputAction.done,
                          controller: _controller,

                          onChanged: (text){
                            setState((){
                              _controller.text.isEmpty ?
                              _isVisibilityHide = false
                              : _isVisibilityHide = true;
                            });
                          },
                          obscureText: _isPasswordHide,
                          decoration:   InputDecoration(
                            border:const OutlineInputBorder(),
                            labelText: "Enter your password",
                          suffixIcon: _isVisibilityHide ? IconButton(
                            icon: _isPasswordHide ? Icon(Icons.visibility) : Icon(Icons.visibility_off),

                            onPressed: (){
                              setState((){
                                _isPasswordHide = !_isPasswordHide;

                              });

                            },

                          ) : Text(""),
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password ?",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const HomePage()));
                          },
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
                                          const SignUpPage()));
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
