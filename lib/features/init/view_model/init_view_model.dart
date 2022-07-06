import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'init_view_model.g.dart';

@lazySingleton
class InitViewModel = InitViewModelBase with _$InitViewModel;

abstract class InitViewModelBase with Store {
  @observable
  Brightness brightness = SchedulerBinding.instance.window.platformBrightness;

  @action
  void changeTheme() {
    brightness =
        brightness == Brightness.light ? Brightness.dark : Brightness.light;
  }

  @disposeMethod
  void dispose() {}
}
