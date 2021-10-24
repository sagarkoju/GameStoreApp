import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:gamestoreapp/screen/home/home.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(page: HomeScreen, initial: true),
  ],
)
class $AppRouter {}
