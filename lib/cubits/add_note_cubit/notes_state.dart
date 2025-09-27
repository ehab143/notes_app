abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFaluire extends NotesState {
  final String errMessage;

  NotesFaluire(this.errMessage);
}
