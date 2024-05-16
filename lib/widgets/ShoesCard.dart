import 'package:flutter/material.dart';

class ShoesCard extends StatelessWidget {
  ShoesCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price
  });

  late String image = '';
  late String title = '';
  late String description = '';
  late int price = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color.fromARGB(255, 230, 230, 230),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text(description, style: TextStyle(fontSize: 12),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(price.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/checkout');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text('Add to cart')
                          ),
                        ),
                      ],
                    ),
                  ],
                )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}