// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RocketItemCWProxy {
  RocketItem id(String id);

  RocketItem name(String name);

  RocketItem isSelected(bool isSelected);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RocketItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RocketItem(...).copyWith(id: 12, name: "My name")
  /// ````
  RocketItem call({
    String? id,
    String? name,
    bool? isSelected,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRocketItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRocketItem.copyWith.fieldName(...)`
class _$RocketItemCWProxyImpl implements _$RocketItemCWProxy {
  const _$RocketItemCWProxyImpl(this._value);

  final RocketItem _value;

  @override
  RocketItem id(String id) => this(id: id);

  @override
  RocketItem name(String name) => this(name: name);

  @override
  RocketItem isSelected(bool isSelected) => this(isSelected: isSelected);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RocketItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RocketItem(...).copyWith(id: 12, name: "My name")
  /// ````
  RocketItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
  }) {
    return RocketItem(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      isSelected:
          isSelected == const $CopyWithPlaceholder() || isSelected == null
              ? _value.isSelected
              // ignore: cast_nullable_to_non_nullable
              : isSelected as bool,
    );
  }
}

extension $RocketItemCopyWith on RocketItem {
  /// Returns a callable class that can be used as follows: `instanceOfRocketItem.copyWith(...)` or like so:`instanceOfRocketItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RocketItemCWProxy get copyWith => _$RocketItemCWProxyImpl(this);
}
