import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:bodima_app/services/globals.dart';
import 'package:bodima_app/models/boarderModels/boarderModel.dart';


class BoarderDBService {

  static Map getBoarderMap(BoarderModel boarderModel){
    Map data = {
      "id": boarderModel.id,
      "nic": boarderModel.nic,
      "firstName": boarderModel.firstName,
      "lastName": boarderModel.lastName,
      "contact": boarderModel.contact,
      "email": boarderModel.email,
      "password": boarderModel.password,
      "gender": boarderModel.gender,
      "state": boarderModel.state,
      "type": boarderModel.type,
      "guardianName": boarderModel.guardianName,
      "guardianContact": boarderModel.guardianContact,
      "profileImg": boarderModel.profileImg
    };
    return data;
  }
  
  static Future<http.Response> updateBoarder(BoarderModel boarderModel) async {
    Map boarderMap = getBoarderMap(boarderModel);
    var url = Uri.parse("$baseUrl/user/update");
    http.Response response = await http.put(
      url,
      headers: headers,
      body: json.encode(boarderMap)
    );

    return response;
  }

  static Future<BoarderModel> getBoarder(int id) async {

    var url = Uri.parse("$baseUrl/user/get/$id");
    http.Response response = await http.get(
      url,
      headers: headers,
    );


   if(response.statusCode == 200){
    //  Map responseMap<String,dynamic> = jsonDecode(response.body);
    // BoarderModel boarderModel = BoarderModel.fromJson(responseMap);
    return BoarderModel.fromJson(json.decode(response.body));
   } else {
     throw Exception("Failed to load boarder.");
    }
  }
}