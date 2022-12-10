import 'package:flutter/material.dart';

import 'package:auto_sales_flutter/cars/list_widget_masini.dart';

class Anunturi extends StatefulWidget {
  @override
  State<Anunturi> createState() => _AnunturiState();
}

class _AnunturiState extends State<Anunturi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toate Anunturile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: ListItems()),
        ),
      ),
    );
  }
}
