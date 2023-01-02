import 'package:hive/hive.dart';

part 'hive_fact_model.g.dart';

@HiveType(typeId: 0)
class Fact {
  @HiveField(0)
  String fact;

  @HiveField(1)
  String date;

  Fact(this.fact, this.date);

  @override
  String toString() => 'Fact: $fact, date: $date';
}
