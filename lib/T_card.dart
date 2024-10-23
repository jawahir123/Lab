import 'package:flutter/material.dart';

class TCard extends StatefulWidget {
  final String imgPath; // Path for the image
  final String title; // Title of the card
  final double price; // Price value
  final int initialQuantity; // Initial quantity of the item

  const TCard({
    super.key,
    required this.imgPath,
    required this.title,
    required this.price,
    this.initialQuantity = 1, // Default quantity is set to 1
  });

  @override
  State<TCard> createState() => _TCardState();
}

class _TCardState extends State<TCard> {
  int _quantity = 2; // Quantity state

  @override
  void initState() {
    super.initState();
    _quantity = widget.initialQuantity; // Set initial quantity from the widget
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0), // Round top left corner
                  bottomLeft: Radius.circular(20.0), // Round bottom left corner
                ),
                child: Container(
                  width: 120,
                  child: Image.network(
                    widget.imgPath, // Use dynamic image path
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start
                children: [
                  Text(
                    widget.title, // Use dynamic title
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5), // Space between the title and price
                  Text(
                    "\$ ${widget.price.toStringAsFixed(2)}", // Display dynamic price
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      // Minus IconButton with pink background
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.pink, // Background color
                          shape: BoxShape.circle, // Circular shape
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          color: Colors.white, // Icon color
                          onPressed: () {
                            setState(() {
                              if (_quantity > 1) {
                                _quantity--;
                              }
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10), // Space between icon and text
                      Text(
                        _quantity.toString(), // Display dynamic quantity
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10), // Space between text and next icon

                      // Plus IconButton with pink background
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.pink, // Background color
                          shape: BoxShape.circle, // Circular shape
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: Colors.white, // Icon color
                          onPressed: () {
                            setState(() {
                              _quantity++;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, bottom: 55),
                child: IconButton(
                  icon: Icon(Icons.delete_outline), // Outlined delete icon
                  color: Colors.black, // Icon color
                  onPressed: () {
                    // Action when delete button is pressed
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
