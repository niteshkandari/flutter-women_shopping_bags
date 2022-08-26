import 'package:flutter/material.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/screens/details/components/color_and_size.dart';
import 'package:ecommerce_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:ecommerce_app/screens/details/components/description.dart';
import 'package:ecommerce_app/screens/details/components/product_title_with_image.dart';
import 'package:ecommerce_app/screens/details/components/add_to_cart.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.1,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorandSize(product: product),
                      // const SizedBox(height: kDefaultPaddin),
                      Description(product: product),
                      // const SizedBox(height: kDefaultPaddin),
                      const CounterWithFavBtn(),
                      // const SizedBox(height: kDefaultPaddin),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitlWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
