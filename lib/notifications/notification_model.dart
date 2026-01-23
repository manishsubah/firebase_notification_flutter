import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

@freezed
sealed class NotificationModel with _$NotificationModel {
  const factory NotificationModel.home({
    String? title,
    String? body,
  }) = HomeNotification;

  const factory NotificationModel.login({
    String? title,
    String? body,
    String? reason,
  }) = LoginNotification;

  const factory NotificationModel.unknown({
    Map<String, dynamic>? raw,
  }) = UnknownNotification;
}
