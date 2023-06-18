import 'package:dio/dio.dart';

import '../models/rocket_dto.dart';

class RocketsAPI {
  final Dio httpClient;

  RocketsAPI(this.httpClient);

  Future<List<RocketDto>> getRockets() async {
    var response = await httpClient.get<String>("/rockets");
    var toParse = response.data!;
    return rocketDtoFromJson(toParse);
  }
}
