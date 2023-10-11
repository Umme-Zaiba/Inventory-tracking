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
// // // ignore_for_file: use_build_context_synchronously

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'app/routes/app_pages.dart';

// void main() {
//   runApp(
//     GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Application",
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//     ),
//   );
// }
// Make an HTTP GET request to the API
//   fetchApiData();
// }

// void fetchApiData() async {
//   final apiUrl = Uri.parse('https://192.168.1.99:8000/api/'); // Replace with your API endpoint

//   try {
//     final response = await http.get(apiUrl);

//     if (response.statusCode == 200) {
//       final responseData = jsonDecode(response.body);
//       print('API Response Data: $responseData');
//     } else {
//       print('Failed to fetch data. Status code: ${response.statusCode}');
//     }
//   } catch (error) {
//     print('Error: $error');
//   }
// }

// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'app/routes/app_pages.dart';

// void main() {
//   runApp(
//     GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Application",
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//     ),
//   );
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:inventory/app/modules/home/views/home_view.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   void postData() async {
//     final response = await http.post(
//       Uri.parse('http://192.168.1.85:8000/api/register'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         'username': nameController.text,
//         'email': emailController.text,
//         'password': passwordController.text,
//       }),
//     );
//     if (response.statusCode == 200) {
//       // Request was successful
//       print('Data posted successfully'); // Add this line
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => HomeView()));
//     } else {
//       // Request failed
//       print('Failed to post data. Status code: ${response.statusCode}');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Post Data Example'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                 ),
//               ),
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                 ),
//               ),
//               TextField(
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: postData,
//                 child: Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
