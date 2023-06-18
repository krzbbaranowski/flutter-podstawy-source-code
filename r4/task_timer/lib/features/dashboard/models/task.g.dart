// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaskCWProxy {
  Task id(int id);

  Task name(String name);

  Task sessions(int sessions);

  Task totalDuration(Duration totalDuration);

  Task isSelected(bool isSelected);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Task(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Task(...).copyWith(id: 12, name: "My name")
  /// ````
  Task call({
    int? id,
    String? name,
    int? sessions,
    Duration? totalDuration,
    bool? isSelected,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTask.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTask.copyWith.fieldName(...)`
class _$TaskCWProxyImpl implements _$TaskCWProxy {
  const _$TaskCWProxyImpl(this._value);

  final Task _value;

  @override
  Task id(int id) => this(id: id);

  @override
  Task name(String name) => this(name: name);

  @override
  Task sessions(int sessions) => this(sessions: sessions);

  @override
  Task totalDuration(Duration totalDuration) =>
      this(totalDuration: totalDuration);

  @override
  Task isSelected(bool isSelected) => this(isSelected: isSelected);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Task(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Task(...).copyWith(id: 12, name: "My name")
  /// ````
  Task call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? sessions = const $CopyWithPlaceholder(),
    Object? totalDuration = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
  }) {
    return Task(
      id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      sessions == const $CopyWithPlaceholder() || sessions == null
          ? _value.sessions
          // ignore: cast_nullable_to_non_nullable
          : sessions as int,
      totalDuration == const $CopyWithPlaceholder() || totalDuration == null
          ? _value.totalDuration
          // ignore: cast_nullable_to_non_nullable
          : totalDuration as Duration,
      isSelected == const $CopyWithPlaceholder() || isSelected == null
          ? _value.isSelected
          // ignore: cast_nullable_to_non_nullable
          : isSelected as bool,
    );
  }
}

extension $TaskCopyWith on Task {
  /// Returns a callable class that can be used as follows: `instanceOfTask.copyWith(...)` or like so:`instanceOfTask.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaskCWProxy get copyWith => _$TaskCWProxyImpl(this);
}
