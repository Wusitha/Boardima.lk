import 'package:bodima_app/services/globals.dart';

class BoarderModel{
  int id;
  String nic;
  String firstName;
  String lastName;
  String contact;
  String email;
  String password;
  String gender;
  String state;
  String type;
  String guardianName;
  String guardianContact;
  String profileImg;

  BoarderModel({
    required this.id,
    required this.nic,
    required this.firstName,
    required this.lastName,
    required this.contact,
    required this.email,
    required this.password,
    required this.gender,
    required this.state,
    required this.type,
    required this.guardianName,
    required this.guardianContact,
    required this.profileImg
  });

  factory BoarderModel.fromJson(Map<String, dynamic> json) {
    //check nulls
    if(json['nic'] == null) json['nic'] = defaultString;
    if(json['firstName'] == null) json['firstName'] = defaultString;
    if(json['lastName'] == null) json['lastName'] = defaultString;
    if(json['contact'] == null) json['contact'] = defaultString;
    if(json['email'] == null) json['email'] = defaultString;
    if(json['password'] == null) json['password'] = defaultString;
    if(json['gender'] == null) json['gender'] = defaultString;
    if(json['state'] == null) json['state'] = defaultString;
    if(json['type'] == null) json['type'] = defaultString;
    if(json['guardianName'] == null) json['guardianName'] = defaultString;
    if(json['guardianContact'] == null) json['guardianContact'] = defaultString;
    if(json['profileImg'] == null) json['profileImg'] = defaultString;

    return BoarderModel(
        id: json['id'],
        nic: json['nic'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        contact: json['contact'],
        email: json['email'],
        password: json['password'],
        gender: json['gender'],
        state: json['state'],
        type: json['type'],
        guardianName: json['guardianName'],
        guardianContact: json['guardianContact'],
        profileImg: json['profileImg']

    );
  }

}