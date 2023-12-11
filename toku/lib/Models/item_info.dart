import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'pageitem.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            // play sound
            final player = AudioPlayer();
            player.play(AssetSource(item.sound));
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    );
  }
}
