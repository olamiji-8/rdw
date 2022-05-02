import 'package:flutter/material.dart';
import 'package:rdw/screens/letter_paint_screen.dart';
import '../core/lists/letter_card_lists.dart';
import '../widgets/letter_card.dart';
class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('SELECT A LETTER'),
        backgroundColor: Colors.transparent,
      ),
      body: GridView.builder(
          shrinkWrap: true,
          itemCount: letters.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ), itemBuilder: (context, index){
        return LetterCard(
          letter: letters[index].letter,
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoDescScreen())),);
      }),
    );
  }
}




