import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/route_constant.dart';
import '../../../core/locators/locators.dart';
import '../../../core/services/route/route_service.dart';
import '../../../core/services/theme/theme_service.dart';
import '../view_model/init_view_model.dart';

class InitView extends StatefulWidget {
  const InitView({Key? key}) : super(key: key);

  @override
  State<InitView> createState() => _InitViewState();
}

class _InitViewState extends State<InitView> {
  final initViewModel = locator<InitViewModel>();
  final themeService = locator<ThemeService>();
  late final routeService = locator<RouteService>(param1: context);

  Future<void> futureWait() async {
    await Future.delayed(const Duration(milliseconds: 500));
    routeService.go(route: RouteConstant.HOME);
    //flutter_onboarding_slider control
    /*if (a) {
      setState(() {
        Navigator.of(context).popAndPushNamed('/home');
      });
    } else {
      setState(() {
       // Navigator.of(context).popAndPushNamed('/auth');
      });
    }*/
  }

  @override
  void initState() {
    super.initState();
    futureWait();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: themeService.theme.primaryColor.withOpacity(0.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
              ),
              FlutterLogo(
                size: 200.sm,
              ),
              SizedBox(
                height: 100.h,
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
