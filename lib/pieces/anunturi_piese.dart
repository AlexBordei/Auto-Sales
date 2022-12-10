import 'package:auto_sales_flutter/models/anunt_piese.dart';
import 'package:auto_sales_flutter/pieces/anunt_piese_detaliat.dart';
import 'package:auto_sales_flutter/pieces/list_widget_piese.dart';
import 'package:flutter/material.dart';

class AnunturiPiese extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anunturi Piese'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: ListItemsPiese()),
        ),
      ),
    );
  }
}
