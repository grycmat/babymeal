import 'package:isar/isar.dart';

part 'baby.g.dart';

@collection
class Baby {
  Id id = Isar.autoIncrement;

  String name;
  DateTime birthDate;
  String birthWeight;
  String currentWeight;
  String birthHeight;
  String currentHeight;

  Baby(
      {required this.name,
      required this.birthDate,
      required this.birthWeight,
      required this.currentWeight,
      required this.birthHeight,
      required this.currentHeight});
}
