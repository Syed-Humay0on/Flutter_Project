import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:first_project/widgets/OnBoardingScreen.dart';
import 'package:first_project/widgets/AddProducts.dart';
// Import the generated file
import 'firebase_options.dart';
import 'package:flutter/material.dart';
// import 'package:first_project/widgets/Simple.dart';

Future<void> main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class Firebase {
  static initializeApp({required FirebaseOptions options}) {}
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const Products(),
      debugShowCheckedModeBanner: false,
    );
  }
}
