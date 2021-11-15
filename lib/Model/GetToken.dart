class GetToken {
  String token;
  String expiryDate;
  User user;

  GetToken({ this.token,  this.expiryDate,  this.user});

  GetToken.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    expiryDate = json['expiry_date'];
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['expiry_date'] = this.expiryDate;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  String uuid;
  String firstName;
  String lastName;
  Null middleName;

  User({this.uuid, this.firstName, this.lastName, this.middleName});

  User.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    middleName = json['middle_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['middle_name'] = this.middleName;
    return data;
  }
}
