import '../database.dart';

class LeagueTable extends SupabaseTable<LeagueRow> {
  @override
  String get tableName => 'league';

  @override
  LeagueRow createRow(Map<String, dynamic> data) => LeagueRow(data);
}

class LeagueRow extends SupabaseDataRow {
  LeagueRow(super.data);

  @override
  SupabaseTable get table => LeagueTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get leagueName => getField<String>('league_name');
  set leagueName(String? value) => setField<String>('league_name', value);

  String? get leagueImage => getField<String>('league_image');
  set leagueImage(String? value) => setField<String>('league_image', value);

  dynamic get clubs => getField<dynamic>('clubs');
  set clubs(dynamic value) => setField<dynamic>('clubs', value);
}
