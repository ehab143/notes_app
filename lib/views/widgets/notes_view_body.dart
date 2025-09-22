import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_AppBar.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';
import 'package:notes_app/views/widgets/custon_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [SizedBox(height: 50), CustomAppBar(), NoteItem()],
      ),
    );
  }
}
