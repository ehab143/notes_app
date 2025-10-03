import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color = Color(0xffE8E1EF);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      await notesbox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFaluire(e.toString()));
    }
  }
}
