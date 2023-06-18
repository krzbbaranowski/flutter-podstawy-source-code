import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'rocket_item.g.dart';

@CopyWith()
class RocketItem extends Equatable {
  final String id;
  final String name;
  final bool isSelected;

  const RocketItem(
      {required this.id, required this.name, this.isSelected = false});

  @override
  List<Object?> get props => [id, name, isSelected];
}
