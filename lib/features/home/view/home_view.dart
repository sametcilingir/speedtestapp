library home_view;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/locators/locators.dart';
import '../../../core/services/localization/localization_service.dart';
import '../../../core/services/theme/theme_service.dart';
import '../../init/view_model/init_view_model.dart';
import '../view_model/home_view_model.dart';

part 'widgets/app_bar_widget.dart';
part 'widgets/speeds_card_widget.dart';
part 'widgets/speeds_details_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = locator<HomeViewModel>();
    final themeService = locator<ThemeService>();
    return Scaffold(
        appBar: const AppBarWidget(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.sm),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SpeedsCardWidget(),
                SizedBox(
                  height: 18.h,
                ),
                const SpeedsDetailsCardWidget(),
                SizedBox(
                  height: 18.h,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(ScreenUtil().screenWidth, 50.h),
                    ),
                  ),
                  onPressed: () async {
                    var connectivityResult =
                        await (Connectivity().checkConnectivity());
                    if (connectivityResult == ConnectivityResult.none) {
                      ScaffoldMessengerState().showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.redAccent,
                          content: const Text(
                            "Connection Problem",
                          ).tr(),
                        ),
                      );
                    } else {
                       homeViewModel.testSpeed();
                    }
                  },
                  child:  const Text('Test Now').tr(),
                ),
              ],
            ),
          ),
        ));
  }
}
