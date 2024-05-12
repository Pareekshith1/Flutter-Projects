// ignore_for_file: prefer_const_constructors, use_super_parameters, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace, unnecessary_import, sort_child_properties_last, unused_import, use_key_in_widget_constructors

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoestore/main.dart';

// import for the airjordan collection starts here
import 'package:shoestore/pageviews/airjordans_pages/air1.dart';
import 'package:shoestore/pageviews/airjordans_pages/air2.dart';
import 'package:shoestore/pageviews/airjordans_pages/air3.dart';
import 'package:shoestore/pageviews/airjordans_pages/air4.dart';
import 'package:shoestore/pageviews/airjordans_pages/air5.dart';
// import for the airjordan collection ends here

//import for the adidas collection starts here
import 'package:shoestore/pageviews/adidas_pages/das1.dart';
import 'package:shoestore/pageviews/adidas_pages/das2.dart';
import 'package:shoestore/pageviews/adidas_pages/das3.dart';
import 'package:shoestore/pageviews/adidas_pages/das4.dart';
import 'package:shoestore/pageviews/adidas_pages/das5.dart';
//import for the adidas collection ends here

//import for the Rebok Collection starts here
import 'package:shoestore/pageviews/reebok_pages/bok1.dart';
import 'package:shoestore/pageviews/reebok_pages/bok2.dart';
import 'package:shoestore/pageviews/reebok_pages/bok3.dart';
import 'package:shoestore/pageviews/reebok_pages/bok4.dart';
import 'package:shoestore/pageviews/reebok_pages/bok5.dart';
//import for the Rebok Collection ends here

//import for the bata collection starts here
import 'package:shoestore/pageviews/bata_pages/bata1.dart';
import 'package:shoestore/pageviews/bata_pages/bata2.dart';
import 'package:shoestore/pageviews/bata_pages/bata3.dart';
import 'package:shoestore/pageviews/bata_pages/bata4.dart';
import 'package:shoestore/pageviews/bata_pages/bata5.dart';
//import for the bata collection ends here

//import for the puma collection starts here
import 'package:shoestore/pageviews/puma_pages/puma1.dart';
import 'package:shoestore/pageviews/puma_pages/puma2.dart';
import 'package:shoestore/pageviews/puma_pages/puma3.dart';
import 'package:shoestore/pageviews/puma_pages/puma4.dart';
import 'package:shoestore/pageviews/puma_pages/puma5.dart';
//import for the puma collection ends here

