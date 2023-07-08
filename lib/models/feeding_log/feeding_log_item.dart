import 'package:isar/isar.dart';

part 'feeding_log_item.g.dart';

@collection
class FeedingLogItem {
  Id id = Isar.autoIncrement;

  @enumerated
  BreastSide breastSide;
  String duration;

  FeedingLogItem({required this.breastSide, required this.duration});
}

enum BreastSide { left, right, none }
