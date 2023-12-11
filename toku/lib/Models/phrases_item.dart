import 'package:flutter/material.dart';

import 'item_info.dart';
import 'pageitem.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.pageitem, required this.color});
  final ItemModel pageitem;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: pageitem),
    );
  }
}
