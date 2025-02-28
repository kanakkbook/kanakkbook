import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class IconDataConverter implements JsonConverter<IconData?, String?> {
  const IconDataConverter();

  @override
  IconData? fromJson(String? json) {
    if (json == null) return null;
    // IconData can be serialized as a string, e.g., using the 'codePoint' or 'fontFamily'.
    return IconData(int.parse(json), fontFamily: 'MaterialIcons');
  }

  @override
  String? toJson(IconData? object) {
    if (object == null) return null;
    // You can serialize the IconData to a string. Here we're using `codePoint` for simplicity.
    return object.codePoint.toString();
  }
}
