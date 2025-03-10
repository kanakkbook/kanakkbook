// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanakk_book/helpers/json_converters.dart';
part 'home_card_model.freezed.dart';
part 'home_card_model.g.dart';

@freezed 
class HomeCardModel with _$HomeCardModel {
  const factory HomeCardModel({
     int? uid,
     String? name,
    @WidgetConverter() Widget? screen,
    @IconDataConverter() IconData? icon,
     String? route,
  }) = _HomeCardModel;
  factory HomeCardModel.fromJson(Map<String, dynamic> json) =>
      _$HomeCardModelFromJson(json);
}



