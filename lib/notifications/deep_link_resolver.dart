import 'app_link.dart';
import 'notification_model.dart';

class DeepLinkResolver {
  const DeepLinkResolver();

  AppLink resolve(NotificationModel model) {
    return model.when(
      home: (title, body) => const AppLink.home(),
      login: (title, body, reason) => AppLink.login(reason),
      unknown: (raw) => const AppLink.home(),
    );
  }
}
