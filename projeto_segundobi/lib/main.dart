import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_segundobi/pages/MyHomePage.dart';
import 'package:projeto_segundobi/pages/editarPerfil.dart';
import 'package:projeto_segundobi/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/editarPerfil',
      routes: {
        '/': (context) => MyHomePage(title: 'Home Page'),
        '/login': (context) => Login(),
        '/editarPerfil': (context) => EditarPerfil(),
      },
    );
  }
}

