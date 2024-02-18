import 'package:flutter/material.dart';

class CoustomIconsSearch extends StatelessWidget {
  const CoustomIconsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(18)),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    );
  }
}
