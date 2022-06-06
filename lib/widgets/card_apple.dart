import 'package:app_final/second_pages/nutrients_apple.dart';
import 'package:flutter/material.dart';

class CardApple extends StatelessWidget {
  const CardApple({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Colors.red[500],
                    radius: 40,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/manzana.png"),
                      radius: 35,
                      backgroundColor: Color.fromARGB(255, 252, 170, 164),
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
                          title: Text("Apple,raw"),
                          subtitle: Text("fdcID: 1102644"),
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
        color: Colors.red[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.all(10),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NutrientsApple(),
          ),
        );
      },
    );
  }
}
