import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple,
        child: Stack(
          children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,//y-axis
              children: [
                Text("Welcome",style: TextStyle(fontSize: 40,fontFamily: "myfont"),),
                 SizedBox(height: 30),

                SvgPicture.asset("assets/icons/chat.svg",width: 400,),
               
                SizedBox(height: 50),

                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/login'); //we assign RouteName of LoginPage
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pink),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 100)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(300)))),
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/signup'); //we assign RouteName of LoginPage
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[800]),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 100)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(300)))),
                    child: const Text(
                      "Sign up",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ],
            ),
          ),
      
      

          Positioned(
              left: 0, //starts from top left corner to bottom left corner
              child: Image.asset("assets/images/main_top.png", width: 111)),
          Positioned(
              bottom:
                  0, //starts from bottom left corner until top left corner
              child: Image.asset("assets/images/main_bottom.png", width: 80))
        ]),
      ),
    );
  }
}
