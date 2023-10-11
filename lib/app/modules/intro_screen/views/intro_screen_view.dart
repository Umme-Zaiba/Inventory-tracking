import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:inventory/app/modules/home/views/home_view.dart';
import 'package:inventory/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/intro_screen_controller.dart';

class IntroScreenView extends StatefulWidget {
  const IntroScreenView({super.key});

  @override
  State<IntroScreenView> createState() => _IntroScreenViewState();
}

class _IntroScreenViewState extends State<IntroScreenView> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceOut,
    );

    // Start the animation after 4 seconds
    Future.delayed(Duration(seconds: 1), () {
      animationController.forward();
      animation.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Get.toNamed(Routes.LOGIN);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 245, 181, 99),
                Color.fromARGB(255, 230, 171, 253),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: animation,
                  child: Lottie.asset(
                    'assets/lottie/tracking2.json',
                    height: 200,
                  ),
                ),
                SizedBox(height: 100),
                FadeTransition(
                  opacity: animation,
                  child: Text(
                    'Inventory Tracker',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 7, 7, 69),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
