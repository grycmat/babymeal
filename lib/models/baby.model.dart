import 'package:isar/isar.dart';

part 'baby.model.g.dart';

@collection
class Baby {
  Id id = Isar.autoIncrement;

  String name;

  Baby({required this.name});
}
