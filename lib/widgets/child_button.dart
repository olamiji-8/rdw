import 'package:flutter/material.dart';
class ChildButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const ChildButton({
    required this.title,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child : MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.blue,
        onPressed: onTap,
        child:  Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

