import 'package:flutter/material.dart';
import 'package:learn_bloc/data/cart_items.dart';
import 'package:learn_bloc/features/cart/ui/ProductCard.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Cart'),
      ),
      body: Center(
        child: cartItems.isEmpty
            ? const Text("No items in the list")
            : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return ProductCard(productDetails: cartItems[index]);
                },
              ),
      ),
    );
  }
}
