import 'package:flutter/material.dart';

class AnunDetaliatPiese extends StatelessWidget {
  AnunDetaliatPiese(
      {super.key,
      required this.imagePiese,
      this.titlePiese,
      this.descriptionPiese});

  final Image imagePiese;
  String? titlePiese;
  String? descriptionPiese;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titlePiese ?? ''),
      ),
      body: Column(
        children: [
          imagePiese,
          Text(titlePiese ?? ''),
          Text(descriptionPiese ?? ''),
        ],
      ),
    );
  }
}
