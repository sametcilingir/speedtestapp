part of home_view;

class SpeedsDetailsCardWidget extends StatelessWidget {
  const SpeedsDetailsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeService = locator<ThemeService>();
    final homeViewModel = locator<HomeViewModel>();

    return Observer(builder: (_) {
      return Container(
        padding: EdgeInsets.all(8.sm),
        decoration: BoxDecoration(
          color: themeService.theme.primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              title: const Text("PING"),
              trailing: Text(homeViewModel.ping),
            ),
            const Divider(),
            ListTile(
              title: const Text("JITTER"),
              trailing: Text(homeViewModel.responseTime),
            ),
          ],
        ),
      );
    });
  }
}
