import 'package:flutter/material.dart';
import 'package:flutter_shirt_store_application/models/shirts.dart';

class Cart extends ChangeNotifier {
  // List for sale
  List<Shirts> shirtsShop = [
    Shirts(
        name: 'Black Gucci Shirt',
        price: '290',
        description:
            'Sleek and sophisticated black Gucci shirt with a subtle logo.',
        imagePath: 'lib/images/blackshirt.png'),
    Shirts(
        name: 'Blue Gucci Shirt',
        price: '210',
        description:
            'Elegant blue Gucci shirt with a vibrant hue and refined logo.',
        imagePath: 'lib/images/blueshirt.png'),
    Shirts(
        name: 'Brown Gucci Shirt',
        price: '200',
        description:
            'Rich brown Gucci shirt offering timeless elegance and comfort.',
        imagePath: 'lib/images/brownshirt.png'),
    Shirts(
        name: 'Green Gucci Shirt',
        price: '260',
        description:
            'Chic green Gucci shirt featuring a vibrant color and understated logo.',
        imagePath: 'lib/images/greenshirt.png'),
    Shirts(
        name: 'Yellow Gucci Shirt',
        price: '270',
        description:
            'Bold yellow Gucci shirt perfect for making a stylish statement.',
        imagePath: 'lib/images/yellowshirt.png'),
  ];
  // list in user cart
  List<Shirts> userCart = [];
  // get list for sale
  List<Shirts> getShirtsList() {
    return shirtsShop;
  }

  // get cart
  List<Shirts> getCart() {
    return userCart;
  }

  // add item from cart
  void addItemToCart(Shirts shirts) {
    userCart.add(shirts);
    notifyListeners();
  }

  // remove item from cart
  void removeItemToCart(Shirts shirts) {
    userCart.remove(shirts);
    notifyListeners();
  }
}
