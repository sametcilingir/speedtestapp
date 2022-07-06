// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
  late final _$downloadSpeedAtom =
      Atom(name: 'HomeViewModelBase.downloadSpeed', context: context);

  @override
  String get downloadSpeed {
    _$downloadSpeedAtom.reportRead();
    return super.downloadSpeed;
  }

  @override
  set downloadSpeed(String value) {
    _$downloadSpeedAtom.reportWrite(value, super.downloadSpeed, () {
      super.downloadSpeed = value;
    });
  }

  late final _$uploadSpeedAtom =
      Atom(name: 'HomeViewModelBase.uploadSpeed', context: context);

  @override
  String get uploadSpeed {
    _$uploadSpeedAtom.reportRead();
    return super.uploadSpeed;
  }

  @override
  set uploadSpeed(String value) {
    _$uploadSpeedAtom.reportWrite(value, super.uploadSpeed, () {
      super.uploadSpeed = value;
    });
  }

  late final _$pingAtom =
      Atom(name: 'HomeViewModelBase.ping', context: context);

  @override
  String get ping {
    _$pingAtom.reportRead();
    return super.ping;
  }

  @override
  set ping(String value) {
    _$pingAtom.reportWrite(value, super.ping, () {
      super.ping = value;
    });
  }

  late final _$responseTimeAtom =
      Atom(name: 'HomeViewModelBase.responseTime', context: context);

  @override
  String get responseTime {
    _$responseTimeAtom.reportRead();
    return super.responseTime;
  }

  @override
  set responseTime(String value) {
    _$responseTimeAtom.reportWrite(value, super.responseTime, () {
      super.responseTime = value;
    });
  }

  late final _$downloadChartItemListAtom =
      Atom(name: 'HomeViewModelBase.downloadChartItemList', context: context);

  @override
  ObservableList<FlSpot> get downloadChartItemList {
    _$downloadChartItemListAtom.reportRead();
    return super.downloadChartItemList;
  }

  @override
  set downloadChartItemList(ObservableList<FlSpot> value) {
    _$downloadChartItemListAtom.reportWrite(value, super.downloadChartItemList,
        () {
      super.downloadChartItemList = value;
    });
  }

  late final _$uploadChartItemListAtom =
      Atom(name: 'HomeViewModelBase.uploadChartItemList', context: context);

  @override
  ObservableList<FlSpot> get uploadChartItemList {
    _$uploadChartItemListAtom.reportRead();
    return super.uploadChartItemList;
  }

  @override
  set uploadChartItemList(ObservableList<FlSpot> value) {
    _$uploadChartItemListAtom.reportWrite(value, super.uploadChartItemList, () {
      super.uploadChartItemList = value;
    });
  }

  late final _$HomeViewModelBaseActionController =
      ActionController(name: 'HomeViewModelBase', context: context);

  @override
  void testSpeed() {
    final _$actionInfo = _$HomeViewModelBaseActionController.startAction(
        name: 'HomeViewModelBase.testSpeed');
    try {
      return super.testSpeed();
    } finally {
      _$HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
downloadSpeed: ${downloadSpeed},
uploadSpeed: ${uploadSpeed},
ping: ${ping},
responseTime: ${responseTime},
downloadChartItemList: ${downloadChartItemList},
uploadChartItemList: ${uploadChartItemList}
    ''';
  }
}
