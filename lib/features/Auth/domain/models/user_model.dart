import 'package:fruitmarket/core/constants.dart';

class UserModel {
  final String? name;
  final String? address;
  final String email;
  final String? phonNumber;

  UserModel({this.name, this.address, required this.email, this.phonNumber});

  factory UserModel.fromJson(data) {
    return UserModel(
        name: data[kName],
        address: data[kAddress],
        email: data[kEmail],
        phonNumber: data[kPhoneNumber]);
  }

  toJson() {
    return {
      kName: name,
      kEmail: email,
      kPhoneNumber: phonNumber,
      kAddress: address
    };
  }
}
