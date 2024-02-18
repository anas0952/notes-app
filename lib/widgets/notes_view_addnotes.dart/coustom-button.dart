import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {
  const CoustomButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
