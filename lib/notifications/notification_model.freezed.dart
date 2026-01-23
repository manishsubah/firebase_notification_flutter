// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String? body) home,
    required TResult Function(String? title, String? body, String? reason)
    login,
    required TResult Function(Map<String, dynamic>? raw) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? body)? home,
    TResult? Function(String? title, String? body, String? reason)? login,
    TResult? Function(Map<String, dynamic>? raw)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? body)? home,
    TResult Function(String? title, String? body, String? reason)? login,
    TResult Function(Map<String, dynamic>? raw)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeNotification value) home,
    required TResult Function(LoginNotification value) login,
    required TResult Function(UnknownNotification value) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeNotification value)? home,
    TResult? Function(LoginNotification value)? login,
    TResult? Function(UnknownNotification value)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeNotification value)? home,
    TResult Function(LoginNotification value)? login,
    TResult Function(UnknownNotification value)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
    NotificationModel value,
    $Res Function(NotificationModel) then,
  ) = _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeNotificationImplCopyWith<$Res> {
  factory _$$HomeNotificationImplCopyWith(
    _$HomeNotificationImpl value,
    $Res Function(_$HomeNotificationImpl) then,
  ) = __$$HomeNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title, String? body});
}

/// @nodoc
class __$$HomeNotificationImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$HomeNotificationImpl>
    implements _$$HomeNotificationImplCopyWith<$Res> {
  __$$HomeNotificationImplCopyWithImpl(
    _$HomeNotificationImpl _value,
    $Res Function(_$HomeNotificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed, Object? body = freezed}) {
    return _then(
      _$HomeNotificationImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$HomeNotificationImpl implements HomeNotification {
  const _$HomeNotificationImpl({this.title, this.body});

  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'NotificationModel.home(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeNotificationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNotificationImplCopyWith<_$HomeNotificationImpl> get copyWith =>
      __$$HomeNotificationImplCopyWithImpl<_$HomeNotificationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String? body) home,
    required TResult Function(String? title, String? body, String? reason)
    login,
    required TResult Function(Map<String, dynamic>? raw) unknown,
  }) {
    return home(title, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? body)? home,
    TResult? Function(String? title, String? body, String? reason)? login,
    TResult? Function(Map<String, dynamic>? raw)? unknown,
  }) {
    return home?.call(title, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? body)? home,
    TResult Function(String? title, String? body, String? reason)? login,
    TResult Function(Map<String, dynamic>? raw)? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(title, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeNotification value) home,
    required TResult Function(LoginNotification value) login,
    required TResult Function(UnknownNotification value) unknown,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeNotification value)? home,
    TResult? Function(LoginNotification value)? login,
    TResult? Function(UnknownNotification value)? unknown,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeNotification value)? home,
    TResult Function(LoginNotification value)? login,
    TResult Function(UnknownNotification value)? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomeNotification implements NotificationModel {
  const factory HomeNotification({final String? title, final String? body}) =
      _$HomeNotificationImpl;

  String? get title;
  String? get body;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeNotificationImplCopyWith<_$HomeNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginNotificationImplCopyWith<$Res> {
  factory _$$LoginNotificationImplCopyWith(
    _$LoginNotificationImpl value,
    $Res Function(_$LoginNotificationImpl) then,
  ) = __$$LoginNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title, String? body, String? reason});
}

