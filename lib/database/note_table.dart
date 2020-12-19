
import 'package:moor_flutter/moor_flutter.dart';
part 'note_table.g.dart';
@DataClassName('Note')
class NoteTable extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title  => text()();
  TextColumn get message => text()();
  DateTimeColumn get getDate => dateTime().nullable()();
}
@UseMoor(tables: [NoteTable])
class NoteDatabase extends _$NoteDatabase{
  NoteDatabase() : super(FlutterQueryExecutor(path: 'note.db',));

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m){
      return m.createAll();
    },
    onUpgrade: (Migrator m,int from,int to) async{
      if(from < 2){
        await m.addColumn(noteTable, noteTable.getDate) ;
      }
    }

  );

  @override
  int get schemaVersion => 2;
   
  Stream<List<Note>> getNote() => select(noteTable).watch();

  Future<void> insertNote(Note note) => into(noteTable).insert(note);

  Future<void> updateNote(Note note) => update(noteTable).replace(note);

  Future<void> deleteNote(Note note) => delete(noteTable).delete(note);
  

}