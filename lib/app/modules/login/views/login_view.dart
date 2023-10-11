import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // Validation functions
  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Invalid email format';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    // Password pattern: Minimum 8 characters, at least one uppercase letter, one lowercase letter, one number, and one special character
    final passwordPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    if (!RegExp(passwordPattern).hasMatch(value)) {
      return 'Invalid password format: Minimum 8 characters, at least one uppercase letter, one lowercase letter, one number, and one special character';
    }
    return null;
  }

  Map<String, String> errorMessages = {
    'username': '',
    'email': '',
    'password': '',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 236, 212, 178),
                Color.fromARGB(255, 242, 224, 252),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Lottie.asset(
                      'assets/lottie/signin.json',
                      height: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        'We are glad to have you on board. Sign in now and enjoy the benefits.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.orangeAccent),
                          ),
                          hintText: 'Username',
                        ),
                        validator: (value) {
                          final errorMessage = validateUsername(value);
                          errorMessages['username'] = errorMessage ?? '';
                          return errorMessage;
                        },
                      ),
                    ),
                    Text(
                      errorMessages['username'] ?? '',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Repeat similar code for email and password fields...
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.orangeAccent),
                          ),
                          hintText: 'Email',
                        ),
                        validator: (value) {
                          final errorMessage = validateEmail(value);
                          errorMessages['email'] = errorMessage ?? '';
                          return errorMessage;
                        },
                      ),
                    ),
                    Text(
                      errorMessages['email'] ?? '',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.orangeAccent),
                          ),
                          hintText: 'Password',
                        ),
                        validator: (value) {
                          final errorMessage = validatePassword(value);
                          errorMessages['password'] = errorMessage ?? '';
                          return errorMessage;
                        },
                      ),
                    ),
                    Text(
                      errorMessages['password'] ?? '',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Get.toNamed(Routes.HOME);
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 115.0, vertical: 12.0),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 189, 251),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          elevation: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New member?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
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
                    
              SizedBox(height: 250,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