/// @nodoc
class __$$LoginNotificationImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$LoginNotificationImpl>
    implements _$$LoginNotificationImplCopyWith<$Res> {
  __$$LoginNotificationImplCopyWithImpl(
    _$LoginNotificationImpl _value,
    $Res Function(_$LoginNotificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? reason = freezed,
  }) {
    return _then(
      _$LoginNotificationImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LoginNotificationImpl implements LoginNotification {
  const _$LoginNotificationImpl({this.title, this.body, this.reason});

  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? reason;

  @override
  String toString() {
    return 'NotificationModel.login(title: $title, body: $body, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginNotificationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body, reason);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginNotificationImplCopyWith<_$LoginNotificationImpl> get copyWith =>
      __$$LoginNotificationImplCopyWithImpl<_$LoginNotificationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String? body) home,
    required TResult Function(String? title, String? body, String? reason)
    login,
    required TResult Function(Map<String, dynamic>? raw) unknown,
  }) {
    return login(title, body, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? body)? home,
    TResult? Function(String? title, String? body, String? reason)? login,
    TResult? Function(Map<String, dynamic>? raw)? unknown,
  }) {
    return login?.call(title, body, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? body)? home,
    TResult Function(String? title, String? body, String? reason)? login,
    TResult Function(Map<String, dynamic>? raw)? unknown,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(title, body, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeNotification value) home,
    required TResult Function(LoginNotification value) login,
    required TResult Function(UnknownNotification value) unknown,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeNotification value)? home,
    TResult? Function(LoginNotification value)? login,
    TResult? Function(UnknownNotification value)? unknown,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeNotification value)? home,
    TResult Function(LoginNotification value)? login,
    TResult Function(UnknownNotification value)? unknown,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginNotification implements NotificationModel {
  const factory LoginNotification({
    final String? title,
    final String? body,
    final String? reason,
  }) = _$LoginNotificationImpl;

  String? get title;
  String? get body;
  String? get reason;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginNotificationImplCopyWith<_$LoginNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownNotificationImplCopyWith<$Res> {
  factory _$$UnknownNotificationImplCopyWith(
    _$UnknownNotificationImpl value,
    $Res Function(_$UnknownNotificationImpl) then,
  ) = __$$UnknownNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic>? raw});
}

/// @nodoc
class __$$UnknownNotificationImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$UnknownNotificationImpl>
    implements _$$UnknownNotificationImplCopyWith<$Res> {
  __$$UnknownNotificationImplCopyWithImpl(
    _$UnknownNotificationImpl _value,
    $Res Function(_$UnknownNotificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? raw = freezed}) {
    return _then(
      _$UnknownNotificationImpl(
        raw: freezed == raw
            ? _value._raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc

class _$UnknownNotificationImpl implements UnknownNotification {
  const _$UnknownNotificationImpl({final Map<String, dynamic>? raw})
    : _raw = raw;

  final Map<String, dynamic>? _raw;
  @override
  Map<String, dynamic>? get raw {
    final value = _raw;
    if (value == null) return null;
    if (_raw is EqualUnmodifiableMapView) return _raw;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'NotificationModel.unknown(raw: $raw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownNotificationImpl &&
            const DeepCollectionEquality().equals(other._raw, _raw));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_raw));

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownNotificationImplCopyWith<_$UnknownNotificationImpl> get copyWith =>
      __$$UnknownNotificationImplCopyWithImpl<_$UnknownNotificationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String? body) home,
    required TResult Function(String? title, String? body, String? reason)
    login,
    required TResult Function(Map<String, dynamic>? raw) unknown,
  }) {
    return unknown(raw);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? body)? home,
    TResult? Function(String? title, String? body, String? reason)? login,
    TResult? Function(Map<String, dynamic>? raw)? unknown,
  }) {
    return unknown?.call(raw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? body)? home,
    TResult Function(String? title, String? body, String? reason)? login,
    TResult Function(Map<String, dynamic>? raw)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(raw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeNotification value) home,
    required TResult Function(LoginNotification value) login,
    required TResult Function(UnknownNotification value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeNotification value)? home,
    TResult? Function(LoginNotification value)? login,
    TResult? Function(UnknownNotification value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeNotification value)? home,
    TResult Function(LoginNotification value)? login,
    TResult Function(UnknownNotification value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownNotification implements NotificationModel {
  const factory UnknownNotification({final Map<String, dynamic>? raw}) =
      _$UnknownNotificationImpl;

  Map<String, dynamic>? get raw;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownNotificationImplCopyWith<_$UnknownNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
