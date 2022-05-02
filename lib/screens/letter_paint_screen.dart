import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_painter/image_painter.dart';
import 'package:rdw/utils/assets.dart';
import 'package:rdw/widgets/child_button.dart';

class VideoDescScreen extends StatefulWidget {
  const VideoDescScreen({Key? key}) : super(key: key);

  @override
  _VideoDescScreenState createState() => _VideoDescScreenState();
}

class _VideoDescScreenState extends State<VideoDescScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: height*0.3,
              width: width,
            ),
            Container(
              width: width,
              height: height * 0.4,
              child: ChildPaint(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChildButton(title: 'Previous', onTap: (){},),
                ChildButton(title: 'Next', onTap: (){},),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawImage(Ass, offset, paint)
    Paint paint = Paint();
    
    Path path = Path();
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class ChildPaint extends StatefulWidget {
  const ChildPaint({Key? key}) : super(key: key);

  @override
  _ChildPaintState createState() => _ChildPaintState();
}

class _ChildPaintState extends State<ChildPaint> {
  final _imageKey = GlobalKey<ImagePainterState>();
  @override
  Widget build(BuildContext context) {
    return ImagePainter.asset(
        Assets.capA,
        key: _imageKey,
        initialStrokeWidth: 10,
      initialColor: Colors.green,
      initialPaintMode: PaintMode.line,
      scalable: true,
    );
  }
}
