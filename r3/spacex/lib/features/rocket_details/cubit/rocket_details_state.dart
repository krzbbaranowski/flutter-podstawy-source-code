import 'package:equatable/equatable.dart';

import '../domain/models/rocket.dart';
import '../models/rocket_item.dart';

abstract class RocketDetailsState extends Equatable {
  const RocketDetailsState();
}

class RocketsInitialState extends RocketDetailsState {
  @override
  List<Object?> get props => [];
}

class RocketsLoaded extends RocketDetailsState {
  final Rocket selectedRocket;
  final List<RocketItem> rockets;

  const RocketsLoaded(this.selectedRocket, this.rockets) : super();

  @override
  List<Object?> get props => [rockets, selectedRocket];
}
