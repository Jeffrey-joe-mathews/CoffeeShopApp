import 'package:flutter/material.dart';
import 'package:todo_flutter/models/coffee.dart';

class CoffeeShop extends ChangeNotifier{
  // coffee data
  final List<Coffee> _data = [
    // black coffee
    Coffee(
      name: "Black Coffee", 
      price: 12.0, 
      imagePath: "lib/images/black.png"
    ),

    // ices coffee
    Coffee(
      name: "Iced Coffee", 
      price: 50.0, 
      imagePath: "lib/images/iced.png"
    ),

    // latte
    Coffee(
      name: "Latte", 
      price: 25.0, 
      imagePath: "lib/images/latte.png"
    ),

    // americano
    Coffee(
      name: "Americano", 
      price: 20.0, 
      imagePath: "lib/images/americano.png"
    )
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get item data
  List<Coffee> get coffeeShop => _data;

  // get cart data
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItem (Coffee coffee) {
    _userCart.add(coffee);
  }

  // remove item from cart 
  void removeItem (Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }

}

