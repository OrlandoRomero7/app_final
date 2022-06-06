import 'package:app_final/second_pages/ingredients_pizza.dart';
import 'package:app_final/second_pages/nutrients_banana.dart';
import 'package:app_final/second_pages/nutrients_milk.dart';
import 'package:flutter/material.dart';

class CardMilk extends StatelessWidget {
  const CardMilk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: SizedBox(
          height: 100,
          width: 350,
          //color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue[400],
                    radius: 40,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/leche.jpg"),
                      radius: 35,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: const [
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text("Milk\tBranded: Hp Hood LLC"),
                          subtitle: Text("fdcID: 1984025"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        elevation: 10,
        color: Colors.blue.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        margin: const EdgeInsets.all(10),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NutrientsMilk(),
          ),
        );
      },
    );
  }
}
