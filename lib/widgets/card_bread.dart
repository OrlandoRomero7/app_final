import 'package:app_final/second_pages/nutrients_bread.dart';
import 'package:flutter/material.dart';

class CardBread extends StatelessWidget {
  const CardBread({Key? key}) : super(key: key);

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
                    backgroundColor: Colors.brown[600],
                    radius: 40,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/white_bread.png"),
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
                        child: ListTile(
                          title: Text("\nBread"),
                          subtitle: Text(
                              "Branded: Panderia Pan del Cielo\nfdcID: 2071481"),
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
        margin: const EdgeInsets.all(10),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NutrientsBread(),
          ),
        );
      },
    );
  }
}
