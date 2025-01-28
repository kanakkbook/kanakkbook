// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
// name will be same as your current file
// name like we have given postmodel.dart
part 'user_model.freezed.dart';
part 'user_model.g.dart';

// This is used to create a freezed model
@freezed 
class UserModel with _$UserModel {
  const factory UserModel({
    // Sample key from json to show how 
    // we recieve the data from backend
     int? id,
     String? userName,
     String? phone,
     String? email,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
