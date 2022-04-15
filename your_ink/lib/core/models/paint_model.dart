import 'package:your_ink/core/models/benefits_model.dart';

class PaintModel {
  final String name;
  final String image;
  final String url;
  final BenefitsModel benefits;

  PaintModel({
    required this.name,
    required this.image,
    required this.url,
    required this.benefits,
  });
  factory PaintModel.fromJson(Map<String, dynamic> json) {
    return PaintModel(
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      url: json['buy-url'] ?? '',
      benefits: BenefitsModel.fromJson(json['benefits']),
    );
  }
}
