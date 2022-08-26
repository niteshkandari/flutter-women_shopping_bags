import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          buildCartBtn(),
          buildBuyNowBtn(),
        ],
      ),
    );
  }

  Expanded buildBuyNowBtn() {
    return Expanded(
      child: Container(
        height:
            50, //important when theres a BoxDeco widget inside a container then if u want to give bg color then u can only give to deco props not to container itself
        decoration: BoxDecoration(
            color: product.color, borderRadius: BorderRadius.circular(13)),
        child: TextButton(
          onPressed: () {},
          child: Text("Buy Now".toUpperCase(),
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }

  Container buildCartBtn() {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.only(right: kDefaultPaddin),
      decoration: BoxDecoration(
          border: Border.all(color: product.color),
          borderRadius: BorderRadius.circular(18)),
      child: IconButton(
          onPressed: null,
          icon: SvgPicture.asset("assets/icons/add_to_cart.svg",
              color: product.color)),
    );
  }
}
