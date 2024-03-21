import 'package:ecommerce_ui/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //this selected index to track the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  //when user taps on bottom nav bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List <Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}