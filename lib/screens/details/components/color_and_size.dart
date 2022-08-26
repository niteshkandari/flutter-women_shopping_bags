import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/Product.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Color'),
            Row(children: const <Widget>[
              ColorDot(color: Color(0xff356C95), isSelected: true),
              ColorDot(color: Color(0xfff8c078), isSelected: false),
              ColorDot(color: Color(0xffa29b9b), isSelected: false),
            ]),
          ],
        ),
      ),
      Expanded(
        child: RichText(
            text:
                TextSpan(style: const TextStyle(color: kTextColor), children: [
          const TextSpan(text: "Size\n"),
          TextSpan(
              text: "${product.size} cm",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold))
        ])),
      ),
    ]);
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
