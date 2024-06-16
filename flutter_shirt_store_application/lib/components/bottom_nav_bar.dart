import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
    void Function(int)? onTabChange;

   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade50,
        tabBorderRadius: 5,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home,text: "Shop",),
          GButton(icon: Icons.shopping_bag,text: "Cart",)

        ],
      ),
    );
  }
}
