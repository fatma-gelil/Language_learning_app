import 'package:flutter/material.dart';
import 'package:toku2/components/item.dart';
import 'package:toku2/models/number.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Number> family = const [
    Number(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi	',
        enName: 'father'), 
    Number(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'mother'),
    Number(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'son'),
    Number(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter'),
    Number(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: '	sofu',
        enName: 'grand father'),
    Number(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'grand mother'),
    Number(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'older brother'),
    Number(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'older sister'),
    Number(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'younger brother'),
    Number(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imouto	',
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, index) {
            return Item(number: family[index], color: const Color(0xff5F8A3E),);
          }),
    );
  }
}
