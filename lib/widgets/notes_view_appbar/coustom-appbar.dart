import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/notes_view_appbar/costom-iconsearch.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar({super.key, required this.icon, required this.onPressed});
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CoustomIconsSearch(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
