// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_table.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Note extends DataClass implements Insertable<Note> {
  final int id;
  final String title;
  final String message;
  final DateTime getDate;
  Note(
      {@required this.id,
      @required this.title,
      @required this.message,
      this.getDate});
  factory Note.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Note(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      message:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}message']),
      getDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}get_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || message != null) {
      map['message'] = Variable<String>(message);
    }
    if (!nullToAbsent || getDate != null) {
      map['get_date'] = Variable<DateTime>(getDate);
    }
    return map;
  }

  NoteTableCompanion toCompanion(bool nullToAbsent) {
    return NoteTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      message: message == null && nullToAbsent
          ? const Value.absent()
          : Value(message),
      getDate: getDate == null && nullToAbsent
          ? const Value.absent()
          : Value(getDate),
    );
  }

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      message: serializer.fromJson<String>(json['message']),
      getDate: serializer.fromJson<DateTime>(json['getDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'message': serializer.toJson<String>(message),
      'getDate': serializer.toJson<DateTime>(getDate),
    };
  }

  Note copyWith({int id, String title, String message, DateTime getDate}) =>
      Note(
        id: id ?? this.id,
        title: title ?? this.title,
        message: message ?? this.message,
        getDate: getDate ?? this.getDate,
      );
  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('message: $message, ')
          ..write('getDate: $getDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(title.hashCode, $mrjc(message.hashCode, getDate.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.title == this.title &&
          other.message == this.message &&
          other.getDate == this.getDate);
}

class NoteTableCompanion extends UpdateCompanion<Note> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> message;
  final Value<DateTime> getDate;
  const NoteTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.message = const Value.absent(),
    this.getDate = const Value.absent(),
  });
  NoteTableCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String message,
    this.getDate = const Value.absent(),
  })  : title = Value(title),
        message = Value(message);
  static Insertable<Note> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> message,
    Expression<DateTime> getDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (message != null) 'message': message,
      if (getDate != null) 'get_date': getDate,
    });
  }

  NoteTableCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> message,
      Value<DateTime> getDate}) {
    return NoteTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      getDate: getDate ?? this.getDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (message.present) {
      map['message'] = Variable<String>(message.value);
    }
    if (getDate.present) {
      map['get_date'] = Variable<DateTime>(getDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('message: $message, ')
          ..write('getDate: $getDate')
          ..write(')'))
        .toString();
  }
}

class $NoteTableTable extends NoteTable with TableInfo<$NoteTableTable, Note> {
  final GeneratedDatabase _db;
  final String _alias;
  $NoteTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _messageMeta = const VerificationMeta('message');
  GeneratedTextColumn _message;
  @override
  GeneratedTextColumn get message => _message ??= _constructMessage();
  GeneratedTextColumn _constructMessage() {
    return GeneratedTextColumn(
      'message',
      $tableName,
      false,
    );
  }

  final VerificationMeta _getDateMeta = const VerificationMeta('getDate');
  GeneratedDateTimeColumn _getDate;
  @override
  GeneratedDateTimeColumn get getDate => _getDate ??= _constructGetDate();
  GeneratedDateTimeColumn _constructGetDate() {
    return GeneratedDateTimeColumn(
      'get_date',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, message, getDate];
  @override
  $NoteTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'note_table';
  @override
  final String actualTableName = 'note_table';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('message')) {
      context.handle(_messageMeta,
          message.isAcceptableOrUnknown(data['message'], _messageMeta));
    } else if (isInserting) {
      context.missing(_messageMeta);
    }
    if (data.containsKey('get_date')) {
      context.handle(_getDateMeta,
          getDate.isAcceptableOrUnknown(data['get_date'], _getDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Note.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NoteTableTable createAlias(String alias) {
    return $NoteTableTable(_db, alias);
  }
}

abstract class _$NoteDatabase extends GeneratedDatabase {
  _$NoteDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $NoteTableTable _noteTable;
  $NoteTableTable get noteTable => _noteTable ??= $NoteTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [noteTable];
}
