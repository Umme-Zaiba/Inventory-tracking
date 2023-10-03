import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inventory/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 253, 233, 207),
                Color.fromARGB(255, 242, 221, 251),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),

              Lottie.asset('assets/lottie/signup.json',
                height: 80,
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'Manage your stock and orders with ease! View real-time reports and analytics on your inventory performance!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    
                  ),
                ),
              ),
              
              SizedBox(height: 30),
              // email textfield
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                      ),
                    ),
                  ),
                ),
              ),

              // password textfield
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),

              // password textfield
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Sign in button
              Padding(
                padding: EdgeInsets.all(0.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 115.0, vertical: 12.0),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 15,
                  ),
                ),
              ),
              // SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
