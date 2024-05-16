import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keuanganku/pages/checkout_page.dart';
import 'package:keuanganku/pages/home_page.dart';
import 'package:keuanganku/pages/login_page.dart';
import 'package:keuanganku/pages/main_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/checkout': (context) => CheckoutPage()
      },
    );
  }
}