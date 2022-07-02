import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locators.config.dart';

final locator = GetIt.instance;  
  
@InjectableInit()
void configureLocators() => $initGetIt(locator); 