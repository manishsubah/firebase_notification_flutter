import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'app/app_navigator.dart';
import 'app/app_router.dart';
import 'notifications/auth_gate.dart';
import 'notifications/deep_link_resolver.dart';
import 'notifications/notification_coordinator.dart';
import 'notifications/notification_mapper.dart';
import 'notifications/notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  final appRouter = AppRouter();
  final notificationCoordinator = NotificationCoordinator(
    mapper: const NotificationMapper(),
    resolver: const DeepLinkResolver(),
    authGate: const AuthGate(),
    navigator: AppNavigator(appRouter),
  );
  final notificationService =
      NotificationService(coordinator: notificationCoordinator);

  await notificationService.initialize();

  runApp(MyApp(appRouter: appRouter));

  WidgetsBinding.instance.addPostFrameCallback((_) {
    notificationCoordinator.setRouterReady();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Firebase Notification',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: appRouter.config(),
    );
  }
}
