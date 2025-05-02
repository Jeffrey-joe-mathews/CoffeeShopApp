import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/components/coffee_tile.dart';
import 'package:todo_flutter/models/coffee.dart';
import 'package:todo_flutter/models/coffee_shop.dart';

class CartPage extends StatefulWidget {   
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  // remove items from cart
  void removeFromCart (Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItem(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children:[

            // heading
            Text("Your Cart",style: TextStyle(fontSize: 18),),

            // list of items
            Expanded(child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder:(context, index) {
              // get individual cart item
              Coffee eachCoffee = value.userCart[index];
              // return coffee tile
              return CoffeeTile(
                coffee: eachCoffee, 
                onPressed:() => removeFromCart(eachCoffee), 
                icon: Icon(Icons.delete)
              );
            },))

          ],
        ),
      ),
    ),);
  }
}