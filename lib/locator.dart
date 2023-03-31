
import 'package:get_it/get_it.dart';
import 'package:getit_implementation/domain/quote_controller.dart';
import 'package:getit_implementation/repository/quote_repo.dart';

/// TODO 2: Create a getIt locator
final locator = GetIt.instance;


/// TODO 3: Create a setup method and own service
void setupLocator() {
  locator.registerLazySingleton<QuoteRepo>(() => QuoteRepo());
  locator.registerLazySingleton<QuoteController>(() => QuoteController());
}