import 'package:flutter/material.dart';
import 'package:my_new_project/views/widgets/custom_app_bar.dart';
import 'package:my_new_project/views/widgets/note_item.dart';
import 'package:my_new_project/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.search,
            titile: 'Note App',
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
