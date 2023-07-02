import 'package:isar/isar.dart';

part 'user.model.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  String name;

  User({required this.name});
}
