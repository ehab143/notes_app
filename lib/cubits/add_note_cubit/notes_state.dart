abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSuccess extends AddNotesState {}

class AddNotesFaluire extends AddNotesState {
  final String errMessage;

  AddNotesFaluire(this.errMessage);
}
