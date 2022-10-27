import 'dart:convert';

import 'package:bodima_app/models/boarderModels/complaintModel.dart';
import 'package:bodima_app/services/globals.dart';
import 'package:http/http.dart' as http;

class ComplaintDbService {
  static Map getComplaintMap(ComplaintModel complaintModel) {
    Map data = {
      "id": complaintModel.id,
      "boarder": complaintModel.boarder,
      "boardingPlace": complaintModel.boardingPlace,
      "description": complaintModel.description,
      "date":complaintModel.date
    };

    return data;
  }

  static addComplaint(ComplaintModel complaintModel) async {
    Map complaintMap = getComplaintMap(complaintModel);
    var url = Uri.parse("$baseUrl/boarding/complaint");
    http.Response response =
        await http.post(url, headers: headers, body: json.encode(complaintMap));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> updateComplaint(ComplaintModel complaintModel) async {
    Map complaintMap = getComplaintMap(complaintModel);
    var url = Uri.parse("$baseUrl/boarding/complaint");
    http.Response response =
        await http.put(url, headers: headers, body: json.encode(complaintMap));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> deleteComplaint(ComplaintModel complaintModel) async {
    Map complaintMap = getComplaintMap(complaintModel);
    var url = Uri.parse("$baseUrl/boarding/complaint");
    http.Response response = await http.delete(url,
        headers: headers, body: json.encode(complaintMap));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<ComplaintModel>> getComplaints(int id, int boardingPlace) async {
    var url = Uri.parse("$baseUrl/boarding/boarder/complaints/$id/$boardingPlace");
    http.Response response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      List responseList = jsonDecode(response.body);
      List<ComplaintModel> complaints = [];
      for (Map map in responseList) {
        ComplaintModel complaintModel = ComplaintModel.fromJson(map);
        complaints.add(complaintModel);
      }

      return complaints;
    } else {
      throw Exception("Failed to load complaints.");
    }
  }
}
