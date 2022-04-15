import 'dart:convert';

import 'package:flutter/foundation.dart';

class QuestionsModel {
  final String question;

  QuestionsModel({required this.question});

  factory QuestionsModel.fromJson(Map<String, dynamic> json) {
    return QuestionsModel(
      question: json['question'] ?? '',
    );
  }
}
