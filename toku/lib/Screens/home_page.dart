import 'package:flutter/material.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(244, 102, 50, 43),
        title: const Text('Toku'),
      ),
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
                return const NumbersPage();
              },
            ));
          },
          text: 'Family Members',
          color: const Color(0xff528032),
        ),
        Category(
          ontap: () {
            print('Colors tapped');
          },
          text: 'Colors',
          color: const Color(0xff7e3fa3),
        ),
        Category(
          ontap: () {
            print('Phares tapped');
          },
          text: 'Phares',
          color: const Color(0xff48a5cc),
        ),
      ]),
    );
  }
}
