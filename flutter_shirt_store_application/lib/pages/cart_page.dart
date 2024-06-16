import 'package:flutter/material.dart';
import 'package:flutter_shirt_store_application/components/cart_item.dart';
import 'package:flutter_shirt_store_application/models/cart.dart';
import 'package:flutter_shirt_store_application/models/shirts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getCart().length,
                      itemBuilder: (context, index) {
                      Shirts individualShirt = value.getCart()[index];

                      return CartItem(shirts: individualShirt,);
                    }),
                  )
                ],
              ),
            ));
  }
}
