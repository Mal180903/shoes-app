import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keuanganku/pages/home_page.dart';


class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text(
            'ShoesPark',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
      body: Stack(
        children: [
          
          Container(
            
            margin: EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        
                        ),
                        child: Padding(
                          
                          padding: const EdgeInsets.all(20.0),
                          
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'CheckOut',
                            style: TextStyle(fontSize: 18,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black87
                            ),
                            ),
                            
                          ),
                          ),
                        
          )
        ],
      ),
    );
  }
}