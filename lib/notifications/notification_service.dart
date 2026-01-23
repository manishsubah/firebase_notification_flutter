import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'notification_coordinator.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

class NotificationService {
  NotificationService({
    FirebaseMessaging? messaging,
    required this.coordinator,
  }) : _messaging = messaging ?? FirebaseMessaging.instance;

  final FirebaseMessaging _messaging;
  final NotificationCoordinator coordinator;

  Future<void> initialize() async {
    await _messaging.requestPermission();

    FirebaseMessaging.onMessage.listen(coordinator.handleRemoteMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(coordinator.handleRemoteMessage);

    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      await coordinator.handleRemoteMessage(initialMessage);
    }
  }
}
