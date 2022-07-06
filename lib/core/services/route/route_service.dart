import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../../features/home/view/home_view.dart';
import '../../../features/init/view/init_view.dart';
import 'base/base_route_service.dart';

@injectable
class RouteService implements BaseRouteService {
  RouteService(
    @factoryParam this._context,
  );

  final BuildContext _context;

  static const INIT = "/init";
  static const HOME = "/home";

  final globalRoutes = GoRouter(
    initialLocation: INIT,
    routes: [
      GoRoute(
        path: INIT,
        builder: (context, state) => const InitView(),
      ),
      GoRoute(
        path: HOME,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );

  @override
  void push({required String route}) {
    GoRouter.of(_context).push(route);
  }

  @override
  void pop() {
    GoRouter.of(_context).pop();
  }

  @override
  void go({required String route}) {
    GoRouter.of(_context).go(route);
  }
}
