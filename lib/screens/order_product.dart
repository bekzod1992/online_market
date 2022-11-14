import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderProduct extends StatelessWidget {
  const OrderProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Оформление заказа",
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Получение товара",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 200,
                      child: ListView.separated(
                          padding: const EdgeInsets.only(top: 15),
                          itemBuilder: ((context, index) {
                            return ListTile(
                              leading: SizedBox(
                                height: 60,
                                width: 60,
                                child: Image.asset('assets/images/dish.jpg'),
                              ),
                              // Image.asset('assets/images/dish.png'),
                              subtitle: const Text(
                                  'Ташкентская обл, Бостанлыкский р, ул. Амира темура, дом 9'),
                              title: Text('Выберите способ доставки'),
                              trailing:
                                  Image.asset('assets/images/arrow_right.png'),
                            );
                          }),
                          separatorBuilder: (ctx, index) {
                            return Divider();
                          },
                          itemCount: 4),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Способ оплаты",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        leading: Icon(Icons.calculate),
                        subtitle: Text('#84568 от 12 декабря'),
                        title: const Text(
                          'В кредит от Oila Kredit',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        trailing: Image.asset('assets/images/arrow_right.png'),
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Детализация",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Товары (3)",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          "13 212 000 UZS",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Доставка",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          "40 000 UZS",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Итого",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "12 752 000 UZS",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 14),
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Оплатить заказ",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
