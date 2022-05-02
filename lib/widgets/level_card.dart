import 'package:flutter/material.dart';
class LevelCard extends StatelessWidget {
  final String type;
  final String letter;
  // final String letterImg;
  final Function()? onTap;
  const LevelCard({
    required this.type,
    required this.letter,
    // required this.letterImg,
    this.onTap,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 200,
          width: 150,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(type, textAlign: TextAlign.center,),
                Text(letter),
                Text(letter, style: TextStyle(fontSize: 50),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


