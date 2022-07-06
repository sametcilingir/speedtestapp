import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_speedtest/flutter_speedtest.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:speedtestapp/core/constants/path_constant.dart';

part 'home_view_model.g.dart';

@lazySingleton
class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  @observable
  String downloadSpeed = "0";

  @observable
  String uploadSpeed = "0";

  @observable
  String ping = "0ms";

  @observable
  String responseTime = "0ms";

  @observable
  ObservableList<FlSpot> downloadChartItemList = <FlSpot>[
    const FlSpot(0, 0),
  ].asObservable();

  @observable
  ObservableList<FlSpot> uploadChartItemList = <FlSpot>[
    const FlSpot(0, 0),
  ].asObservable();

  @action
  void testSpeed() {
    final speedtest = FlutterSpeedtest();
    downloadChartItemList.clear();
    uploadChartItemList.clear();

    speedtest
        .downloadProgress(
          url: PathConstant.DOWNLOADSPEED,
          onProgress: (percent, transferRate) {
            downloadSpeed = transferRate.toStringAsFixed(2);
            downloadChartItemList
                .add(FlSpot(percent.toDouble(), transferRate.toDouble()));
          },
          onError: (errorMessage) {
            print(errorMessage);
          },
        )
        .then(
          (value) => speedtest
              .uploadProgress(
                url: PathConstant.UPLOADSPEED,
                onProgress: (percent, transferRate) {
                  uploadSpeed = transferRate.toStringAsFixed(2);
                  uploadChartItemList
                      .add(FlSpot(percent.toDouble(), transferRate.toDouble()));
                },
                onError: (errorMessage) {
                  print(errorMessage);
                },
              )
              .then(
                (value) => speedtest.getResponseTime(
                  url: PathConstant.RESPONDSPEED,
                  onProgress: (time, pingg) {
                    ping = '${pingg}ms';
                    responseTime = '${time}ms';
                  },
                ),
              ),
        );
  }

  @disposeMethod
  void dispose() {}
}
