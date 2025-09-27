import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_state.dart';

import 'package:notes_app/views/widgets/note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNotesCubit, NotesState>(
        listener: (context, state) {
          if (state is NotesFaluire) {
            print('failed ${state.errMessage}');
          }
          if (state is NotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is NotesLoading ? true : false,
            child: AddNoteForm(),
          );
        },
      ),
    );
  }
}
