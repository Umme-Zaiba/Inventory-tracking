import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/suppliers_controller.dart';

class SuppliersView extends GetView<SuppliersController> {
  const SuppliersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SuppliersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SuppliersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
