import 'package:flutter/material.dart';
import 'package:flutter_shirt_store_application/models/shirts.dart';

class ShirtTile extends StatelessWidget {
  final Shirts shirts;
  void Function()? onTap;
  ShirtTile({Key? key, required this.shirts, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shirt pic
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Image.asset(
              shirts.imagePath,
              key: ValueKey(shirts.imagePath),
              fit: BoxFit.cover,
            ),
          ),

          // Shirt description
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              shirts.description,
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),

          // Price + details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Shirt name
                    Text(
                      shirts.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // Shirt price
                    Text(
                      '\$${shirts.price}',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
