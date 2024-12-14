import 'package:flutter/material.dart';
import 'package:toku2/components/category_items.dart';
import 'package:toku2/screens/colors_page.dart';
import 'package:toku2/screens/family_page.dart';
import 'package:toku2/screens/numbers_page.dart';
import 'package:toku2/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category('Numbers', const Color(0xffEF9235), () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const NumbersPage();
            }));
          }),
          Category('Colors', const Color.fromARGB(255, 103, 13, 138), () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const ColorsPage();
            }));
          }),
          Category('Family Members', const Color(0xff5F8A3E), () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const FamilyPage();
            }));
          }),
          Category('Phrases', const Color(0xff51AFD2), () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const PhrasesPage();
            }));
          }),
        ],
      ),
    );
  }
}
