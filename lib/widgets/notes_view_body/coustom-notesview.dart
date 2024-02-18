import 'package:awesome_icons/awesome_icons.dart';

import 'package:flutter/material.dart';
import 'package:notes_app_view/view/notes-edit.dart';

class CoustomNotesView extends StatelessWidget {
  const CoustomNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const NotesEditApp();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Build Your Carer With Tharwat Samy',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Mat 20-2022',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
