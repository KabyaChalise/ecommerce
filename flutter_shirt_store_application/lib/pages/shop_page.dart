import 'package:flutter/material.dart';
import 'package:flutter_shirt_store_application/components/shirt_tile.dart';
import 'package:flutter_shirt_store_application/models/cart.dart';
import 'package:flutter_shirt_store_application/models/shirts.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShirtsToCart(Shirts shirts) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shirts);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Successfully Added"),
              content: Text("Check your cart"),
            ));
  }
  

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // searchbar
          Container(
            padding: EdgeInsets.all(14),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              "Quality is remembered long after the price is forgotten",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          // hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks🔥",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shirts shirts = value.getShirtsList()[index];
                  return ShirtTile(
                    shirts: shirts,
                    onTap:() => addShirtsToCart(shirts),
                  );
                }),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
