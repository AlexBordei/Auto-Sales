

import 'package:auto_sales_flutter/cars/anunt_masina_detaliat.dart';

import 'package:flutter/material.dart';

class CardAnunt extends StatelessWidget {
  CardAnunt({required this.titleCars, this.descriptionCars,  this.imageCars});

   Image? imageCars;
  String? titleCars;
  String? descriptionCars;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: imageCars,
            title: Text(titleCars!),
            subtitle: Text(descriptionCars ?? ''),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Anunt(
                            imageCars: imageCars,
                            titleCars: titleCars,
                            descriptionCars: descriptionCars,
                          ))));
            },
          ),
        ),
      ],
    );
  }
}
