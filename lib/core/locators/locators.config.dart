// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart' as i6;
import 'package:get_it/get_it.dart' as i1;
import 'package:injectable/injectable.dart' as i2;

import '../../features/home/view_model/home_view_model.dart' as i3;
import '../../features/init/view_model/init_view_model.dart' as i4;
import '../services/localization/localization_service.dart' as i5;
import '../services/route/route_service.dart' as i7;
import '../services/theme/theme_service.dart'
    as i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
i1.GetIt $initGetIt(i1.GetIt get,
    {String? environment, i2.EnvironmentFilter? environmentFilter}) {
  final gh = i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<i3.HomeViewModel>(() => i3.HomeViewModel());
  gh.lazySingleton<i4.InitViewModel>(() => i4.InitViewModel());
  gh.factoryParam<i5.LocalizationService, i6.BuildContext, dynamic>(
      (context, _) => i5.LocalizationService(context));
  gh.factoryParam<i7.RouteService, i6.BuildContext, dynamic>(
      (context, _) => i7.RouteService(context));
  gh.singleton<i8.ThemeService>(i8.ThemeService());
  return get;
}
