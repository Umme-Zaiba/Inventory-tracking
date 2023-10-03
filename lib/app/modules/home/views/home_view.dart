import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inventory/app/modules/home/views/drawer.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';
import 'package:inventory/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

// class HomeView extends GetView<HomeController> {
 class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: drawerview1(),
    );
  }
}
