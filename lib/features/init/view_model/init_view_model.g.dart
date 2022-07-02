// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InitViewModel on InitViewModelBase, Store {
  late final _$brightnessAtom =
      Atom(name: 'InitViewModelBase.brightness', context: context);

  @override
  Brightness get brightness {
    _$brightnessAtom.reportRead();
    return super.brightness;
  }

  @override
  set brightness(Brightness value) {
    _$brightnessAtom.reportWrite(value, super.brightness, () {
      super.brightness = value;
    });
  }

  late final _$InitViewModelBaseActionController =
      ActionController(name: 'InitViewModelBase', context: context);

  @override
  void changeTheme() {
    final _$actionInfo = _$InitViewModelBaseActionController.startAction(
        name: 'InitViewModelBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$InitViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
brightness: ${brightness}
    ''';
  }
}
