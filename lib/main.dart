import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/Screens/login_Screen.dart';
import 'package:untitled6/Screens/signup_screen.dart';
import 'package:untitled6/responsive/mobileScreenLayout.dart';
import 'package:untitled6/responsive/responsive_layout_screen.dart';
import 'package:untitled6/responsive/webScreenLayout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            storageBucket: "connect-28082.appspot.com",
            apiKey: "AIzaSyD-Ynhdv9ajT-gE0XCA-Ho6xYCj4aXHK0c",
            appId: "1:240497756684:web:611d6c6033838cb6a7bc29",
            messagingSenderId: "240497756684",
            projectId: "connect-28082"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      // home: ResponsiveLayout(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout()),
      home: SignupScreen(),
    );
  }
}
