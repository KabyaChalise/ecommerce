import 'package:flutter/material.dart';
import 'package:flutter_shirt_store_application/models/cart.dart';
import 'package:flutter_shirt_store_application/models/shirts.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shirts shirts;
  CartItem({super.key, required this.shirts});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shirts);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(7)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.shirts.imagePath,
        ),
        title: Text(widget.shirts.name),
        subtitle: Text(widget.shirts.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
