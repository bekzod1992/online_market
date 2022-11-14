import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market_place/models/product.dart';
import 'package:market_place/widgets/product_item_widget.dart';
import 'package:market_place/widgets/home_search_widget.dart';
import 'package:market_place/widgets/home_credit_widget.dart';
import 'package:market_place/widgets/home_application_widget.dart';
import 'package:market_place/widgets/home_family_loan.dart';

class HomeScreen extends StatefulWidget {
  final List<Product> products;
  const HomeScreen({Key? key, required this.products}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    // final categoryData =
    // ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeSearchWidget(),
              HomeFamilyLoan(),
              HomeCreditWidget(),
              HomeApplicationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
