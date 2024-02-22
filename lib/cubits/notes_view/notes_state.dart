part of 'notes_cubit.dart';

abstract class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NotesModel> data;

  NotesSuccess({required this.data});
}

final class NotesFaliure extends NotesState {
  final String msgerre;

  NotesFaliure({required this.msgerre});
}
