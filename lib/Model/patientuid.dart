// To parse this JSON data, do
//
//     final patient = patientFromJson(jsonString);

import 'dart:convert';

List<Patient> patientFromJson(String str) => List<Patient>.from(json.decode(str).map((x) => Patient.fromJson(x)));

String patientToJson(List<Patient> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Patient {
  Patient({
    this.uuid,
    this.dateCreated,
    this.dateUpdated,
    this.type,
    this.status,
    this.severity,
    this.elapsedTime,
    this.owner,
    this.room,
    this.patient,
  });

  String uuid;
  String dateCreated;
  String dateUpdated;
  Severity type;
  Severity status;
  Severity severity;
  ElapsedTime elapsedTime;
  PatientClass owner;
  Room room;
  PatientClass patient;

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    uuid: json["uuid"],
    dateCreated: json["date_created"],
    dateUpdated: json["date_updated"] == null ? null : json["date_updated"],
    type: Severity.fromJson(json["type"]),
    status: Severity.fromJson(json["status"]),
    severity: Severity.fromJson(json["severity"]),
    elapsedTime: ElapsedTime.fromJson(json["elapsed_time"]),
    owner: json["owner"] == null ? null : PatientClass.fromJson(json["owner"]),
    room: Room.fromJson(json["room"]),
    patient: PatientClass.fromJson(json["patient"]),
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "date_created": dateCreated,
    "date_updated": dateUpdated == null ? null : dateUpdated,
    "type": type.toJson(),
    "status": status.toJson(),
    "severity": severity.toJson(),
    "elapsed_time": elapsedTime.toJson(),
    "owner": owner == null ? null : owner.toJson(),
    "room": room.toJson(),
    "patient": patient.toJson(),
  };
}

class ElapsedTime {
  ElapsedTime({
    this.seconds,
    this.text,
  });

  int seconds;
  String text;

  factory ElapsedTime.fromJson(Map<String, dynamic> json) => ElapsedTime(
    seconds: json["seconds"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "seconds": seconds,
    "text": text,
  };
}

class PatientClass {
  PatientClass({
    this.uuid,
    this.firstName,
    this.lastName,
    this.middleName,
  });

  String uuid;
  String firstName;
  String lastName;
  String middleName;

  factory PatientClass.fromJson(Map<String, dynamic> json) => PatientClass(
    uuid: json["uuid"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    middleName: json["middle_name"] == null ? null : json["middle_name"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "first_name": firstName,
    "last_name": lastName,
    "middle_name": middleName == null ? null : middleName,
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

class Severity {
  Severity({
    this.internalCode,
    this.text,
  });

  String internalCode;
  String text;

  factory Severity.fromJson(Map<String, dynamic> json) => Severity(
    internalCode: json["internal_code"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "internal_code": internalCode,
    "text": text,
  };
}
