part of home_view;

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initViewModel = locator<InitViewModel>();
    final localizationService = locator<LocalizationService>(param1: context);

    return AppBar(
      title: const Text("Speed Test").tr(),
      centerTitle: true,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {
            localizationService.changeLang();
          },
          icon: const Icon(Icons.translate),
        ),
        IconButton(
          onPressed: () {
            initViewModel.changeTheme();
          },
          icon: Observer(builder: (_) {
            return Icon(initViewModel.brightness == Brightness.light
                ? Icons.brightness_2
                : Icons.brightness_7);
          }),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(1.w, 60);
}
