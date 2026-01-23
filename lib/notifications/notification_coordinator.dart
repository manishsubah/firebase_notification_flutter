import 'package:firebase_messaging/firebase_messaging.dart';

import '../app/app_navigator.dart';
import 'app_link.dart';
import 'auth_gate.dart';
import 'deep_link_resolver.dart';
import 'notification_dto.dart';
import 'notification_mapper.dart';

class NotificationCoordinator {
  NotificationCoordinator({
    required this.mapper,
    required this.resolver,
    required this.authGate,
    required this.navigator,
  });

  final NotificationMapper mapper;
  final DeepLinkResolver resolver;
  final AuthGate authGate;
  final AppNavigator navigator;

  final List<AppLink> _pendingLinks = [];
  bool _routerReady = false;

  void setRouterReady() {
    _routerReady = true;
    for (final link in _pendingLinks) {
      navigator.navigate(link);
    }
    _pendingLinks.clear();
  }

  Future<void> handleRemoteMessage(RemoteMessage message) async {
    final dto = NotificationDto.fromRemoteMessage(message);
    final model = mapper.fromDto(dto);
    final link = resolver.resolve(model);
    final guardedLink = await _applyAuthGate(link);

    if (!_routerReady) {
      _pendingLinks.add(guardedLink);
      return;
    }

    await navigator.navigate(guardedLink);
  }

  Future<AppLink> _applyAuthGate(AppLink link) async {
    if (!link.requiresAuth) {
      return link;
    }

    final isAuthenticated = await authGate.isAuthenticated();
    if (isAuthenticated) {
      return link;
    }

    return const AppLink.login('auth_required');
  }
}
