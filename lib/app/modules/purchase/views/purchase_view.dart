import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/purchase_controller.dart';

class PurchaseView extends GetView<PurchaseController> {
  const PurchaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PurchaseView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PurchaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
