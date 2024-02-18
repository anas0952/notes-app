import 'package:flutter/material.dart';
import 'package:notes_app_view/constants.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: kprimarycolor,
        decoration: InputDecoration(
            hintText: 'Add Notes ',
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kprimarycolor)),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ));
}
