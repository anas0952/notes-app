import 'package:flutter/cupertino.dart';
import 'package:notes_app_view/widgets/coustom-notesview.dart';

class ListViewNotes extends StatelessWidget {
  const ListViewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return const CoustomNotesView();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 10),
      ),
    );
  }
}