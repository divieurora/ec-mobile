import 'package:flutter/material.dart';
import 'package:ec_mobile/screens/menu.dart';
import 'package:ec_mobile/screens/list_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(248, 237, 227, 1.0),
            ),
            child: Column(
              children: [
                Text(
                  "Eurora's Closet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(125, 110, 131, 1.0),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Your Best Look Anytime Anywhere",
                  style: TextStyle(
                    color: Color.fromRGBO(125, 110, 131, 1.0),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.plus_one),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FormPage()));
            },
          ),
        ],
      ),
    );
  }
}