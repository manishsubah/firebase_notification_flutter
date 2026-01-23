import 'package:firebase_messaging/firebase_messaging.dart';

import 'notification_payload.dart';

class NotificationDto {
  const NotificationDto({
    required this.rawData,
    this.type,
    this.route,
    this.entityId,
    this.title,
    this.body,
  });

  final Map<String, dynamic> rawData;
  final String? type;
  final String? route;
  final String? entityId;
  final String? title;
  final String? body;

  factory NotificationDto.fromRemoteMessage(RemoteMessage message) {
    final data = Map<String, dynamic>.from(message.data);
    return NotificationDto.fromMap(
      data,
      title: data[NotificationPayloadKeys.title] as String? ??
          message.notification?.title,
      body: data[NotificationPayloadKeys.body] as String? ??
          message.notification?.body,
    );
  }

  factory NotificationDto.fromMap(
    Map<String, dynamic> data, {
    String? title,
    String? body,
  }) {
    return NotificationDto(
      rawData: data,
      type: data[NotificationPayloadKeys.type] as String?,
      route: data[NotificationPayloadKeys.route] as String?,
      entityId: data[NotificationPayloadKeys.entityId] as String?,
      title: title ?? data[NotificationPayloadKeys.title] as String?,
      body: body ?? data[NotificationPayloadKeys.body] as String?,
    );
  }
}
