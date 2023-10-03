import 'package:flutter/material.dart';

class loginAdmin extends StatefulWidget {
  const loginAdmin({super.key});

  @override
  State<loginAdmin> createState() => _loginAdminState();
}

class _loginAdminState extends State<loginAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  SizedBox(height: 30),

                  // email textfield
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
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
                        border: Border.all(color: Colors.white),
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
                        // Get.toNamed(Routes.HOME);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 121.0, vertical: 12.0),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 7, 7, 69),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 10,
                        
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
      
                  // not a member
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Get.toNamed(Routes.SIGNUP);
                        },
                        child: InkWell(
                          child: Text(
                            ' Register Now',                      
                            style: TextStyle(
                              color: Colors.lightBlue[900],
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
      ),
      );
  }
}