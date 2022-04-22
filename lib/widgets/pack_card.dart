import 'package:flutter/material.dart';
class PackCard extends StatelessWidget {
  final String letter;
  final String desc;
  final Function()? onTap;
  const PackCard(
      {required this.letter, required this.desc, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(letter, style: TextStyle(fontSize: 50),),
                Text(desc),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
