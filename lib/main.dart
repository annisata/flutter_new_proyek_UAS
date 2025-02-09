import 'package:flutter/material.dart';
import 'package:flutter_new_proyek/home_page.dart';
import 'package:flutter_new_proyek/login_page.dart';
import 'package:flutter_new_proyek/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //mematikan mode debug
      title: 'Login/Register Flutter',
      //theme aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: '/',
      routes: {
        '/' : (context)=>LoginPage(),
        '/register' : (context)=>RegisterPage(),
        '/home':(context) => HomePage()
      },
    );
  }
}
  