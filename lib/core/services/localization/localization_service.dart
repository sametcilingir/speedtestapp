import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/locale_constant.dart';
import 'base/base_localization_service.dart';

@injectable
class LocalizationService implements BaseLocalizationService {
  LocalizationService(
    @factoryParam this._context,
  ) {
    _localization = EasyLocalization.of(_context);
  }

  final BuildContext _context;
  late final _localization;

  get supportedLocales => [LocaleConstant.EN, LocaleConstant.TR];
  get locale => _localization?.locale;
  get localizationDelegates => _localization?.delegates;

  @override
  void changeLang() {
    if (locale == LocaleConstant.EN) {
      _localization.setLocale(LocaleConstant.TR);
    } else {
      _localization.setLocale(LocaleConstant.EN);
    }
  }
}
