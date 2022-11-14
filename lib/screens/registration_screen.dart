import 'package:cyclop/cyclop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market_place/screens/user_order_screen.dart';

class RegistratsionScreen extends StatefulWidget {
  const RegistratsionScreen({Key? key}) : super(key: key);

  @override
  State<RegistratsionScreen> createState() => _RegistratsionScreenState();
}

class _RegistratsionScreenState extends State<RegistratsionScreen> {
  DateTime _selectDay = DateTime.now();

  void _orderDate(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2024),
    ).then((_definedDay) {
      if (_definedDay != null) {
        setState(() {
          _selectDay = _definedDay;
        });
      }
    });
  }

  void _passUserOrder(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => UserOrders()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close)),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Авторизация",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Чтобы продолжить введите данные из кредитной заявки в форму ниже.",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 14,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.archive,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                  new Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Номер заявки",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        isDense: true,
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                  new Expanded(
                    child: TextField(
                      onTap: () {
                        _orderDate(context);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Дата заявки",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        isDense: true,
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 14),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    _passUserOrder(context);
                  },
                  child: Text(
                    "Войти",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 20))),
            )
          ],
        ),
      ),
    );
  }
}
