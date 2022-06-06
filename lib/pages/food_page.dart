import 'package:app_final/widgets/cardBanana.dart';
import 'package:app_final/widgets/card_apple.dart';
import 'package:app_final/widgets/card_bread.dart';
import 'package:app_final/widgets/card_milk.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alimentos"),
          centerTitle: true,
          backgroundColor: const Color(0xff522546),
        ),
        body: Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: const Color(0xffeeaaff),
            child: ListView(
              children: const [
                CardBanana(),
                CardApple(),
                CardMilk(),
                CardBread(),
                CardBanana(),
                CardApple(),
              ],
            )));
  }
}
