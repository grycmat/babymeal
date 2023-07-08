import 'package:babymeal/models/baby.dart';
import 'package:babymeal/models/feeding_log/feeding.dart';
import 'package:babymeal/models/feeding_log/feeding_log_item.dart';
import 'package:babymeal/models/user.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class RegisterModule {
  @preResolve
  @injectable
  Future<Isar> get isarDb async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [UserSchema, BabySchema, FeedingSchema, FeedingLogItemSchema],
      directory: dir.path,
    );

    return isar;
  }
}
