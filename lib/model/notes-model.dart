import 'package:hive/hive.dart';
part 'notes-model.g.dart';

@HiveType(typeId: 1)
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String contentitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NotesModel(
      {required this.title,
      required this.contentitle,
      required this.date,
      required this.color});
}