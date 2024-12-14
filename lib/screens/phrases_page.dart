import 'package:flutter/material.dart';
import 'package:toku2/components/phrase_item.dart';
import 'package:toku2/models/item_model.dart';


class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrasesList = const [
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'rai masu ka ?',
        enName: 'Are you coming?'),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: ' kaku koto wa wasure nai de kudasai',
        enName: 'Don,t forget to supscribe'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'choushi wa dou desu ka ?',
        enName: 'How are you feeling ?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'anime ga daisuki',
        enName: 'I love anime'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'programming ga daisuki',
        enName: 'I love programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'programming wa kantan',
        enName: 'Programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'anata no namae wa nani desu ka ?',
        enName: 'What is your name ?'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'doko ni ikiba masu ka ?',
        enName: 'Where are you going ?'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'hai 、 watashi wa rai masu',
        enName: 'Yes i,m comming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff50ADC7),
            item: phrasesList[index],
          );
        },
      ),
    );
  }
}
