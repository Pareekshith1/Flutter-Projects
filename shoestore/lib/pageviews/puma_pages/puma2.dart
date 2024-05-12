// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_print, use_super_parameters, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:shoestore/pageviews/cart_items/cart.dart';

void main() {
  runApp(Pum2());
}

class Pum2 extends StatelessWidget {
  const Pum2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pum2Page(),
    );
  }
}

class Pum2Page extends StatelessWidget {
  const Pum2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
            print('Clicked the back button!');
          },
        ),
        title: Text(
          "Puma-Collection",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      backgroundColor: Color(0xFF141C3B),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Image.asset('assets/images/puma2.png'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 210, top: 45),
                    child: Text(
                      "Puma 2 ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2, right: 220),
                    child: Text(
                      "Puma-Collection",
                      style: TextStyle(),
                    ),
                  ),
                  // Other details
                  SizedBox(height: 20),
                  // full container padding for the cost display and the color circles !!!
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Padding for the cost display text
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              '\$1500',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          // Padding for the color text and circles
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Color text
                              Padding(
                                padding: EdgeInsets.only(bottom: 5, right: 70),
                                child: Text(
                                  'Colors : ',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // Row for circles
                              Row(
                                children: [
                                  // Black circle
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  // Yellow circle
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color.fromARGB(255, 77, 76, 76),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Size selection
                  Padding(
                    padding: EdgeInsets.only(right: 220, top: 25),
                    child: Text(
                      "Select a size",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizeContainer(size: "6"),
                        SizeContainer(size: "7"),
                        SizeContainer(size: "8"),
                        SizeContainer(size: "9"),
                        SizeContainer(size: "10"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Add to Cart button
                  Container(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        CartScreen.addToCart(
                          "Puma 2",
                          "assets/images/puma2.png",
                          1500.0,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Successfully added to your cart !'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                        print("added to cart");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF141C3B),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatefulWidget {
  final String size;

  const SizeContainer({Key? key, required this.size}) : super(key: key);

  @override
  State<SizeContainer> createState() => _SizeContainerState();
}

class _SizeContainerState extends State<SizeContainer> {
  Color _containerColor = Colors.white;
  Color _fontColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _containerColor =
              _containerColor == Colors.white ? Colors.black : Colors.white;
          _fontColor = _fontColor == Colors.black ? Colors.white : Colors.black;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        alignment: Alignment.center,
        child: Text(
          widget.size,
          style: TextStyle(
            color: _fontColor,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: _containerColor,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
    );
  }
}
