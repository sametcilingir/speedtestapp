// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/view_model/home_view_model.dart' as _i3;
import '../../features/init/view_model/init_view_model.dart' as _i4;
import '../services/localization/localization_service.dart' as _i5;
import '../services/route/route_service.dart' as _i7;
import '../services/theme/theme_service.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HomeViewModel>(() => _i3.HomeViewModel());
  gh.lazySingleton<_i4.InitViewModel>(() => _i4.InitViewModel());
  gh.factoryParam<_i5.LocalizationService, _i6.BuildContext, dynamic>(
      (_context, _) => _i5.LocalizationService(_context));
  gh.factoryParam<_i7.RouteService, _i6.BuildContext, dynamic>(
      (_context, _) => _i7.RouteService(_context));
  gh.singleton<_i8.ThemeService>(_i8.ThemeService());
  return get;
}
