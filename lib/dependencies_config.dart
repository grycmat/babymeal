import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependencies_config.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<GetIt> configureDependencies() => getIt.init();
