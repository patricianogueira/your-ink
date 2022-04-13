import 'package:flutter/material.dart';

class ListExperience extends StatelessWidget {
  final title;
  final icon;
  final onTap;
  const ListExperience(this.title, this.icon, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: title,
      onTap: onTap,
    );
  }
}
