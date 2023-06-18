class Rocket {
  final String id;
  final String name;
  final String description;
  final double height;
  final double diameter;
  final int mass;
  final int stages;
  final DateTime firstFlight;
  final List<String> imageUrls;
  final String moreDetailsUrl;
  final int costPerLaunch;
  final String type;

  Rocket(
      {required this.id,
        required this.height,
        required this.diameter,
        required this.name,
        required this.description,
        required this.mass,
        required this.stages,
        required this.firstFlight,
        required this.imageUrls,
        required this.moreDetailsUrl,
        required this.costPerLaunch,
        required this.type});
}

