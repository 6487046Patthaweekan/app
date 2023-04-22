import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:itds283_travel_naja_project/page/landing_page.dart';
import 'package:itds283_travel_naja_project/page/login_page.dart';
import 'package:itds283_travel_naja_project/page/profile_guest_1.dart';
import 'package:itds283_travel_naja_project/page/register_info_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group 3 Flutter Project (Travel Naja)',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => profile_guest_1(),
        "/landing": (BuildContext context) => const LandingPage(),
        "/login": (BuildContext context) => Login_Page_1(
              email: '',
              password: '',
            ),
        "/register": (BuildContext context) => RegisterInfoPage(
              email: '',
              password: '',
            ),

        // "auth" :(BuildContext context) => const  Auth()
        // "/home": (BuildContext context) => const HomePage(),
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    );
  }
}
