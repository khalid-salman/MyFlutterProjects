import 'package:flutter/material.dart';
import 'package:toku/Models/pageitem.dart';
import 'package:toku/components/item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemModel> numberslist = const [
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    ItemModel(
        sound: 'sounds/family_members/olderbother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'older brother'),
    ItemModel(
        sound: 'sounds/family_members/oldersister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    ItemModel(
        sound: 'sounds/family_members/youngerbrohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    ItemModel(
        sound: 'sounds/family_members/youngersister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
    ItemModel(
        sound: 'sounds/family_members/grandfather.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu',
        enName: 'grandfather'),
    ItemModel(
        sound: 'sounds/family_members/grandmother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grandmother'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff6a3832),
      ),
      body: ListView.builder(
        itemCount: numberslist.length,
        itemBuilder: (context, index) {
          return Item(
            pageitem: numberslist[index],
            color: const Color(0xff528032),
          );
        },
      ),
    );
  }
}
