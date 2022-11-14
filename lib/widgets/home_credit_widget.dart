import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeCreditWidget extends StatelessWidget {
  const HomeCreditWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Оила кредит",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "все >",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ))
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Container(
                              color: Colors.black12,
                              width: 132,
                              height: 132,
                              child: Image.asset(
                                'assets/images/noutbook.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            elevation: 2,
                          ),
                          Row(
                            children: [
                              const Text(
                                '1 518 000 UZS',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                color: Colors.redAccent,
                                child: const Text(
                                  '-7',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '1 419 000',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'UZS',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                              ),
                            ],
                          ),
                          Flexible(
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              strutStyle: StrutStyle(fontSize: 12.0),
                              text: const TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text:
                                      'Panasonic MK-\n MG1501WTQ \ngo‘shtqiymalagichi'),
                            ),
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Text('0')
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("В корзину"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: 10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
