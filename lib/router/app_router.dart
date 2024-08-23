import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

/*
  這是一個專門處理 Router 的地方
  這裡會有一些基本的路由操作
*/
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/index',
          page: IndexRoute.page,
          initial: true,
          children: [
            AutoRoute(
              path: 'map', page: IndexMapRoute.page,
              maintainState: false, // 當路由切換時保持狀態
            ),
            AutoRoute(
              path: 'setting', page: IndexSettingRoute.page,
              maintainState: false, // 當路由切換時保持狀態
            ),
          ],
        ),
      ];
}
