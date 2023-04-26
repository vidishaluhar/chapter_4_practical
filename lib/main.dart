import 'package:chapter_4_practical/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              padding:
              const EdgeInsets.only(right: 80, left: 80, top: 25, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///FireIcon
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
                'Please enter your e-mail address\nand enter password',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),


            ///Email TextField
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 50),
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


                    ///Icon for Email
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

            ///Password TextField
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


                    ///Icon for Password
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


                    ///Icon for Visibility ON and OFF
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

            ///Forgot Password TextButton
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: TextButton(
                  onPressed: () {}, child: const Text('Forgot password?',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),)
              ),
            ),

            ///Login ElevatedButton
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    elevation: 25,
                    fixedSize: Size(275, 60)),
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 5,),


                  ///Sign Up TextButton
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) => const MySignUp()));
                    }, child: const Text("Sign Up", style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                  )
                ],
              ),
            ),

            ///Divider with Sign in Text
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

                  ///Facebook
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

                  ///Google
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

                  ///Twitter
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
