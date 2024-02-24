import 'package:flutter/material.dart';

class ItemsColors extends StatelessWidget {
  const ItemsColors({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListItemsColors();
  }
}

class ListItemsColors extends StatelessWidget {
  const ListItemsColors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 38,
              )),
    );
  }
}
