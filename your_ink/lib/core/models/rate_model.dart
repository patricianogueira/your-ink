import 'dart:convert';

import 'package:flutter/foundation.dart';

class RateModel {
  final int rating;

  RateModel({required this.rating});

  factory RateModel.fromJson(Map<int, dynamic> json) {
    return RateModel(
      rating: json['rating'] ?? '',
    );
  }
}
