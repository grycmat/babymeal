import 'package:babymeal/models/baby.dart';
import 'package:babymeal/models/feeding_log/feeding.dart';
import 'package:babymeal/models/feeding_log/feeding_log_item.dart';
import 'package:babymeal/models/user.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@Injectable()
class DbService {
  DbService({required this.isar});
  Isar isar;

  Future<User> saveUser(User user) async {
    return await isar.writeTxn<User>(() async {
      await isar.users.put(user);

      return user;
    });
  }

  saveBaby(Baby baby) async {
    var user = await isar.users.where().findFirst();

    var nextBaby = await isar.writeTxn<Baby>(() async {
      var id = await isar.babys.put(baby);
      baby.id = id;
      user!.babies.add(baby);
      await user.babies.save();

      return baby;
    });

    user!.babies.add(nextBaby);
    // isar.users.save(user);
  }

  Future<Feeding> addFeedLog(Feeding log, List<FeedingLogItem> items) async {
    return await isar.writeTxn<Feeding>(() async {
      for (FeedingLogItem item in items) {
        var id = await isar.feedingLogItems.put(item);
        item.id = id;
        log.items.add(item);
      }
      await isar.feedings.put(log);
      await log.items.save();

      return log;
    });
  }

  Future<List<Feeding>> get feedings async =>
      isar.collection<Feeding>().where().findAll();

  Stream<List<Feeding>> feedingsListener() => isar.feedings.where().watch();

  Future<int> get feedingsCount async =>
      isar.collection<Feeding>().where().count();
}
