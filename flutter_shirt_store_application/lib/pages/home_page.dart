import 'package:flutter/material.dart';
import 'package:flutter_shirt_store_application/components/bottom_nav_bar.dart';
import 'package:flutter_shirt_store_application/pages/cart_page.dart';
import 'package:flutter_shirt_store_application/pages/intro_page.dart';
import 'package:flutter_shirt_store_application/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected index to control nav bar
  int selectedIndex = 0;

  // method will update our nav bar when user select
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    DrawerHeader(
                      child: Image.asset(
                        'lib/images/gucci.png',
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24,top: 40),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage())),
                        child: ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Home",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: ListTile(
                        leading: Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        title: Text(
                          "About",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    
                  ],
                ),

                // other pages

              ],
            ),
            //
            Padding(
                      padding: const EdgeInsets.only(left: 24,bottom: 40),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => IntroPage())) ,
                        child: ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Logout",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
