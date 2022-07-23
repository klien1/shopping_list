import 'package:flutter/material.dart';
import 'package:shopping_list/constants.dart';

class ShoppingTitle extends StatelessWidget {
  const ShoppingTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Shopping',
          textAlign: TextAlign.center,
          style: titleTextStyle,
        ),
        Row(
          children: const [
            Icon(
              Icons.check,
              size: 50,
            ),
            Text(
              'List',
              textAlign: TextAlign.center,
              style: titleTextStyle,
            )
          ],
        )
      ],
    );
  }
}
