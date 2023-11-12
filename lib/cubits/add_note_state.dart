abstract class AddNoteState {}

class IntialNoteState extends AddNoteState {}

class LoadingNoteState extends AddNoteState {}

class SuccessNoteState extends AddNoteState {}

class FailureNoteState extends AddNoteState {
 final String erroMsg;

  FailureNoteState({required this.erroMsg});
}
