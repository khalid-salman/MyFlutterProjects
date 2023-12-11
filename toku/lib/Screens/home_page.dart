import 'package:flutter/material.dart';
import 'package:toku/Screens/color.dart';
import 'package:toku/Screens/familymember_page.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_page.dart';
import 'package:toku/components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      backgroundColor: const Color(0xfffef6db),
      body: Column(children: [
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const NumbersPage();
              },
            ));
          },
          text: 'Numbers',
          color: const Color(0xffef9235),
        ),
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const FamilyPage();
              },
            ));
          },
          text: 'Family Members',
          color: const Color(0xff528032),
        ),
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ColorsPage();
              },
            ));
          },
          text: 'Colors',
          color: const Color(0xff7e3fa3),
        ),
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const PhrasesPage();
              },
            ));
          },
          text: 'Phares',
          color: const Color(0xff48a5cc),
        ),
      ]),
    );
  }
}
