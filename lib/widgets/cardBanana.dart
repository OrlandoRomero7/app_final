import 'package:app_final/second_pages/nutrients_banana.dart';
import 'package:flutter/material.dart';

class CardBanana extends StatelessWidget {
  const CardBanana({Key? key}) : super(key: key);

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
                    backgroundColor: Colors.yellow[500],
                    radius: 40,
                    child: const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/banana.png"), //NetworkImage
                      radius: 35,
                      backgroundColor: Colors.white,
                    ), //CircleAvatar
                  ),
                  //child: Image.asset("assets/banana.png"),
                  //flex: 2,
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
                          title: Text("\nBanana,raw"),
                          subtitle:
                              Text("DataType: Survey Foods\nfdcID: 1102653"),
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 8,
              ),
            ],
          ),
        ),
        elevation: 10,
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.all(10),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NutrientsBanana(),
          ),
        );
      },
    );
  }
}
