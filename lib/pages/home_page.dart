import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keuanganku/widgets/ShoesCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List sepatu = [
    {
      'title': 'Nike Ardilla',
      'description': 'askldjaskld',
      'price': 100000,
      'imagePath': 'assets/images/nike1.png'
    },
    {
      'title': 'Nike Ardilla',
      'description': 'askldjaskld',
      'price': 100000,
      'imagePath': 'assets/images/nike2.png'
    },
  ];

  String kataKunci = '';

  void onSearch(String text) {
    setState(() {
      kataKunci = text;
    });
  }

  List searchedShoes() {
    if (kataKunci.isNotEmpty) {
      return sepatu
        .where((element) => (element['title'] as String).toLowerCase().contains(kataKunci.toLowerCase()))
        .toList();
    }

    return sepatu;
  }

  @override
  Widget build(BuildContext context) {
    final dataSepatuYangDicari = searchedShoes();

    print(dataSepatuYangDicari.toString());

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kolom Pencarian
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: onSearch,
                  decoration: InputDecoration(
                    hintText: 'Cari Sepatu Mu Disini Po...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
      
              // DefaultTabController untuk 3 merek
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: 'Nike'),
                        Tab(text: 'Adidas'),
                        Tab(text: 'Vans'),
                      ],
                    ),
                    // Isi dari setiap tab
                    Container(
                      height: 800,
                      child: TabBarView( 
                        children: [
                          // Konten untuk tab Nike
                          ListView.builder(
                            padding: EdgeInsets.all(10),
                            shrinkWrap: true,
                            itemCount: dataSepatuYangDicari.length,
                            itemBuilder: (context, index) => ShoesCard(
                              image: dataSepatuYangDicari[index]['imagePath'],
                              title: dataSepatuYangDicari[index]['title'],
                              description: dataSepatuYangDicari[index]['description'],
                              price: dataSepatuYangDicari[index]['price'],
                            ),
                          ),
                          // Konten untuk tab Adidas
                          Text('Adidas'),
                          // ListView(
                          //   padding: EdgeInsets.all(10),
                          //   shrinkWrap: true,
                          //   children: [
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //   ],
                          // ),
                          // Konten untuk tab Vans
                          Text('Vans'),
                          // ListView(
                          //   padding: EdgeInsets.all(10),
                          //   shrinkWrap: true,
                          //   children: [
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //     ShoesCard(image: 'assets/images/nike1.png'),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      
            ],
          ),
        ),
      ),
    );
  }
}