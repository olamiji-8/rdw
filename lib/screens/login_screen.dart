import 'package:flutter/material.dart';
import 'package:rdw/screens/screen_one.dart';
import 'package:rdw/screens/sign_up.dart';
import 'package:rdw/utils/assets.dart';
import '../widgets/child_button.dart';
import '../widgets/child_text_field.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  InitState createState() => InitState();
}

class InitState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xFF2196F3),
              ),
              child: Center(
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
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              )),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 ChildTextField(hintText: 'Enter email',icon: Icons.mail,),
                 ChildTextField(hintText: 'Enter password', icon: Icons.key,),
                 Container(
                   margin: const EdgeInsets.only(top: 20, right: 20),
                   alignment: Alignment.centerRight,
                   child: GestureDetector(
                     child: const Text("Forget Password?"),
                     onTap: () => {},
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15.0),
                   child: ChildButton(
                     title: 'Login',
                     onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenOne())),),
                 ),
                 Container(
                   margin: const EdgeInsets.only(top: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const Text("Don't have account?"),
                       GestureDetector(
                         onTap: () => {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => const Signup()))
                         },
                         child: const Text(
                           "Register Now",
                           style: TextStyle(color: Color(0xFF2196F3)),
                         ),
                       )
                     ],
                   ),
                 )
               ],
             ),
           ),

          ],
        ),
      ),
    );
  }
}
