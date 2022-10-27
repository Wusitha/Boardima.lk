import 'dart:convert';

import '../models/boarderModels/boardingPlaceModel.dart';
import 'package:http/http.dart' as http;
import 'globals.dart';

class BoardingPlaceDbService {
  static Future<List<BoardingPlaceModel>> getLatestAds() async {
    var url = Uri.parse("$baseUrl/boarding/ads");
    http.Response response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      List responseList = jsonDecode(response.body);
      List<BoardingPlaceModel> ads = [];
      for (Map map in responseList) {
        BoardingPlaceModel ad = BoardingPlaceModel.fromJson(map);
        ads.add(ad);
      }

      return ads;
    } else {
      throw Exception("Failed to load Ads.");
    }
  }

  static Future<List<BoardingPlaceModel>> bestOffers() async {
    var url = Uri.parse("$baseUrl/boarding/ads");
    http.Response response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      List responseList = jsonDecode(response.body);
      List<BoardingPlaceModel> ads = [];
      for (Map map in responseList) {
        BoardingPlaceModel notification = BoardingPlaceModel.fromJson(map);
        ads.add(notification);
      }
      return ads;
    } else {
      throw Exception("Failed to load Ads.");
    }
  }

  static Future<BoardingPlaceModel> findByUser(int id) async {
    var url = Uri.parse("$baseUrl/boarding/$id");
    http.Response response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      return BoardingPlaceModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load Ads.");
    }
  }
}
