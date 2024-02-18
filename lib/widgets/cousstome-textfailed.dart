import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Add Notes ',
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.white,
      ));
}
