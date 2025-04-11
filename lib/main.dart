import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart'; // Import do Firebase
import 'package:flutter/material.dart';
import 'package:loja_online/screens/base/base_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Garante a inicialização do Flutter
  await Firebase.initializeApp(); // Inicializa o Firebase

  runApp(const MyApp());

  FirebaseFirestore.instance.collection('boletos').snapshots().listen((
    snapshot,
  ) {
    for (final DocumentSnapshot doc in snapshot.docs) {
      print(doc.data()); // Corrigido: .data() é um método
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja Fernando',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BaseScreen(),
    );
  }
}
