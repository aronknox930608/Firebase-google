import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttergooglesigninsample/google_signin_screen.dart';
import 'package:fluttergooglesigninsample/profile_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GoogleSignInScreen(),
      routes: {
        ProfileScreen.routeName: (context) => ProfileScreen(),
      },
    );
  }
}