import 'notification_dto.dart';
import 'notification_model.dart';

class NotificationMapper {
  const NotificationMapper();

  NotificationModel fromDto(NotificationDto dto) {
    switch (dto.type?.toLowerCase()) {
      case 'home':
        return NotificationModel.home(
          title: dto.title,
          body: dto.body,
        );
      case 'login':
        return NotificationModel.login(
          title: dto.title,
          body: dto.body,
          reason: dto.entityId,
        );
      default:
        return NotificationModel.unknown(raw: dto.rawData);
    }
  }
}
