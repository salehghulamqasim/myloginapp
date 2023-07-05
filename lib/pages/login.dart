import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Text("Login",style: TextStyle(fontSize: 40,fontFamily: "myfont"),),
                   SizedBox(height: 30),
                   SvgPicture.asset("assets/icons/login.svg",width: 400,),
                   SizedBox(height: 50),

                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                          borderRadius: BorderRadius.circular(120)),
                      child: const TextField(
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            hintText: "Your Email: ",
                            hintStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.person),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.circular(120),
                      ),
                      child: const TextField(
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password: ",
                            hintStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.lock),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 120)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(300)))),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ]),
            ),

                Positioned(
                    left: 0, //starts from top left corner to bottom left corner
                    child: Image.asset("assets/images/main_top.png", width: 111)),
                Positioned(
                    bottom:
                        0, //starts from bottom left corner until top left corner
                    child: Image.asset("assets/images/main_bottom.png", width: 80))
          ],
        ),
      ),
    );
  }
}
