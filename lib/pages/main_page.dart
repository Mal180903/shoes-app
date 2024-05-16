import 'package:flutter/material.dart';
import 'package:keuanganku/pages/home_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      body: HomePage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home)),
          SizedBox(width: 20,), 
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          SizedBox(width: 20,), 
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
          ],
          ),
          ),
         
          
          
    );
  }
}