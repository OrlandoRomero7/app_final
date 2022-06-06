import 'package:app_final/pages/food_page.dart';
import 'package:app_final/pages/home_page.dart';
import 'package:app_final/pages/ingredients_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DrawerFoods extends StatelessWidget {
  const DrawerFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: const Color(0xff442255),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
            ),
            accountName: Text(
              "Orlando Romero",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "orlando@noquieroreprobar.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: Image(image: AssetImage("assets/bolsa.png")),
          ),
          ListTile(
            leading: const Image(image: AssetImage("assets/nutrition.png")),
            title: const Text('Info. Nutricional de Alimentos'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FoodPage()),
              );
            },
          ),
          ListTile(
            leading: const Image(
                image: AssetImage("assets/natural_ingredients.png")),
            title: const Text('Ingredientes de alimentos'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const IngredientsPage()),
              );
            },
          ),
          const AboutListTile(
            icon: Icon(
              Icons.info,
            ),
            child: Text('Acerca de'),
            applicationIcon: Icon(
              Icons.local_play,
            ),
            applicationName: 'App de alimentos',
            applicationVersion: 'Version: 911',
            applicationLegalese: '© Orlando Company',
            aboutBoxChildren: [],
          ),
        ],
      ),
    );
  }
}