//import for the cart page starts here
import 'package:shoestore/pageviews/cart_items/cart.dart';
//import for thr cart page ends here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //different initialized routes for each page
      routes: {
        // initial route for loading the first page
        '/': (context) => HomePage(),
        // routes for the air collections
        '/air1': (context) => Air1Page(),
        '/air2': (context) => Air2Page(),
        '/air3': (context) => Air3Page(),
        '/air4': (context) => Air4Page(),
        '/air5': (context) => Air5Page(),
        // navigation for the cart screen
        '/CartScreen': (context) => CartScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sprinters-Stop",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF141C3B),
            elevation: 0,
            title: Text(
              "Sprinters Stop",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle:
                false, // the centering of the title can be done here !!
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  print("Search Button Pressed");
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                  print('Viewing the kart');
                },
              )
            ],
          ),
          backgroundColor: Color(0xFF141C3B),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(400.0),
                    ),
                    color: Color(0xFF141C3B),
                    // Change to a contrasting color
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(400.0),
                    ),
                    child: Image.asset(
                      'assets/images/sprinterstop3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // THE HEADING TEXTS OF EACH SHOES

                Padding(
                    padding: EdgeInsets.only(top: 50, right: 220),
                    child: Text(
                      'Air Jordans',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                // container-1 which contains different air-jordans
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors
                          .transparent, // THE BACKGROUND COLOR OF THE FIRST MAIN CONTAINER CAN BE CHANGED HERE !!!
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // sub container 1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Air1Page()),
                            );
                          },
                          child: Container(
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Color(0xFF1C2755),
                                boxShadow: []),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 50, top: 20),
                                  child: Text(
                                    'AIR-Jordans 1 ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxHeight: 380, maxWidth: 220),
                                    child: Image.asset(
                                      'assets/images/jordans1.png',
                                      width: 220,
                                      height: 380,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 140,
                                  bottom: 20,
                                  child: Text(
                                    "Price : \$500",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        // sub container 2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Air2Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, left: 50),
                                    child: Text(
                                      'AIR-Jordans 2',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/jordans2.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$600",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // sub container 3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Air3Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      left: 50,
                                    ),
                                    child: Text(
                                      'AIR-Jordans 3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 20,
                                    child: Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/jordans3.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1000",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // sub container 4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Air4Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, left: 30),
                                    child: Text(
                                      'AIR-Jordans 4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/jordans4.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$800",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // sub container 5
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Air5Page()));
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                width: 300,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Color(0xFF1C2755)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50, top: 20),
                                      child: Text('AIR-Jordans 5',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                          )),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 20,
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxHeight: 380, maxWidth: 220),
                                        child: Image.asset(
                                          'assets/images/jordans5.png',
                                          width: 220,
                                          height: 380,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 140,
                                      bottom: 20,
                                      child: Text(
                                        "Price : \$1500",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),

                // top text
                Padding(
                    padding: EdgeInsets.only(top: 20, right: 260),
                    child: Text(
                      'Adidas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                // second container which holds different adidas shoes
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors
                          .transparent, // THE BACKGROUND OF THE MAIN CONTAINER CAN BE CHANGED HERE
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // adidas container sub child 1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Das1Page()));
                          },
                          child: Container(
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color(0xFF2E3B6E),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 50, top: 20),
                                  child: Text('Adidas 1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxHeight: 380, maxWidth: 220),
                                    child: Image.asset(
                                      'assets/images/adidas1.png',
                                      width: 220,
                                      height: 380,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 140,
                                  bottom: 20,
                                  child: Text(
                                    "Price : \$1500",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // adidas container 2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Das2Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFF2E3B6E),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text(
                                      'Adidas 2',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/adidas2.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$400",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // adidas container 3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Das3Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFF2E3B6E),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text(
                                      'Adidas 3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/adidasa3.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1000",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // adidas container 4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Das4Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFF2E3B6E),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text(
                                      'Adidas 4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/adidas4.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1300",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // adidas container 5
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Das5Page()));
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                width: 300,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2E3B6E),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 20,
                                      left: 20,
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50, top: 20),
                                      child: Text(
                                        'Adidas 5',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxHeight: 380, maxWidth: 220),
                                        child: Image.asset(
                                          'assets/images/adidas5.png',
                                          width: 220,
                                          height: 380,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 140,
                                      bottom: 20,
                                      child: Text(
                                        "Price : \$1100",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),

                // HEADING TEXT
                Padding(
                    padding: EdgeInsets.only(top: 20, right: 260),
                    child: Text(
                      'Reebok',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                // container-3 which contains different Reebok shoes
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors
                          .transparent, // THE BACKGROUND COLOR OF THE THIRD MAIN CONTAINER CAN BE CHANGED HERE !!
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // sub container 1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bok1Page()));
                          },
                          child: Container(
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Color(0xFF1C2755)),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 50, top: 20),
                                  child: Text(
                                    'Reebok 1 ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxHeight: 380, maxWidth: 220),
                                    child: Image.asset(
                                      'assets/images/reebok1.png',
                                      width: 220,
                                      height: 380,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 140,
                                  bottom: 20,
                                  child: Text(
                                    "Price : \$800",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        // sub container 2
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Bok2Page()));
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                width: 300,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Color(0xFF1C2755)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 50),
                                      child: Text(
                                        'Reebok 2',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      bottom: 20,
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxHeight: 380, maxWidth: 220),
                                        child: Image.asset(
                                          'assets/images/reebok2.png',
                                          width: 220,
                                          height: 380,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 140,
                                      bottom: 20,
                                      child: Text(
                                        "Price : \$1200",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),

                        // sub container 3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bok3Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      left: 50,
                                    ),
                                    child: Text(
                                      'Reebok 3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 20,
                                    child: Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/reebok3.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1300",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // sub container 4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bok4Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, left: 30),
                                    child: Text(
                                      'Reebok 4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/reebok4.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1400",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // sub container 5
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bok5Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text('Reebok 5',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/reebok5.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1500",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //HEADING TEXT
                Padding(
                    padding: EdgeInsets.only(top: 20, right: 280),
                    child: Text(
                      'Bata',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                // fourth container which holds different bata shoes
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors
                          .transparent, // THE COLOR OF THE FOURTH MAIN CONTAINER CAN BE CHANGED HERE
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // Bata container sub child 1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bat1Page()));
                          },
                          child: Container(
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color(0xFF2E3B6E),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 50, top: 20),
                                  child: Text('Bata 1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxHeight: 380, maxWidth: 220),
                                    child: Image.asset(
                                      'assets/images/bata1.png',
                                      width: 220,
                                      height: 380,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 140,
                                  bottom: 20,
                                  child: Text(
                                    "Price : \$900",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // bata container 2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bat2Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFF2E3B6E),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text(
                                      'Bata 2',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/bata2.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1700",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // bata container 3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bat3Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFF2E3B6E),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text(
                                      'Bata 3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/bata3.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1800",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // bata container 4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bat4Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFF2E3B6E),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text(
                                      'Bata 4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/bata4.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$2000",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // bata container 5
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Bat5Page()));
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                width: 300,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2E3B6E),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 20,
                                      left: 20,
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50, top: 20),
                                      child: Text(
                                        'Bata 5',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxHeight: 380, maxWidth: 220),
                                        child: Image.asset(
                                          'assets/images/bata5.png',
                                          width: 220,
                                          height: 380,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 140,
                                      bottom: 20,
                                      child: Text(
                                        "Price : \$1900",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),

                //HEADING TEXT
                Padding(
                    padding: EdgeInsets.only(top: 20, right: 280),
                    child: Text(
                      'Puma',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                // puma shoe containers ae here !!!!
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors
                          .transparent, //THE FIFTH CONTAINERS BACKGROUND COLOR CAN BE CHANGED HERE !!
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // puma  sub container 1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pum1Page()));
                          },
                          child: Container(
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Color(0xFF1C2755)),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 50, top: 20),
                                  child: Text(
                                    'Puma 1 ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxHeight: 380, maxWidth: 220),
                                    child: Image.asset(
                                      'assets/images/puma1.png',
                                      width: 220,
                                      height: 380,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 140,
                                  bottom: 20,
                                  child: Text(
                                    "Price : \$700",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        //puma sub container 2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pum2Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, left: 50),
                                    child: Text(
                                      'Puma 2',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/puma2.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1500",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //puma sub container 3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pum3Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      left: 50,
                                    ),
                                    child: Text(
                                      'Puma 3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 20,
                                    child: Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/puma3.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1200",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //puma sub container 4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pum4Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, left: 30),
                                    child: Text(
                                      'Puma 4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/puma4.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1000",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //puma sub container 5
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pum5Page()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 300,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF1C2755)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Text('Puma 5',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 20,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxHeight: 380, maxWidth: 220),
                                      child: Image.asset(
                                        'assets/images/puma5.png',
                                        width: 220,
                                        height: 380,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 140,
                                    bottom: 20,
                                    child: Text(
                                      "Price : \$1800",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Extra terrestrial space for making an difference and leaving som gap in the bottom
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
