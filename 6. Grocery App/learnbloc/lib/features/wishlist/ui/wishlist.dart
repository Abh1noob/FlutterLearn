import 'package:flutter/material.dart';
import 'package:learn_bloc/features/wishlist/ui/ProductCard.dart';
import 'package:learn_bloc/data/wishlist_items.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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
        title: const Text('Wishlist'),
      ),
      body: Center(
        child: wishlistItems.isEmpty
            ? const Text("No items in the list")
            : ListView.builder(
                itemCount: wishlistItems.length,
                itemBuilder: (context, index) {
                  return ProductCard(productDetails: wishlistItems[index]);
                },
              ),
      ),
    );;
  }
}