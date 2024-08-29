import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Text(
                    "Welcome To Payment App",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Complete Digital Solution",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 29, 178, 160),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/welcome.png"),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  // Button for Login
                  MaterialButton(
                    onPressed: () => Get.toNamed('/login'),
                    height: 60,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  //Button For Signup
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () => Get.toNamed('/signup'),
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
