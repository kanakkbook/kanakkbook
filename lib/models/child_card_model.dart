import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_card_model.freezed.dart';
part 'child_card_model.g.dart';

@freezed 
class ChildCardModel with _$ChildCardModel {
  const factory ChildCardModel({
     String? title,
     String? subtitle,
  }) = _ChildCardModel;
  factory ChildCardModel.fromJson(Map<String, dynamic> json) =>
      _$ChildCardModelFromJson(json);
}