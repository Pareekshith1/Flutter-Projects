// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static List<CartItem> items = [];

  static void addToCart(String name, String image, double price) {
    items.add(CartItem(name: name, image: image, price: price));
  }

  static double getTotalCost() {
    double total = 0.0;
    items.forEach((item) {
      total += item.price;
    });
    return total;
  }

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping-Cart',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF141C3B),
        iconTheme:
            IconThemeData(color: Colors.white), // Change icon color to white
      ),
      backgroundColor: Colors.blue[100],
      body: CartScreen.items.isEmpty
          ? Center(
              child: Text('No items found in cart'),
            )
          : ListView.builder(
              itemCount: CartScreen.items.length,
              itemBuilder: (context, index) {
                final item = CartScreen.items[index];
                return ListTile(
                  leading: Image.asset(
                    item.image,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(item.name),
                  subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      setState(() {
                        CartScreen.items.removeAt(index);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Item removed from cart'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
        height: 128,
        color: Colors.blue[100],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                'Total: \$${CartScreen.getTotalCost().toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (CartScreen.items.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('No items found for purchase'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                } else {
                  setState(() {
                    CartScreen.items.clear();
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Your order has been placed'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF141C3B),
                ),
              ),
              child: Text(
                'Purchase',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem {
  final String name;
  final String image;
  final double price;

  CartItem({
    required this.name,
    required this.image,
    required this.price,
  });
}
