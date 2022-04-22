import 'package:flutter/material.dart';
class ChildTextField extends StatelessWidget {
  final IconData? icon;
  final String hintText;
  final TextEditingController? controller;
  const ChildTextField({
    this.icon,
    required this.hintText,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.blue,
              ),
              hintText: hintText,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
