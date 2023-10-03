import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inventory/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/login_controller.dart';

// class LoginView extends GetView<LoginController> {

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
 String _email = '';
  String _password = '';
  String _selectedRole = 'Sales';

  final List<String> _roles = ['Sales', 'Admin', 'Purchase'];

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              SizedBox(height: 30),
        
              Lottie.asset('assets/lottie/signin.json',
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'We are glad to have you on board. Sign in now and enjoy the benefits.',
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
                              hintText: 'Name',
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
                    // Sign in button
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.HOME);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 115.0, vertical: 12.0),
                          child: Text(
                            "Sign In",
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
                    SizedBox(height: 25),
              
                    // not a member
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New memeber?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.italic,
                            color: Colors.grey[700],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                          child: InkWell(
                            child: Text(
                              ' Register Now',                      
                              style: TextStyle(
                                color: Color.fromARGB(255, 250, 161, 44),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}

