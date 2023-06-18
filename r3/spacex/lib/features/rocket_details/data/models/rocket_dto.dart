// To parse this JSON data, do
//
//     final rocketDto = rocketDtoFromJson(jsonString);

import 'dart:convert';

List<RocketDto> rocketDtoFromJson(String str) => List<RocketDto>.from(json.decode(str).map((x) => RocketDto.fromJson(x)));

String rocketDtoToJson(List<RocketDto> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RocketDto {
  final Diameter? height;
  final Diameter? diameter;
  final Mass? mass;
  final FirstStage? firstStage;
  final SecondStage? secondStage;
  final Engines? engines;
  final LandingLegs? landingLegs;
  final List<PayloadWeight>? payloadWeights;
  final List<String>? flickrImages;
  final String? name;
  final String? type;
  final bool? active;
  final int? stages;
  final int? boosters;
  final int? costPerLaunch;
  final int? successRatePct;
  final DateTime? firstFlight;
  final String? country;
  final String? company;
  final String? wikipedia;
  final String? description;
  final String? id;

  RocketDto({
    this.height,
    this.diameter,
    this.mass,
    this.firstStage,
    this.secondStage,
    this.engines,
    this.landingLegs,
    this.payloadWeights,
    this.flickrImages,
    this.name,
    this.type,
    this.active,
    this.stages,
    this.boosters,
    this.costPerLaunch,
    this.successRatePct,
    this.firstFlight,
    this.country,
    this.company,
    this.wikipedia,
    this.description,
    this.id,
  });

  factory RocketDto.fromJson(Map<String, dynamic> json) => RocketDto(
    height: json["height"] == null ? null : Diameter.fromJson(json["height"]),
    diameter: json["diameter"] == null ? null : Diameter.fromJson(json["diameter"]),
    mass: json["mass"] == null ? null : Mass.fromJson(json["mass"]),
    firstStage: json["first_stage"] == null ? null : FirstStage.fromJson(json["first_stage"]),
    secondStage: json["second_stage"] == null ? null : SecondStage.fromJson(json["second_stage"]),
    engines: json["engines"] == null ? null : Engines.fromJson(json["engines"]),
    landingLegs: json["landing_legs"] == null ? null : LandingLegs.fromJson(json["landing_legs"]),
    payloadWeights: json["payload_weights"] == null ? [] : List<PayloadWeight>.from(json["payload_weights"]!.map((x) => PayloadWeight.fromJson(x))),
    flickrImages: json["flickr_images"] == null ? [] : List<String>.from(json["flickr_images"]!.map((x) => x)),
    name: json["name"],
    type: json["type"],
    active: json["active"],
    stages: json["stages"],
    boosters: json["boosters"],
    costPerLaunch: json["cost_per_launch"],
    successRatePct: json["success_rate_pct"],
    firstFlight: json["first_flight"] == null ? null : DateTime.parse(json["first_flight"]),
    country: json["country"],
    company: json["company"],
    wikipedia: json["wikipedia"],
    description: json["description"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "height": height?.toJson(),
    "diameter": diameter?.toJson(),
    "mass": mass?.toJson(),
    "first_stage": firstStage?.toJson(),
    "second_stage": secondStage?.toJson(),
    "engines": engines?.toJson(),
    "landing_legs": landingLegs?.toJson(),
    "payload_weights": payloadWeights == null ? [] : List<dynamic>.from(payloadWeights!.map((x) => x.toJson())),
    "flickr_images": flickrImages == null ? [] : List<dynamic>.from(flickrImages!.map((x) => x)),
    "name": name,
    "type": type,
    "active": active,
    "stages": stages,
    "boosters": boosters,
    "cost_per_launch": costPerLaunch,
    "success_rate_pct": successRatePct,
    "first_flight": "${firstFlight!.year.toString().padLeft(4, '0')}-${firstFlight!.month.toString().padLeft(2, '0')}-${firstFlight!.day.toString().padLeft(2, '0')}",
    "country": country,
    "company": company,
    "wikipedia": wikipedia,
    "description": description,
    "id": id,
  };
}

class Diameter {
  final double? meters;
  final double? feet;

  Diameter({
    this.meters,
    this.feet,
  });

  factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
    meters: json["meters"]?.toDouble(),
    feet: json["feet"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "meters": meters,
    "feet": feet,
  };
}

class Engines {
  final Isp? isp;
  final Thrust? thrustSeaLevel;
  final Thrust? thrustVacuum;
  final int? number;
  final String? type;
  final String? version;
  final String? layout;
  final int? engineLossMax;
  final String? propellant1;
  final String? propellant2;
  final double? thrustToWeight;

  Engines({
    this.isp,
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.number,
    this.type,
    this.version,
    this.layout,
    this.engineLossMax,
    this.propellant1,
    this.propellant2,
    this.thrustToWeight,
  });

  factory Engines.fromJson(Map<String, dynamic> json) => Engines(
    isp: json["isp"] == null ? null : Isp.fromJson(json["isp"]),
    thrustSeaLevel: json["thrust_sea_level"] == null ? null : Thrust.fromJson(json["thrust_sea_level"]),
    thrustVacuum: json["thrust_vacuum"] == null ? null : Thrust.fromJson(json["thrust_vacuum"]),
    number: json["number"],
    type: json["type"],
    version: json["version"],
    layout: json["layout"],
    engineLossMax: json["engine_loss_max"],
    propellant1: json["propellant_1"],
    propellant2: json["propellant_2"],
    thrustToWeight: json["thrust_to_weight"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "isp": isp?.toJson(),
    "thrust_sea_level": thrustSeaLevel?.toJson(),
    "thrust_vacuum": thrustVacuum?.toJson(),
    "number": number,
    "type": type,
    "version": version,
    "layout": layout,
    "engine_loss_max": engineLossMax,
    "propellant_1": propellant1,
    "propellant_2": propellant2,
    "thrust_to_weight": thrustToWeight,
  };
}

class Isp {
  final int? seaLevel;
  final int? vacuum;

  Isp({
    this.seaLevel,
    this.vacuum,
  });

  factory Isp.fromJson(Map<String, dynamic> json) => Isp(
    seaLevel: json["sea_level"],
    vacuum: json["vacuum"],
  );

  Map<String, dynamic> toJson() => {
    "sea_level": seaLevel,
    "vacuum": vacuum,
  };
}

class Thrust {
  final int? kN;
  final int? lbf;

  Thrust({
    this.kN,
    this.lbf,
  });

  factory Thrust.fromJson(Map<String, dynamic> json) => Thrust(
    kN: json["kN"],
    lbf: json["lbf"],
  );

  Map<String, dynamic> toJson() => {
    "kN": kN,
    "lbf": lbf,
  };
}

class FirstStage {
  final Thrust? thrustSeaLevel;
  final Thrust? thrustVacuum;
  final bool? reusable;
  final int? engines;
  final double? fuelAmountTons;
  final int? burnTimeSec;

  FirstStage({
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
  });

  factory FirstStage.fromJson(Map<String, dynamic> json) => FirstStage(
    thrustSeaLevel: json["thrust_sea_level"] == null ? null : Thrust.fromJson(json["thrust_sea_level"]),
    thrustVacuum: json["thrust_vacuum"] == null ? null : Thrust.fromJson(json["thrust_vacuum"]),
    reusable: json["reusable"],
    engines: json["engines"],
    fuelAmountTons: json["fuel_amount_tons"]?.toDouble(),
    burnTimeSec: json["burn_time_sec"],
  );

  Map<String, dynamic> toJson() => {
    "thrust_sea_level": thrustSeaLevel?.toJson(),
    "thrust_vacuum": thrustVacuum?.toJson(),
    "reusable": reusable,
    "engines": engines,
    "fuel_amount_tons": fuelAmountTons,
    "burn_time_sec": burnTimeSec,
  };
}

class LandingLegs {
  final int? number;
  final String? material;

  LandingLegs({
    this.number,
    this.material,
  });

  factory LandingLegs.fromJson(Map<String, dynamic> json) => LandingLegs(
    number: json["number"],
    material: json["material"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "material": material,
  };
}

class Mass {
  final int? kg;
  final int? lb;

  Mass({
    this.kg,
    this.lb,
  });

  factory Mass.fromJson(Map<String, dynamic> json) => Mass(
    kg: json["kg"],
    lb: json["lb"],
  );

  Map<String, dynamic> toJson() => {
    "kg": kg,
    "lb": lb,
  };
}

class PayloadWeight {
  final String? id;
  final String? name;
  final int? kg;
  final int? lb;

  PayloadWeight({
    this.id,
    this.name,
    this.kg,
    this.lb,
  });

  factory PayloadWeight.fromJson(Map<String, dynamic> json) => PayloadWeight(
    id: json["id"],
    name: json["name"],
    kg: json["kg"],
    lb: json["lb"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "kg": kg,
    "lb": lb,
  };
}

class SecondStage {
  final Thrust? thrust;
  final Payloads? payloads;
  final bool? reusable;
  final int? engines;
  final double? fuelAmountTons;
  final int? burnTimeSec;

  SecondStage({
    this.thrust,
    this.payloads,
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
  });

  factory SecondStage.fromJson(Map<String, dynamic> json) => SecondStage(
    thrust: json["thrust"] == null ? null : Thrust.fromJson(json["thrust"]),
    payloads: json["payloads"] == null ? null : Payloads.fromJson(json["payloads"]),
    reusable: json["reusable"],
    engines: json["engines"],
    fuelAmountTons: json["fuel_amount_tons"]?.toDouble(),
    burnTimeSec: json["burn_time_sec"],
  );

  Map<String, dynamic> toJson() => {
    "thrust": thrust?.toJson(),
    "payloads": payloads?.toJson(),
    "reusable": reusable,
    "engines": engines,
    "fuel_amount_tons": fuelAmountTons,
    "burn_time_sec": burnTimeSec,
  };
}

class Payloads {
  final CompositeFairing? compositeFairing;
  final String? option1;

  Payloads({
    this.compositeFairing,
    this.option1,
  });

  factory Payloads.fromJson(Map<String, dynamic> json) => Payloads(
    compositeFairing: json["composite_fairing"] == null ? null : CompositeFairing.fromJson(json["composite_fairing"]),
    option1: json["option_1"],
  );

  Map<String, dynamic> toJson() => {
    "composite_fairing": compositeFairing?.toJson(),
    "option_1": option1,
  };
}

class CompositeFairing {
  final Diameter? height;
  final Diameter? diameter;

  CompositeFairing({
    this.height,
    this.diameter,
  });

  factory CompositeFairing.fromJson(Map<String, dynamic> json) => CompositeFairing(
    height: json["height"] == null ? null : Diameter.fromJson(json["height"]),
    diameter: json["diameter"] == null ? null : Diameter.fromJson(json["diameter"]),
  );

  Map<String, dynamic> toJson() => {
    "height": height?.toJson(),
    "diameter": diameter?.toJson(),
  };
}
