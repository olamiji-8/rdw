import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rdw/screens/screen_one.dart';
import 'package:rdw/utils/assets.dart';

import '../widgets/child_button.dart';
import '../widgets/child_text_field.dart';
import 'login_screen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  InitState createState() => InitState();
}

class InitState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Image.asset(Assets.logo),
                    height: 90,
                    width: 90,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 20),
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            ChildTextField(hintText: 'Full name', icon: Icons.person,),
            ChildTextField(hintText: 'Email', icon: Icons.mail),
            ChildTextField(hintText: 'Password', icon: Icons.key,),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 15.0),
               child: SizedBox(
                 height: 50,
                 child: ChildButton(
                   title: 'Register',
                   onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenOne())),
                 ),
               ),
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Member?"),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())),
                  child: const Text(
                    "Login Now",
                    style: TextStyle(color: Color(0xFF2196F3)),
                  ),
                )
              ],
            )
        ],
      ),
          )),
    );
  }
}

