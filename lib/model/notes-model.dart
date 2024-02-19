import 'package:hive/hive.dart';
part 'notes-model.g.dart';

@HiveType(typeId: 1)
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  NotesModel({
    required this.title,
    required this.content,
    required this.date,
  });
}
