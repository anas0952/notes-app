part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NotesModel> data;

  NotesSuccess({required this.data});
}

final class NotesFaliure extends NotesState {
  final String msgerre;

  NotesFaliure({required this.msgerre});
}
