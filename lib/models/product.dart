import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String price;
  final String oldPrice;
  final String images;
  final int discount;
  final int appraisal;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.oldPrice,
      required this.images,
      required this.discount,
      required this.appraisal});
}

class Products with ChangeNotifier {
  final List<Product> _list = [
    Product(
        id: 'p1',
        title: 'Panasonic MK- MG1501WTQ go‘shtqiymalagichi',
        price: '1 419 000',
        oldPrice: '1 518 000',
        images: 'assets/images/noutbook.jpeg',
        discount: 7,
        appraisal: 5),
    Product(
        id: 'p2',
        title: 'Hotpoint-Ariston HB 0805 UP0 blenderi',
        price: '1 419 000',
        oldPrice: '1 518 000',
        images: 'assets/images/noutbook.jpeg',
        discount: 7,
        appraisal: 5),
    Product(
        id: 'p3',
        title: 'Kenwood ZJG-801 elektr choynagi',
        price: '1 419 000',
        oldPrice: '1 518 000',
        images: 'assets/images/noutbook.jpeg',
        discount: 7,
        appraisal: 5),
    Product(
        id: 'p4',
        title: 'Panasonic MK- MG1501WTQ go‘shtqiymalagichi',
        price: '1 419 000',
        oldPrice: '1 518 000',
        images: 'assets/images/noutbook.jpeg',
        discount: 7,
        appraisal: 5),
  ];

  List<Product> get list {
    return _list;
  }
}
