import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 153, 164, 242)),
        // appBarTheme: AppBarTheme(color: Colors.cyan.withOpacity(0.1)),
      ),
    ),
  );
}
