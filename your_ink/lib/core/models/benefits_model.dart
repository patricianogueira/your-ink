class BenefitsModel {
  final String name;
  final String icon;

  BenefitsModel({required this.name, required this.icon});

  factory BenefitsModel.fromJson(Map<String, dynamic> json) {
    return BenefitsModel(
      name: json['name'],
      icon: json['icon'],
    );
  }
}
