import 'package:babymeal/models/baby.dart';
import 'package:babymeal/models/feeding_log/feeding_log_item.dart';
import 'package:isar/isar.dart';

part 'feeding.g.dart';

enum FeedingType {
  brest,
  bottle,
  solidFood,
}

@collection
class Feeding {
  Id id = Isar.autoIncrement;
  final baby = IsarLink<Baby>();
  // String babyId;
  String date;
  String totalTime;
  @enumerated
  FeedingType type;
  String? note;
  final items = IsarLinks<FeedingLogItem>();

  Feeding({
    // this.babyId,
    required this.date,
    required this.totalTime,
    required this.type,
    this.note,
  });

  // FeedingModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   // babyId = json['babyId'];
  //   this.date = json['date'];
  //   totalTime = json['totalTime'];
  //   type = json['type'];
  //   note = json['note'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    // data['babyId'] = this.babyId;
    data['date'] = date;
    data['totalTime'] = totalTime;
    data['type'] = type;
    data['note'] = note;

    return data;
  }
}
