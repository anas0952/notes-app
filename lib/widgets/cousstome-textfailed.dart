import 'package:flutter/material.dart';
import 'package:notes_app_view/constants.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.initialValue,
      this.onChanged});
  final String hint;
  final void Function(String?)? onSaved;
  final int maxLines;
  final String? initialValue;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: onChanged,
        initialValue: initialValue,
        validator: (input) {
          if (input?.isEmpty ?? true) {
            return 'The TextForm is required';
          }
          return null;
        },
        onSaved: onSaved,
        cursorColor: kprimarycolor,
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hint,
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
