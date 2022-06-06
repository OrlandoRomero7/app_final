import 'package:app_final/widgets/card_pizza.dart';
import 'package:flutter/material.dart';

class IngredientsPage extends StatelessWidget {
  const IngredientsPage({Key? key}) : super(key: key);

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
              children: const [CardPizza()],
            )));
  }
}
