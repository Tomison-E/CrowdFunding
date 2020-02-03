import 'package:crowdFunding/core/services/api.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
setupLocator() {
  locator.registerLazySingleton(() => ApiService());
}
