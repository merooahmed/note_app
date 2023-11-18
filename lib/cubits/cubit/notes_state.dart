part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class Notessuccess extends NotesState {
  final List<NoteModel> notesList;

  Notessuccess(this.notesList);
}

final class NotesFailure extends NotesState {
  final String errorMsg;

  NotesFailure(this.errorMsg);
}
