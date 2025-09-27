import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNotesCubit extends Cubit<NotesState> {
  AddNotesCubit() : super(NotesInitial());

  addNote(NoteModel note) async {
    emit(NotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      await notesbox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFaluire(e.toString()));
    }
  }
}
