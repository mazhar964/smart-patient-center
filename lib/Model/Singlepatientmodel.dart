// To parse this JSON data, do
//
//     final singlepatientmodel = singlepatientmodelFromJson(jsonString);

import 'dart:convert';

Singlepatientmodel singlepatientmodelFromJson(String str) => Singlepatientmodel.fromJson(json.decode(str));

String singlepatientmodelToJson(Singlepatientmodel data) => json.encode(data.toJson());
//List<Singlepatientmodel> patientFromJson(String str) => List<Singlepatientmodel>.from(json.decode(str).map((x) => Singlepatientmodel.fromJson(x)));

//String patientToJson(List<Singlepatientmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Singlepatientmodel {
  Singlepatientmodel({
    this.uuid,
    this.firstName,
    this.lastName,
    this.middleName,
    this.gender,
    this.weight,
    this.height,
    this.residentSince,
    this.status,
    this.room,
    this.activeAlarmCount,
  });

  String uuid;
  String firstName;
  String lastName;
  String middleName;
  String gender;
  int weight;
  int height;
  String residentSince;
  Status status;
  Room room;
  int activeAlarmCount;

  factory Singlepatientmodel.fromJson(Map<String, dynamic> json) => Singlepatientmodel(
    uuid: json["uuid"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    middleName: json["middle_name"],
    gender: json["gender"],
    weight: json["weight"],
    height: json["height"],
    residentSince: json["resident_since"],
    status: Status.fromJson(json["status"]),
    room: Room.fromJson(json["room"]),
    activeAlarmCount: json["active_alarm_count"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "first_name": firstName,
    "last_name": lastName,
    "middle_name": middleName,
    "gender": gender,
    "weight": weight,
    "height": height,
    "resident_since": residentSince,
    "status": status.toJson(),
    "room": room.toJson(),
    "active_alarm_count": activeAlarmCount,
  };
}

class Room {
  Room({
    this.uuid,
    this.number,
  });

  String uuid;
  String number;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
    uuid: json["uuid"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "number": number,
  };
}

class Status {
  Status({
    this.id,
    this.text,
  });

  int id;
  String text;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    id: json["id"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "text": text,
  };
}
