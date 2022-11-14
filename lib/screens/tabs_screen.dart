import 'package:flutter/material.dart';
import 'package:market_place/models/category._model.dart';
import 'package:market_place/models/product.dart';
import 'package:market_place/screens/account_screen.dart';
import 'package:market_place/screens/cart_screen.dart';
import 'package:market_place/screens/categories_screen.dart';
import 'package:market_place/screens/home_screen.dart';
import 'package:market_place/screens/registration_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Product> products;
  final List<CategoryModel> categories;

  const TabsScreen({Key? key, required this.products, required this.categories})
      : super(key: key);

  static const routeName = '/';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _tabIndex = 0;
  List<Map<String, dynamic>> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      {
        'page': HomeScreen(products: widget.products),
        'title': 'Главная',
      },
      {
        'page': CategoriesScreen(),
        'title': 'Категории',
      },
      {
        'page': CartScreen(),
        'title': 'Корзина',
      },
      {
        'page': AccountScreen(),
        // 'page': AccountScreen(),
        'title': 'Аккаунт',
      }
    ];
  }

  void _changeTab(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_tabIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _changeTab,
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.work_outline,
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.apps,
            ),
            label: "Категории",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.shopping_cart_checkout,
            ),
            label: "Корзина",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.face,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
