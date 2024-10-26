import 'package:catalog_app/pages/SignUp.dart';
import 'package:catalog_app/pages/bottomnav.dart';
import 'package:catalog_app/pages/home.dart';
import 'package:catalog_app/pages/login.dart';
import 'package:catalog_app/pages/onboard.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // Stripe.publishableKey = publishableKey;
  // await Firebase.initializeApp();
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Onboard(),
    );
  }
}
