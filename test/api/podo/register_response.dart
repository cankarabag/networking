

import 'package:networking/networking.dart';

class RegisterResponse implements Serializable<RegisterResponse> {
  final int id;
  final String token;

  RegisterResponse.fromJsonMap(Map<String, dynamic> map)
      : id = map["id"],
        token = map["token"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['token'] = token;
    return data;
  }

  @override
  RegisterResponse fromJson(Map<String, dynamic> json) {
    return RegisterResponse.fromJsonMap(json);
  }
}
