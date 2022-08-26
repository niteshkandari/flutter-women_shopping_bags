import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/details/components/body.dart';
import 'package:ecommerce_app/models/Product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: product.color,
        appBar: buildAppBar(context),
        body: Body(product: product));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"), onPressed: () {}),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
