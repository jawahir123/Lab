import 'package:flutter/material.dart';
import 'T_card.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100), // Set desired height here
          child: Container(
            height: 30,
            child: AppBar(
              backgroundColor: Colors.pink, // AppBar background color
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back), // Left arrow icon
                    Text(
                      "My Cart",
                      style:
                          TextStyle(fontSize: 18), // Customize title font size
                    ),
                    Text(
                      "Clear",
                      style: TextStyle(fontSize: 18), // Customize text size
                    ),
                  ],
                ),
              ),
              TCard(
                imgPath:
                    "https://craftsnippets.com/articles_images/placeholder/placeholder.jpg", // Correct the extension to .jpg
                title: "Toorto Special2",
                price: 10.0,
              ),
              SizedBox(
                height: 8,
              ),
              TCard(
                imgPath:
                    "https://craftsnippets.com/articles_images/placeholder/placeholder.jpg", // Correct the extension to .jpg
                title: "Toorto Special1",
                price: 10.0,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$ 25",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        "order now",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
