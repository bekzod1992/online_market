import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserOrders extends StatelessWidget {
  const UserOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Мои заказы",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          ListTile(
              title: Row(children: [
                Text('1 419 000',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(
                  'UZS',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
                Text('(419 000 ×3)')
              ]),
              leading: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Container(
                  color: Colors.black12,
                  width: 60,
                  height: 70,
                  child: Image.asset(
                    'assets/images/dish.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                elevation: 2,
              ),
              subtitle: Column(
                children: [
                  const Text(
                      'V4C3 Кастрюля чугунная Maysternya 4 л со стеклянной'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.grey.shade200,
                        child: const Text(
                          'Контракт создан',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Text(
                        '1 окт.',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  const Divider()
                ],
              )),
          ListTile(
              title: Row(children: [
                Text('1 419 000',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(
                  'UZS',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ]),
              leading: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Container(
                  color: Colors.black12,
                  width: 60,
                  height: 70,
                  child: Image.asset(
                    'assets/images/dish.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                elevation: 2,
              ),
              subtitle: Column(
                children: [
                  Text('Смартфон OnePlus Nord N10 6/128 Gb Midnight ice'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.grey.shade200,
                        child: Text(
                          'Подтверждено',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      const Text(
                        '30 окт.',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  const Divider()
                ],
              )),
          ListTile(
              title: Row(children: [
                Text('1 419 000',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(
                  'UZS',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ]),
              leading: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Container(
                  color: Colors.black12,
                  width: 60,
                  height: 70,
                  child: Image.asset(
                    'assets/images/dish.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                elevation: 2,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Мышь Dream Machines DM4 Evo'),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Оценить товар и доставку',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.grey.shade200,
                        child: const Text(
                          'Доставлено',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      const Text(
                        '12 окт.',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  const Divider()
                ],
              )),
        ]),
      ),
    );
  }
}
