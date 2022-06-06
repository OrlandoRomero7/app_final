import 'package:app_final/second_pages/ingredients_pizza.dart';
import 'package:app_final/second_pages/nutrients_banana.dart';
import 'package:flutter/material.dart';

class CardPizza extends StatelessWidget {
  const CardPizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: SizedBox(
          height: 100,
          width: 350,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow[500],
                    radius: 40,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/pizza.png"),
                      backgroundColor: Colors.white,
                      radius: 35,
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
                        child: ListTile(
                          title: Text("Pizza\tBranded: Connie's"),
                          subtitle: Text("fdcID: 2032005"),
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
        color: Color.fromARGB(255, 156, 103, 35),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.all(10),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const IngredientsPizza(),
          ),
        );
      },
    );
  }
}
