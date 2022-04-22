import 'package:flutter/material.dart';
import 'package:rdw/screens/screen_too.dart';

import '../widgets/pack_card.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){},
          ),
          title: Text('SELECT A LEVEL'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PackCard(
                  letter: 'ABC',
                  desc: 'SIMPLE',
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenTwo()))),
              // PackCard(
              //     letter: 'ABC',
              //     desc: 'CURSIVE',
              //     onTap: () => Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => ScreenTwo()))),
            ],
          ),
        ));
  }
}

