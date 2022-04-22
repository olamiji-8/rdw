import 'package:flutter/material.dart';
import 'package:rdw/screens/screen_three.dart';
import '../core/lists/level_card_list.dart';
import '../widgets/level_card.dart';
class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('SELECT A LEVEL'),
      ),
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        shrinkWrap: true,
        children: List.generate(levelCardData.length, (index) => LevelCard(
          type: levelCardData[index].type,
          letter: levelCardData[index].letter,
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenThree())),
        )),

      ),
    );
  }
}




