import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'pages/product.dart';
// import 'database/model.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'database/database_helper.dart';
import 'pages/login.dart';
// import '../pages/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBNVPzA8bQORmru3Jh37AIcbFds84y_kIM",
      appId: "1:103059987616:android:15c33c9397c86ca2de3dc5",
      messagingSenderId: "",
      projectId: "flutter-project-fcb81",
    ),
  );
  runApp(
    const MyApp()
    );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //
      // *** Edit #3 *** => modify calling ProductScreen (add new parameter)
      //
      home: const LoginScreen(),
    );
  }
}
