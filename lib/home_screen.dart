import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:module16_firebase_assignment/second_screen.dart';
import 'package:module16_firebase_assignment/third_screen.dart';

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference match1CollectionRef =
      firebaseFirestore.collection("Argentina vs Africa");
  late CollectionReference match2CollectionRef =
      firebaseFirestore.collection("Italy vs Span");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Match List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(match1CollectionRef.path.toString()),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondScreen()));
            },
          ),
          ListTile(
            title: Text(match2CollectionRef.path.toString()),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()));
            },
          ),
        ],
      ),
    );
  }
}
