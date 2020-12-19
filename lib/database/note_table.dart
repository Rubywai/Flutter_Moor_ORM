
import 'package:moor_flutter/moor_flutter.dart';
part 'note_table.g.dart';
@DataClassName('Note')
class NoteTable extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title  => text()();
  TextColumn get message => text()();
}
@UseMoor(tables: [NoteTable])
class NoteDatabase extends _$NoteDatabase{
  NoteDatabase() : super(FlutterQueryExecutor(path: 'note.db',));

  @override
  int get schemaVersion => 1;
   
  Stream<List<Note>> getNote() => select(noteTable).watch();

  Future<void> insertNote(Note note) => into(noteTable).insert(note);

  Future<void> updateNote(Note note) => update(noteTable).replace(note);

  Future<void> deleteNote(Note note) => delete(noteTable).delete(note);
  

}