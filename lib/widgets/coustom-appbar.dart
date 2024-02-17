import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/costom-iconsearch.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CoustomIconsSearch(),
      ],
    );
  }
}
