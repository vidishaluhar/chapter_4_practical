import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 80, left: 80, top: 75, bottom: 15),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/fire_emoji.png',
                  alignment: Alignment.topLeft,
                  width: 50,
                  height: 50,
                ),
                Text(
                  "mba",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'dok',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffa9e500),
                      fontSize: 50),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Text(
              'Please enter your e-mail address and enter password',
              style: TextStyle(
                fontSize: 20,
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
                  fillColor: CupertinoColors.systemGrey6,
                  filled: true,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.email_outlined,
                          color: CupertinoColors.systemGrey,
                          fill: BorderSide.strokeAlignCenter,
                          size: 25,
                        )),
                  ),
                  contentPadding: EdgeInsets.all(25)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
            child: TextField(
              showCursor: false,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  fillColor: CupertinoColors.systemGrey6,
                  filled: true,
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.lock_outlined,
                          color: CupertinoColors.systemGrey,
                          fill: BorderSide.strokeAlignCenter,
                          size: 25,
                        )),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(Icons.visibility_off_outlined,
                          color: Colors.grey, size: 25),
                    ),
                  ),
                  contentPadding: EdgeInsets.all(25)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              'Forgot password?',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  elevation: 25,
                  fixedSize: Size(275, 70)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      child: Divider(
                    height: 50,
                    endIndent: 20,
                    thickness: 0.25,
                    color: Colors.grey,
                  )),
                ),
                Text(
                  "Sign in with",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Expanded(
                    child: Container(
                        child: Divider(
                  color: Colors.grey,
                  height: 25,
                  thickness: 0.25,
                  indent: 20,
                )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 75,
                    width: 75,
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                        color: CupertinoColors.extraLightBackgroundGray,shape: BoxShape.circle),
                    child: Image.asset("assets/images/facebook_icon.png")),
                SizedBox(width: 50,),
                Container(
                    height: 75,
                    width: 75,
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                        color: CupertinoColors.extraLightBackgroundGray,shape: BoxShape.circle),
                    child: Image.asset("assets/images/google_icon.jpg")),
                SizedBox(width: 50,),
                Container(
                    height: 75,
                    width: 75,
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                        color: CupertinoColors.extraLightBackgroundGray,shape: BoxShape.circle),
                    child: Image.asset("assets/images/twitter_icon.jpg")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
