import 'package:flutter/material.dart';
import 'package:flutter_moor_orm/database/note_table.dart';

class AddScreen extends StatefulWidget {
  final NoteDatabase noteDatabase;

 AddScreen( this.noteDatabase);
  @override
  _AddScreenState createState() => _AddScreenState(this.noteDatabase);
}

class _AddScreenState extends State<AddScreen> {
 final NoteDatabase _noteDatabase;
 TextEditingController _title = TextEditingController();
 TextEditingController _message = TextEditingController();
 _AddScreenState(this._noteDatabase);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Screen'),),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          TextField(
            controller: _title,
            decoration: InputDecoration(
              hintText: 'Title'
            ),
          ),
          TextField(
            controller: _message,
            decoration: InputDecoration(
              hintText: 'Message'
            ),
          ),
          RaisedButton(onPressed: () async{
             Note note = Note(title: _title.text,message: _message.text);
              await _noteDatabase.insertNote(note);
              Navigator.pop(context);
          },
          child : Text('Add Note'))
        ],
      ),
      
    );
  }
  @override
  void dispose() {
    _title.clear();
    super.dispose();
  }
}