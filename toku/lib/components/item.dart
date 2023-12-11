import 'package:flutter/material.dart';
import 'package:toku/Models/item_info.dart';
import 'package:toku/Models/pageitem.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.pageitem, required this.color})
      : super(key: key);
  final ItemModel pageitem;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff6dc),
            child: Image.asset(pageitem.image!),
          ),
          Expanded(child: ItemInfo(item: pageitem)),
        ],
      ),
    );
  }
}
