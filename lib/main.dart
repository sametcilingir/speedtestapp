import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/constants/locale_constant.dart';
import 'core/constants/path_constant.dart';
import 'core/constants/string_constant.dart';
import 'core/locators/locators.dart';
import 'core/services/localization/localization_service.dart';
import 'core/services/route/route_service.dart';
import 'core/theme/theme_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //init localization
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];

  //setup locator
  configureLocators();

  //init local database
  await Hive.initFlutter();

  runApp(
    //localization
    EasyLocalization(
      supportedLocales: const [LocaleConstant.EN, LocaleConstant.TR],
      path: PathConstant.LANG,
      fallbackLocale: LocaleConstant.EN,
      useOnlyLangCode: true,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizationService = locator<LocalizationService>(param1: context);
    final themeService = locator<ThemeService>();
    final routeService = locator<RouteService>(param1: context);

    //screen adaptation
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        //material app
        return Observer(builder: (_) {
          return MaterialApp.router(
            title: StringConstant.APP_NAME,
            debugShowCheckedModeBanner: false,
            //theme
            theme: themeService.theme,
            //routes
            routeInformationParser:
                routeService.globalRoutes.routeInformationParser,
            routerDelegate: routeService.globalRoutes.routerDelegate,
            routeInformationProvider:
                routeService.globalRoutes.routeInformationProvider,
            //localization
            localizationsDelegates: localizationService.localizationDelegates,
            supportedLocales: localizationService.supportedLocales,
            locale: localizationService.locale,
          );
        });
      },
    );
  }
}
