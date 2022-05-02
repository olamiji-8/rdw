import 'package:flutter/material.dart';
class LetterCard extends StatelessWidget {
  final String letter;
  final Function()? onTap;
  const LetterCard({
    required this.letter,
    this.onTap,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
            height: 100,
            width: 150,
            child: Card(
              child: Center(child: Text(letter, style: TextStyle(fontSize: 50),textAlign: TextAlign.center)),
            )),
      ),
    );
  }
}
