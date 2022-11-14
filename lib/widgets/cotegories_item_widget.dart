import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market_place/models/category._model.dart';

class CategoriesItem extends StatelessWidget {
  // final List<CategoryModel> category;

  // CategoriesItem(this.category);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset('assets/images/odj.png'),
        title: const Text(
          "Одежда, обувь и аксессуары",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        trailing: Image.asset('assets/images/arrow_right.png'));
  }
}
