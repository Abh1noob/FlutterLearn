import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> productDetails;

  const ProductCard({
    super.key,
    required this.productDetails,
  });

  @override
  Widget build(BuildContext context) {
    var tempPrice = productDetails['price'];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(
                  image: NetworkImage(productDetails['image']),
                  fit: BoxFit.fill,
                  height: 100,
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            productDetails['name'],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            width: 140,
                            child: Text(
                              productDetails['description'],
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w200),
                              softWrap: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 25),
                      child: Text(
                        "Price: ₹ $tempPrice",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  
                },
                iconSize: 30,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
