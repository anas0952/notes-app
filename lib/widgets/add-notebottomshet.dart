import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/cousstome-textfailed.dart';

class AddNoteBottomShet extends StatelessWidget {
  const AddNoteBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 400,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          //textFailed Create
          CoustomTextField(),
        ],
      ),
    );
  }
}
