import 'package:flutter/material.dart';
import 'package:toku/Models/pageitem.dart';
import 'package:audioplayers/audioplayers.dart';

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
            child: Image.asset(pageitem.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pageitem.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  pageitem.enName,
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
              player.play(AssetSource(pageitem.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
