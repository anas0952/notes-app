import 'package:flutter/material.dart';

class ItemsColors extends StatelessWidget {
  const ItemsColors(
      {super.key, required this.isChecked, required this.listColors});
  final bool isChecked;
  final Color listColors;
  @override
  Widget build(BuildContext context) {
    return isChecked
        ? Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 39,
              ),
              CircleAvatar(
                radius: 35,
                backgroundColor: listColors,
              ),
            ],
          )
        : CircleAvatar(
            backgroundColor: listColors,
            radius: 39,
          );
  }
}

class ListItemsColors extends StatefulWidget {
  const ListItemsColors({super.key});

  @override
  State<ListItemsColors> createState() => _ListItemsColorsState();
}

class _ListItemsColorsState extends State<ListItemsColors> {
  List<Color> listcolors = const [
    Color(0xff820933),
    Color(0xffD84797),
    Color(0xffD2FDFF),
    Color(0xff3ABEFF),
    Color(0xff265389),
  ];
  bool isChecked = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38 * 2,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  height: 8.0,
                  width: 10.0,
                ),
            scrollDirection: Axis.horizontal,
            itemCount: listcolors.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ItemsColors(
                  isChecked: currentIndex == index,
                  listColors: listcolors[index],
                ),
              );
            }));
  }
}
