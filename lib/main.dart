import 'package:flutter/material.dart';
import 'package:flutter_moor_orm/add_screen.dart';
import 'package:flutter_moor_orm/database/note_table.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  NoteDatabase noteDatabase = NoteDatabase();
  @override
  Widget build(BuildContext context) {
    print('refresh');
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<List<Note>>(
        stream: noteDatabase.getNote(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<Note> notes = snapshot.data;
            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, position) {
                return Card(
                  child: ListTile(
                    leading: Text(notes[position].id.toString()),
                    title: Text(notes[position].title),
                    subtitle: Text(notes[position].message),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else
            return CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddScreen(noteDatabase)));
        },
      ),
    );
  }
}
