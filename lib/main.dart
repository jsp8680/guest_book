import 'package:flutter/material.dart';
import 'package:guestbook/pages/home.dart';
import 'package:guestbook/route/route.dart' as route;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'package:guestbook/pages/auth_gate.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.authGate,
    );
  }
}