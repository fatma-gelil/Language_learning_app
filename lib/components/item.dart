import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku2/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(number.image)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              //playsound
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
