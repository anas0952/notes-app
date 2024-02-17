import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/coustom-appbar.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        CoustomAppBar(),
      ]),
    ));
  }
}
