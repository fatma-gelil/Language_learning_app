import 'package:flutter/material.dart';
import 'package:toku2/components/item.dart';
import 'package:toku2/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two'),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three'),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four'),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five'),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six'),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven'),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'ku',
        enName: 'nine'),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(number: numbers[index], color: const Color(0xffEF9235),);
          }),
    );
  }
}
