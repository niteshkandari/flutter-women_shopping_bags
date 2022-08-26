import 'package:ecommerce_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/home/components/item_card.dart';
import 'package:ecommerce_app/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(product: products[index]),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
