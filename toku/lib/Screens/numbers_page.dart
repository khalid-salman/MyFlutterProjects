import 'package:flutter/material.dart';
import 'package:toku/Models/pageitem.dart';
import 'package:toku/components/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numberslist = const [
    ItemModel(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    ItemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two'),
    ItemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three'),
    ItemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four'),
    ItemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five'),
    ItemModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six'),
    ItemModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven'),
    ItemModel(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    ItemModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'nine'),
    ItemModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff6a3832),
      ),
      body: ListView.builder(
        itemCount: numberslist.length,
        itemBuilder: (context, index) {
          return Item(
            pageitem: numberslist[index],
            color: Color(0xffef9235),
          );
        },
      ),
    );
  }
  //manual loop for list item we replace it by using listview.bulider
  // List<Widget> getlist(List<Number> numberslist) {
  //   List<Widget> itemslist = [];
  //   for (var i = 0; i < numberslist.length; i++) {
  //     itemslist.add(item(number: numberslist[i]));
  //   }
  //   return itemslist;
  // }
}
