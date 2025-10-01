import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';

import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() {
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesbox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFaluire(e.toString()));
    }
  }
}
