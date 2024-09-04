import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String size = 'Medium';
    const String crust = 'Thin';
    const String sausa = 'Tomato';
    final List<String> toppings = ['Mushrooms', 'Olives'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test for Clean Architecture'),
        ),
        body: Column(
          children: [
            PizzaWidget(
              pizza: Pizza(
                  size: size, crust: crust, sausa: sausa, toppings: toppings),
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class Pizza {
  final String size;
  final String crust;
  final String sausa;
  final List<String> toppings;
  final bool hasExtraCheese;

  const Pizza({
    required this.size,
    required this.crust,
    required this.sausa,
    required this.toppings,
    this.hasExtraCheese = true,
  });

  Pizza copyWith({
    String? size,
    String? crust,
    String? sausa,
    List<String>? toppings,
    bool? hasExtraCheese,
  }) {
    return Pizza(
      size: size ?? this.size,
      crust: crust ?? this.crust,
      sausa: sausa ?? this.sausa,
      toppings: toppings ?? this.toppings,
      hasExtraCheese: hasExtraCheese ?? this.hasExtraCheese,
    );
  }
}

class PizzaWidget extends StatelessWidget {
  final Pizza pizza;

  const PizzaWidget({required this.pizza, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Size: ${pizza.size}'),
            Text('Crust: ${pizza.crust}'),
            Text('Sausa: ${pizza.sausa}'),
            Text('Toppings: ${pizza.toppings.join(', ')}'),
            Text('Extra Cheese: ${pizza.hasExtraCheese ? 'Yes' : 'No'}'),
          ],
        ),
      ),
    );
  }
}
