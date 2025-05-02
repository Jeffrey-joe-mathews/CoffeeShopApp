import 'package:flutter/material.dart';
import 'package:todo_flutter/models/coffee.dart';

class CoffeeTile extends StatelessWidget {

  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  CoffeeTile({super.key, required this.coffee, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        leading: Image.asset(coffee.imagePath),
        title: Text(coffee.name),
        subtitle: Text(coffee.price.toString()),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}