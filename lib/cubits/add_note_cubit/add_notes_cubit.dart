

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_state.dart';

class AddNotesCubit extends Cubit<NotesState>{
  AddNotesCubit():super(NotesInitial());


}