import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:university_app/screens/Splash_screen.dart';
import 'package:university_app/screens/Home.dart'; 
import 'package:university_app/screens/Login.dart'; 

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const AuthenticationWrapper(), 
      debugShowCheckedModeBanner: false,
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(), // Listen for authentication state changes
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show loading indicator while checking authentication state
          return const CircularProgressIndicator();
        } else {
          // Check if user is authenticated
          if (snapshot.hasData) {
            // User is authenticated, navigate to home screen
            return const Home();
          } else {
            // User is not authenticated, navigate to login screen
            return const Login();
          }
        }
      },
    );
  }
}

