import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeFamilyLoan extends StatelessWidget {
  const HomeFamilyLoan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/images/Group 1349.png",
                  fit: BoxFit.cover,
                  width: 150,
                ),
              ),
              title: const Text(
                "Пришли с Oilakredit?",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Войдите с номером кредитной заявки",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Войти"),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
                Padding(padding: const EdgeInsets.all(10)),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Нет, спасибо",
                    style: TextStyle(color: Colors.black),
                  ),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.grey.shade300),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
