import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market_place/screens/registration_screen.dart';
import 'package:market_place/screens/user_order_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  void _passRegistrationScreen(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => RegistratsionScreen()));
  }

  void _passUserOrderScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => UserOrders()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black12,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListTile(
              title: const Text(
                'Вы не авторизованы',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('г. Ташкент, Мирабадский р.'),
              trailing: ElevatedButton(
                onPressed: () {
                  _passRegistrationScreen(context);
                },
                child: Text(
                  'Войти',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(children: [
              ListTile(
                title: Text('Корзина'),
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    color: Colors.black12,
                    width: 36,
                    height: 36,
                    child: Icon(Icons.card_travel_rounded),
                  ),
                  elevation: 2,
                ),
                trailing: Image.asset('assets/images/arrow_right.png'),
              ),
              ListTile(
                onTap: () => _passUserOrderScreen(context),
                title: Text('Мои заказы'),
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    color: Colors.black12,
                    width: 36,
                    height: 36,
                    child: Icon(Icons.web_asset),
                  ),
                  elevation: 2,
                ),
                trailing: Image.asset('assets/images/arrow_right.png'),
              ),
              ListTile(
                title: const Text('Избранное'),
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    color: Colors.black12,
                    width: 36,
                    height: 36,
                    child: Icon(Icons.favorite_outline),
                  ),
                  elevation: 2,
                ),
                trailing: Image.asset('assets/images/arrow_right.png'),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: Text('Язык'),
                  leading: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      color: Colors.black12,
                      width: 36,
                      height: 36,
                      child: Icon(Icons.language_sharp),
                    ),
                    elevation: 2,
                  ),
                  trailing: const Text('Русский'),
                ),
                ListTile(
                  title: const Text('Адресс'),
                  leading: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Container(
                      color: Colors.black12,
                      width: 36,
                      height: 36,
                      child: Icon(Icons.location_pin),
                    ),
                    elevation: 2,
                  ),
                  trailing: Image.asset('assets/images/arrow_right.png'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: Text('Обратная связь'),
                  leading: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Container(
                      color: Colors.black12,
                      width: 36,
                      height: 36,
                      child: Icon(Icons.circle),
                    ),
                    elevation: 2,
                  ),
                  trailing: Image.asset('assets/images/arrow_right.png'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text('Версия приложения 1.0.54')
        ],
      ),
    ));
  }
}
