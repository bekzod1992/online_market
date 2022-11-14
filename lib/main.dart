import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_place/models/category._model.dart';
import 'package:market_place/models/product.dart';
import 'package:market_place/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final _productModel = Products();
  final _categoriesModel = Categories();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.adventPro().fontFamily,
      ),
      initialRoute: TabsScreen.routeName,
      routes: {
        TabsScreen.routeName: (ctx) => TabsScreen(
            products: _productModel.list,
            categories: _categoriesModel.categoryList),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(
            products: _productModel.list,
          ),
        );
      },
    );
  }
}
