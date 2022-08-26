import 'package:flutter/material.dart';
import 'package:ecommerce_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int count = 1;

  void add() {
    setState(() {
      count++;
    });
  }

  void remove() {
    setState(() {
      if (count != 1) count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(icon: Icons.remove, press: remove),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            count.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(icon: Icons.add, press: add),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            )),
        child: Icon(icon),
      ),
    );
  }
}
