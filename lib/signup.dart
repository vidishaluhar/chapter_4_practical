import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 80, left: 80, top: 25, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/fire_emoji.png',
                    width: 40,
                    height: 40,
                  ),
                  const Text(
                    "mba",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'dok',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffa9e500),
                        fontSize: 50),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Text(
                'Please enter your e-mail address\nand create password',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 50),
              child: TextField(
                showCursor: false,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: "Full name",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person_outline,
                              color: CupertinoColors.systemGrey,
                              fill: BorderSide.strokeAlignCenter,
                              size: 22,
                            ),
                          )),
                    ),
                    contentPadding: const EdgeInsets.all(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
              child: TextField(
                showCursor: false,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: "Enter your email",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.email_outlined,
                              color: CupertinoColors.systemGrey,
                              fill: BorderSide.strokeAlignCenter,
                              size: 22,
                            ),
                          )),
                    ),
                    contentPadding: const EdgeInsets.all(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
              child: TextField(
                showCursor: false,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.lock_outlined,
                              color: CupertinoColors.systemGrey,
                              fill: BorderSide.strokeAlignCenter,
                              size: 22,
                            ),
                          )),
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    elevation: 25,
                    fixedSize: const Size(275, 60)),
                child: const Text("Sign up",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      height: 50,
                      endIndent: 20,
                      thickness: 0.25,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Sign in with",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    height: 25,
                    thickness: 0.25,
                    indent: 20,
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 65,
                      width: 65,
                      padding: const EdgeInsets.all(17),
                      decoration: const BoxDecoration(
                          color: CupertinoColors.extraLightBackgroundGray,
                          shape: BoxShape.circle),
                      child: Image.asset("assets/images/facebook_icon.png")),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      height: 65,
                      width: 65,
                      padding: const EdgeInsets.all(17),
                      decoration: const BoxDecoration(
                          color: CupertinoColors.extraLightBackgroundGray,
                          shape: BoxShape.circle),
                      child: Image.asset("assets/images/google_logo.png")),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      height: 65,
                      width: 65,
                      padding: const EdgeInsets.all(17),
                      decoration: const BoxDecoration(
                          color: CupertinoColors.extraLightBackgroundGray,
                          shape: BoxShape.circle),
                      child: Image.asset("assets/images/twitter_logo.png")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
