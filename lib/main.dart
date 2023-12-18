import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:module16_firebase_assignment/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCc40-RDhxoQDdbd6embeiOe3u0zOR6FUg",
              appId: "1:58610389375:android:39c63e9f292c2e3c618a4a",
              messagingSenderId: "58610389375",
              projectId: "first-flutter-firebase-p-9a05f"))
      : await Firebase.initializeApp();
  runApp(const FootballApp());
}
