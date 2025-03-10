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
class WidgetConverter implements JsonConverter<Widget?, Map<String, dynamic>?> {
  const WidgetConverter();

  @override
  Widget? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    // Handle Text widget
    if (json.containsKey('text')) {
      return Text(
        json['text'],
        style: json['style'] != null
          ? TextStyle(
              color: json['style']['color'] != null 
                ? Color(json['style']['color']) 
                : null,
              fontSize: json['style']['fontSize']?.toDouble(),
            )
          : null,
      );
    }

    // Handle Container widget
    if (json.containsKey('width') || json.containsKey('height') || json.containsKey('color')) {
      return Container(
        width: json['width']?.toDouble(),
        height: json['height']?.toDouble(),
        color: json['color'] != null 
          ? Color(json['color']) 
          : null,
      );
    }

    // Fallback
    return null;
  }

  @override
  Map<String, dynamic>? toJson(Widget? widget) {
    if (widget == null) return null;

    if (widget is Text) {
      return {
        'text': widget.data,
        'style': {
          'color': widget.style?.color?.value,
          'fontSize': widget.style?.fontSize,
        }
      };
    }

    if (widget is Container) {
      return {
        'color': widget.color?.value,
      };
    }

    return null;
  }
}