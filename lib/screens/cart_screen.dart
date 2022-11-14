import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market_place/screens/order_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  void _orderProduct(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OrderProduct()));
  }

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 14.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);

    return Scaffold(
        body: Container(
      color: Colors.black12,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/pin.png',
                      ),
                      const Text(
                        "Мирабадск...",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "Корзина",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        _orderProduct(context);
                      },
                      child: const Text("Оформить",
                          style: TextStyle(
                            color: Colors.blue,
                          )))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 300,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                  itemBuilder: (ctx, index) {
                    return Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              "assets/images/dish.jpg",
                              fit: BoxFit.cover,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "1 419 000",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("USD"),
                              ],
                            ),
                            const Text(
                                "Столовый сервиз Diva La Opala \nFluted Green(46 пред)"),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey.shade200,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        '2',
                                        style: TextStyle(color: Colors.black),
                                      ), // <-- Text
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset("assets/images/select.png")
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        "Удалить",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 16.0),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return const Divider();
                  },
                  itemCount: 5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                    style: defaultStyle,
                    children: <TextSpan>[
                      TextSpan(text: 'Оформляя заказ вы принимаете условия '),
                      TextSpan(
                          text: 'Пользовательских соглашений',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Пользовательских соглашений"');
                            }),
                      const TextSpan(
                          text:
                              ' и даете согласие на обработку персональных данных согласно '),
                      TextSpan(
                          text: 'Политике кофиденциальности.',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Политике кофиденциальности."');
                            }),
                    ],
                  ))
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                height: 80,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Промежуточный итог"),
                        Text("12 752 000 UZS")
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _orderProduct(context);
                            },
                            child: Text("Оформить"),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 102, 162, 18),
                            ))
                      ],
                    )
                  ],
                ),
              ), //last one
            ),
          ),
        ],
      ),
    ));
  }
}
