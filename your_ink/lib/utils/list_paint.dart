import 'package:flutter/material.dart';

class ListPaintComponent extends StatefulWidget {
  final image;
  const ListPaintComponent({Key? key, this.image}) : super(key: key);

  @override
  State<ListPaintComponent> createState() => _ListPaintComponentState();
}

class _ListPaintComponentState extends State<ListPaintComponent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/suvinil.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
