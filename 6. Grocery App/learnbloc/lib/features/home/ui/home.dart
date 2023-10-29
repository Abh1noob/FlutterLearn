import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/features/cart/ui/cart.dart';
import 'package:learn_bloc/features/home/bloc/home_bloc.dart';
import 'package:learn_bloc/features/home/ui/productCard.dart';
import 'package:learn_bloc/features/wishlist/ui/wishlist.dart';
import 'package:learn_bloc/data/grocery.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        // TODO: implement listener
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Cart()));
        } else if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Wishlist()));
        } else if (state is HomeProductCartedActionState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Item Carted'),
            duration: Duration(milliseconds: 500),
          ));
        } else if (state is HomeProductWishlistedActionState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Item Wishlisted'),
            duration: Duration(milliseconds: 500),
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrangeAccent,
            title: const Text('Grocery App'),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  homeBloc.add(HomeCartButtonNavigateEvent());
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  homeBloc.add(HomeWishlistButtonNavigateEvent());
                },
              ),
            ],
          ),
          body: Center(
            child: GroceryData.groceryList.isEmpty
                ? const Text("No items in the list")
                : ListView.builder(
                    itemCount: GroceryData.groceryList.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> productDetails = {
                        "name": GroceryData.groceryList[index]['name'],
                        "image": GroceryData.groceryList[index]['imageURL'],
                        "price":
                            GroceryData.groceryList[index]['price'].toString(),
                        "description": GroceryData.groceryList[index]
                            ['description'],
                      };
                      return ProductCard(
                        productDetails: productDetails,
                        homeBloc: homeBloc,
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
