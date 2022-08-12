import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

// ignore: non_constant_identifier_names
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message ")
  String? messages;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name ")
  String? name;
  @JsonKey(name: "numOfNotifications ")
  int? numOfNotifications;

  CustomerResponse(this.id, this.name, this.numOfNotifications);

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

//to json
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email ")
  String? email;
  @JsonKey(name: "link ")
  String? link;

  ContactsResponse(this.email, this.link, this.phone);

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);

//to json
  Map<String, dynamic> toJson() => _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contacts ")
  ContactsResponse? contacts;

  AuthenticationResponse(this.contacts, this.customer);

//from json
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

//to json
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}
