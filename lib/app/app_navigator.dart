import '../notifications/app_link.dart';
import 'app_router.dart';

class AppNavigator {
  const AppNavigator(this.router);

  final AppRouter router;

  Future<void> navigate(AppLink link) async {
    switch (link.destination) {
      case AppDestination.home:
        await router.replaceAll([const HomeRoute()]);
      case AppDestination.login:
        await router.replaceAll([LoginRoute(reason: link.reason)]);
    }
  }
}
