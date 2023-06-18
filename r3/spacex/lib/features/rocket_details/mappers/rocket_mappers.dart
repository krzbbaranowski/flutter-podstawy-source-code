import '../data/models/rocket_dto.dart';
import '../domain/models/rocket.dart';
import '../models/rocket_item.dart';

class RocketMapper {
  Rocket fromModel(RocketDto model) {
    return Rocket(
        id: model.id!,
        height: model.height!.meters!,
        diameter: model.diameter!.meters!,
        name: model.name!,
        description: model.description!,
        mass: model.mass!.kg!,
        stages: model.stages!,
        firstFlight: model.firstFlight!,
        imageUrls: model.flickrImages!,
        moreDetailsUrl: model.wikipedia!,
        costPerLaunch: model.costPerLaunch!,
        type: model.type!);
  }
}

class RocketItemMapper {
  RocketItem fromModel(Rocket model, bool isSelected) {
    return RocketItem(id: model.id, name: model.name, isSelected: isSelected);
  }
}
