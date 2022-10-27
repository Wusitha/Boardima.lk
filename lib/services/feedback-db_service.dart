import 'dart:convert';

import 'package:bodima_app/models/boarderModels/complaintModel.dart';
import 'package:bodima_app/models/boarderModels/feedback_model.dart';
import 'package:bodima_app/services/globals.dart';
import 'package:http/http.dart' as http;

class FeedbackDbService {
  static Map getFeedbackMap(FeedbackModel feedbackModel) {
    Map data = {
      "id": feedbackModel.id,
      "boarder": feedbackModel.boarder,
      "boardingPlace": feedbackModel.boardingPlace,
      "rate": feedbackModel,
      "description": feedbackModel.description,
      "date": feedbackModel.date
    };

    return data;
  }

  static addFeedback(FeedbackModel feedbackModel) async {
    Map complaintMap = getFeedbackMap(feedbackModel);
    var url = Uri.parse("$baseUrl/boarding/complaint");
    http.Response response =
        await http.post(url, headers: headers, body: json.encode(complaintMap));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> updateComplaint(FeedbackModel feedbackModel) async {
    Map complaintMap = getFeedbackMap(feedbackModel);
    var url = Uri.parse("$baseUrl/boarding/complaint");
    http.Response response =
        await http.put(url, headers: headers, body: json.encode(complaintMap));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> deleteComplaint(FeedbackModel feedbackModel) async {
    Map complaintMap = getFeedbackMap(feedbackModel);
    var url = Uri.parse("$baseUrl/boarding/complaint");
    http.Response response = await http.delete(url,
        headers: headers, body: json.encode(complaintMap));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<FeedbackModel>> getFeedbacks(
      int id, int boardingPlace) async {
    var url =
        Uri.parse("$baseUrl/boarding/boarder/complaints/$id/$boardingPlace");
    http.Response response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      List responseList = jsonDecode(response.body);
      List<FeedbackModel> complaints = [];
      for (Map map in responseList) {
        FeedbackModel complaintModel = FeedbackModel.fromJson(map);
        complaints.add(complaintModel);
      }

      return complaints;
    } else {
      throw Exception("Failed to load complaints.");
    }
  }
}
