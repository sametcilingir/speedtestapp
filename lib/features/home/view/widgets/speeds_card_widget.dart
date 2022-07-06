part of home_view;

class SpeedsCardWidget extends StatelessWidget {
  const SpeedsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = locator<HomeViewModel>();
    final themeService = locator<ThemeService>();
    return Observer(builder: (_) {
      return Container(
        decoration: BoxDecoration(
          color: themeService.theme.primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            //üst yazılar
            Padding(
              padding: EdgeInsets.only(left: 16.sm, top: 24.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //tekli yazılar
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //alt alta yazılar
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.download_outlined,
                            color: Colors.lightGreenAccent,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'DOWNLOAD',
                            style: TextStyle(
                              color: themeService.theme.hintColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ).tr(),
                        ],
                      ),
                      Text(
                        homeViewModel.downloadSpeed,
                        style: const TextStyle(
                          fontSize: 57,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //alt alta yazılar
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.upload_outlined,
                            color: Colors.orangeAccent,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'UPLOAD',
                            style: TextStyle(
                              color: themeService.theme.hintColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ).tr(),
                        ],
                      ),
                      Text(
                        homeViewModel.uploadSpeed,
                        style: const TextStyle(
                          fontSize: 57,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            //grafik gelecek
            SizedBox(
              height: 150.h,
              child: Padding(
                padding:
                    EdgeInsets.only(right: 20.sm, left: 20.sm, bottom: 5.sm),
                child: Stack(
                  children: [
                    LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                        titlesData: FlTitlesData(
                          show: false,
                        ),
                        lineTouchData: LineTouchData(
                          enabled: false,
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: homeViewModel.downloadChartItemList,
                            isCurved: true,
                            color: Colors.lightGreenAccent,
                            barWidth: 5,
                            isStrokeCapRound: true,
                            dotData: FlDotData(
                              show: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                        titlesData: FlTitlesData(
                          show: false,
                        ),
                        lineTouchData: LineTouchData(
                          enabled: false,
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: homeViewModel.uploadChartItemList,
                            isCurved: true,
                            color: Colors.orangeAccent,
                            barWidth: 5,
                            isStrokeCapRound: true,
                            dotData: FlDotData(
                              show: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
