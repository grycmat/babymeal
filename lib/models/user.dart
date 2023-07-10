import 'package:babymeal/models/baby.dart';
import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  String name;
  final babies = IsarLinks<Baby>();

  User({this.name = 'Proud parent 😎'});
}
