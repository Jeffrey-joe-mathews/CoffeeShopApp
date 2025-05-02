import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/components/coffee_tile.dart';
import 'package:todo_flutter/models/coffee.dart';
import 'package:todo_flutter/models/coffee_shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addToCart (Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItem(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text("How Would you like your coffee?", style: TextStyle(fontSize: 18),),

            const SizedBox(height: 25,),

            //list of coffee to buy
            Expanded(
              child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context, index) {
                  // get individual coffee
                  Coffee eachCoffee = value.coffeeShop[index];

                  // create a tile for each coffee
                  return CoffeeTile(
                    coffee: eachCoffee,
                    icon: Icon(Icons.add_box),
                    onPressed:() => addToCart(eachCoffee),
                  );
                },)
            )
          ],
        ),
      )
    ), 
    );
  }
}