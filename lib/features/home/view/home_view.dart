import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/locators/locators.dart';
import '../../../core/theme/theme_service.dart';
import '../../init/view_model/init_view_model.dart';
import '../view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = locator<HomeViewModel>();
    final initViewModel = locator<InitViewModel>();
    final themeService = locator<ThemeService>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (_) {
              return Text(
                'HomeView',
                style: themeService.textStyle.displayLarge,
              );
            }),
            ElevatedButton(
                onPressed: () {
                  initViewModel.changeTheme();
                },
                child: const Text('Change Theme')),
          ],
        ),
      ),
    );
  }
}
