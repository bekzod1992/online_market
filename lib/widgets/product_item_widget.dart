import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market_place/models/product.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Wrap(
        children: [
          Image.asset('assets/images/noutbook.jpeg'),
          const ListTile(
            title: Text('Heading 1'),
            subtitle: Text('Sub Heading 1'),
          ),
        ],
      ),
    );
  }
}
