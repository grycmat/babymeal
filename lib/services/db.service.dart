import 'package:babymeal/models/feeding_log/feeding.dart';
import 'package:babymeal/models/feeding_log/feeding_log_item.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@Injectable()
class DbService {
  DbService({required this.isar});
  Isar isar;

  Future<Feeding> addFeedLog(Feeding log) async {
    print('save');
    print(log);
    return await isar.writeTxn<Feeding>(() async {
      await isar.feedings.put(log);

      return log;
    });
  }

  // Future<List<FeedingLogItem>> addFeedLogItems(List<FeedingLogItem> items) async {
  //   return await isar.writeTxn<List<FeedingItems>>(() async {
  //     await isar.feedingLogItems.putAll(items);

  //     return items;
  //   });
  // }

  Future<List<Feeding>> get feedings async =>
      isar.collection<Feeding>().where().findAll();
}
